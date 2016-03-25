{-# LANGUAGE ExistentialQuantification #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StandaloneDeriving #-}
{-# LANGUAGE TemplateHaskell #-}

module Stratosphere.Template
       ( Template (..)
       , Resource (..)
       , templateDefault
       ) where

import Data.Aeson
import Data.Aeson.TH
import qualified Data.HashMap.Strict as HM
import qualified Data.Text as T
import GHC.Exts (fromList)


data Resource =
  Resource
  { resourceType :: T.Text
  , resourceProperties :: Object
  } deriving (Show)

$(deriveJSON defaultOptions { fieldLabelModifier = drop 8 } ''Resource)


data Template =
  Template
  { templateFormatVersion :: Maybe T.Text
  , templateDescription :: Maybe T.Text
  , templateMetadata :: Maybe Object
  , templateMappings :: Maybe (HM.HashMap T.Text (HM.HashMap T.Text Object))
  , templateResources :: HM.HashMap T.Text Resource
  } deriving (Show)

$(deriveJSON defaultOptions { fieldLabelModifier = drop 8
                            , omitNothingFields = True } ''Template)

templateDefault :: Template
templateDefault =
  Template
  { templateFormatVersion = Nothing
  , templateDescription = Nothing
  , templateMetadata = Nothing
  , templateMappings = Nothing
  , templateResources = fromList []
  }
