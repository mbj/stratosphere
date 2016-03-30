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
import Gen.Lens
import Gen.Resource
import Gen.Types

main :: IO ()
main =
  do FS.createDirectory True (".." FP.</> "library-gen")
     FS.createDirectory True (".." FP.</> "library-gen" FP.</> "Stratosphere")
     resPropPaths <- FS.listDirectory ("models" FP.</> "resource-properties")
     resProps <- mapM parseResource resPropPaths
     resProps' <- case sequence resProps of
                    (Left err) -> fail $ "Failure parsing: " ++ err
                    (Right rps) -> return rps
     resPaths <- FS.listDirectory ("models" FP.</> "resources")
     resources <- mapM parseResource resPaths
     resources' <- case sequence resources of
                     (Left err) -> fail $ "Failure parsing: " ++ err
                     (Right ps) -> return ps
     template <- readTemplate "templates/resource-module.ede"
     mapM_ (renderResource template "Stratosphere.ResourceProperties") resProps'
     mapM_ (renderResource template "Stratosphere.Resources") resources'

     template' <- readTemplate "templates/Resources.hs.ede"
     renderTopLevelModule template' resources'


readTemplate :: FP.FilePath -> IO Template
readTemplate fp =
  do tempResult <- eitherParseFile (FP.encodeString fp)
     either fail return tempResult

type Module = T.Text

renderResource :: Template -> Module -> Resource -> IO ()
renderResource temp modBase res =
  do let params = [ "name" .= (res ^. name)
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


renderTopLevelModule :: Template -> [Resource] -> IO ()
renderTopLevelModule temp resources =
  do let params = [ "resourceImports" .= renderImports resources
                  , "resourceADT" .= renderADT resources
                  , "toJSONFuncs" .= renderToJSONFuncs resources
                  , "fromJSONCases" .= renderFromJSONCases resources
                  ]

     modText <- case render temp (fromPairs params) of
                  (Text.EDE.Success r) -> return (TL.toStrict r)
                  (Failure f) -> fail $ "Failure rendering: " ++ show f

     let modPath = ".." FP.</> "library-gen" FP.</> "Stratosphere" FP.</> "Resources.hs"
     putStrLn ("Writing: " ++ show modPath)
     FS.writeTextFile modPath modText
