{-# LANGUAGE ExistentialQuantification #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE FunctionalDependencies #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StandaloneDeriving #-}
{-# LANGUAGE TemplateHaskell #-}

-- | Parse the resource JSON files

module Gen.Resource where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Aeson.TH
import qualified Data.Text as T
import qualified Filesystem as FS
import qualified Filesystem.Path as FP

data ResourceParameter =
  ResourceParameter
  { _resourceParameterName :: T.Text
  , _resourceParameterType' :: T.Text
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
  , _resourceDependencies :: Maybe [T.Text]
  , _resourceParameters :: [ResourceParameter]
  } deriving (Show)

$(deriveJSON defaultOptions { fieldLabelModifier = drop 9 } ''Resource)
$(makeFields ''Resource)

-- | Read a resource JSON file and try to parse a Resource from it.
parseResource :: FP.FilePath -> IO (Either String Resource)
parseResource fp = fmap eitherDecodeStrict (FS.readFile fp)
