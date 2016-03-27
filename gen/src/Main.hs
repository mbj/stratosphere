{-# LANGUAGE ExistentialQuantification #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE FunctionalDependencies #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StandaloneDeriving #-}
{-# LANGUAGE TemplateHaskell #-}

module Main where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Aeson.TH
import qualified Data.Text as T
import qualified Filesystem as FS
import qualified Filesystem.Path as FP
import Text.EDE

data ResourceType
  = String
  | Boolean
  deriving (Show)

$(deriveJSON defaultOptions ''ResourceType)

data ResourceParameter =
  ResourceParameter
  { _resourceParameterName :: T.Text
  , _resourceParameterType' :: ResourceType
  , _resourceParameterDocumentation :: T.Text
  , _resourceParameterRequired :: Bool
  } deriving (Show)

$(deriveJSON
  defaultOptions { fieldLabelModifier = drop 18 . filter (/= '\'')}
  ''ResourceParameter)
$(makeFields ''ResourceParameter)

data Resource =
  Resource
  { _resourceName :: T.Text
  , _resourceParameters :: [ResourceParameter]
  } deriving (Show)

$(deriveJSON defaultOptions { fieldLabelModifier = drop 9 } ''Resource)
$(makeFields ''Resource)


parseResource :: FP.FilePath -> IO Resource
parseResource fp =
  do jsonBS <- FS.readFile fp
     either fail return $ eitherDecodeStrict jsonBS


type Module = T.Text
renderResource :: Template -> Module -> FP.FilePath -> IO ()
renderResource temp modBase fp =
  do putStrLn $ "Parsing " ++ show fp
     jsonBS <- FS.readFile fp
     res <- case eitherDecodeStrict jsonBS of
              (Left err) -> fail $ "Failure parsing: " ++ err
              (Right res') -> return res' :: IO Resource
     let params = [ "moduleName" .= (res ^. name)
                  , "moduleBase" .= modBase
                  ]
     rendered <- case render temp (fromPairs params) of
       (Text.EDE.Success r) -> return r
       (Failure f) -> fail $ "Failure rendering: " ++ show f
     print rendered


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
