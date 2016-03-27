{-# LANGUAGE ExistentialQuantification #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE OverloadedStrings #-}

module Main where

import Control.Lens hiding ((.=))
import Data.Aeson
import qualified Data.Text as T
import qualified Filesystem as FS
import qualified Filesystem.Path as FP
import Text.EDE

import Gen.Resource

main :: IO ()
main =
  do FS.createDirectory True (".." FP.</> "library-gen")
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
     let params = [ "moduleName" .= (res ^. name)
                  , "moduleBase" .= modBase
                  ]
     rendered <- case render temp (fromPairs params) of
       (Text.EDE.Success r) -> return r
       (Failure f) -> fail $ "Failure rendering: " ++ show f
     print rendered
