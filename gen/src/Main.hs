{-# LANGUAGE ExistentialQuantification #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE OverloadedStrings #-}

module Main where

import Control.Lens hiding ((.=))
import Data.Aeson
import qualified Data.Text as T
import qualified Data.Text.Lazy as TL
import qualified Filesystem as FS
import qualified Filesystem.Path.CurrentOS as FP
import Text.EDE

import Gen.Resource
import Gen.Types

main :: IO ()
main =
  do FS.createDirectory True (".." FP.</> "library-gen")
     FS.createDirectory True (".." FP.</> "library-gen" FP.</> "Stratosphere")
     resPropPaths <- FS.listDirectory ("models" FP.</> "resource-properties")
     template <- readTemplate
     mapM_ (renderResource template "Stratosphere.ResourceProperties") resPropPaths

readTemplate :: IO Template
readTemplate =
  do tempResult <- eitherParseFile "templates/resource-module.ede"
     either fail return tempResult

type Module = T.Text

renderResource :: Template -> Module -> FP.FilePath -> IO ()
renderResource temp modBase fp =
  do putStrLn $ "Parsing " ++ show fp
     eitherRes <- parseResource fp
     res <- case eitherRes of
              (Left err) -> fail $ "Failure parsing: " ++ err
              (Right res') -> return res' :: IO Resource
     let params = [ "name" .= (res ^. name)
                  , "moduleBase" .= modBase
                  , "dependencies" .= renderDependencies (res ^. dependencies)
                  , "typeDecl" .= renderResourceTypeDecl res
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
