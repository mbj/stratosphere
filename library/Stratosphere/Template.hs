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
import Data.Maybe (catMaybes)
import qualified Data.Text as T
import GHC.Exts (fromList)

import Stratosphere.Helpers

data Template =
  Template
  { templateFormatVersion :: Maybe T.Text
  , templateDescription :: Maybe T.Text
  , templateMetadata :: Maybe Object
  , templateMappings :: Maybe (HM.HashMap T.Text (HM.HashMap T.Text Object))
  , templateResources :: HM.HashMap T.Text Resource
  } deriving (Show)

instance ToJSON Template where
  toJSON Template{..} = object $ catMaybes
    [ maybeField "AWSTemplateFormatVersion" templateFormatVersion
    , maybeField "Description" templateDescription
    , maybeField "Metadata" templateMetadata
    , maybeField "Mappings" templateMappings
    , maybeField "Resources" $ Just templateResources
    ]

templateDefault :: Template
templateDefault =
  Template
  { templateFormatVersion = Nothing
  , templateDescription = Nothing
  , templateMetadata = Nothing
  , templateMappings = Nothing
  , templateResources = fromList []
  }

data Resource =
  Resource
  { resourceType :: T.Text
  , resourceProperties :: Object
  } deriving (Show)

$(deriveJSON defaultOptions { fieldLabelModifier = drop 8 } ''Resource)
