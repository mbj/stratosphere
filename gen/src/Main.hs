{-# LANGUAGE ExistentialQuantification #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE OverloadedStrings #-}

module Main where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (isJust, fromMaybe)
import qualified Data.Text as T
import qualified Data.Text.Lazy as TL
import qualified Filesystem as FS
import qualified Filesystem.Path.CurrentOS as FP
import Text.EDE

import Gen.ADT
import Gen.Aeson
import Gen.Constructor
import Gen.Docstring
import Gen.Lens
import Gen.Resource
import Gen.Types

main :: IO ()
main =
  do FS.createDirectory True (".." FP.</> "library-gen")
     FS.createDirectory True (".." FP.</> "library-gen" FP.</> "Stratosphere")

     resources <- genModule ("models" FP.</> "resources") "Stratosphere.Resources"
     resourceProperties <- genModule ("models" FP.</> "resource-properties") "Stratosphere.ResourceProperties"
     resourceAttributes <- genModule ("models" FP.</> "resource-attributes") "Stratosphere.ResourceAttributes"

     renderTopLevelModule resources resourceProperties resourceAttributes

genModule
  :: FP.FilePath
  -> T.Text
  -> IO [Resource]
genModule srcDir destModule = do
  paths <- FS.listDirectory srcDir
  parsed <- mapM parseResource paths
  parsed' <- case sequence parsed of
               (Left err) -> fail $ "Failure parsing: " ++ err
               (Right ps) -> return ps
  template <- readTemplate "templates/resource-module.ede"
  mapM_ (renderResource template destModule) parsed'
  return parsed'

readTemplate :: FP.FilePath -> IO Template
readTemplate fp =
  do tempResult <- eitherParseFile (FP.encodeString fp)
     either fail return tempResult

type Module = T.Text

renderResource :: Template -> Module -> Resource -> IO ()
renderResource temp modBase res =
  do let params = [ "name" .= (res ^. name)
                  , "docstring" .= maybe "" renderDocstring (res ^. documentation)
                  , "moduleBase" .= modBase
                  , "dependencies" .= renderDependencies (res ^. dependencies)
                  , "typeDecl" .= renderResourceTypeDecl res
                  , "jsonInstances" .= renderToFromJSON res
                  , "constructor" .= renderConstructor res
                  , "lenses" .= renderLenses res
                  , "type" .= fromPairs [ "hasType" .= isJust (res ^. type')
                                        , "value" .= fromMaybe "" (res ^. type')
                                        ]
                  ]
     modText <- case render temp (fromPairs params) of
                  (Text.EDE.Success r) -> return (TL.toStrict r)
                  (Failure f) -> fail $ "Failure rendering: " ++ show f

     let modDir = ".." FP.</> "library-gen" FP.</>
                  FP.concat (FP.fromText <$> T.splitOn "." modBase)
         fileName = FP.fromText (res ^. name) FP.<.> "hs"
         modPath = modDir FP.</> fileName
     FS.createDirectory True modDir
     putStrLn ("Writing: " ++ show modPath)
     FS.writeTextFile modPath modText


renderDependencies :: Maybe [T.Text] -> T.Text
renderDependencies Nothing = ""
renderDependencies (Just deps) = T.intercalate "\n" deps'
  where deps' = fmap (\d -> T.concat ["import Stratosphere.", d]) deps


renderTopLevelModule :: [Resource] -> [Resource] -> [Resource] -> IO ()
renderTopLevelModule resources resourceProps resourceAttributes =
  do let params = [ "resourceImports" .=
                    renderImports "Stratosphere.Resources." resources
                  , "resourcePropImports" .=
                    renderImports "Stratosphere.ResourceProperties." resourceProps
                  , "resourceAttributeImports" .=
                    renderImports "Stratosphere.ResourceAttributes." resourceAttributes
                  , "resourceADT" .= renderADT resources
                  , "toJSONFuncs" .= renderToJSONFuncs resources
                  , "fromJSONCases" .= renderFromJSONCases resources
                  ]

     template <- readTemplate "templates/Resources.hs.ede"
     modText <- case render template (fromPairs params) of
                  (Text.EDE.Success r) -> return (TL.toStrict r)
                  (Failure f) -> fail $ "Failure rendering: " ++ show f

     let modPath = ".." FP.</> "library-gen" FP.</> "Stratosphere" FP.</> "Resources.hs"
     putStrLn ("Writing: " ++ show modPath)
     FS.writeTextFile modPath modText
