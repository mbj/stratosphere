{-# LANGUAGE ExistentialQuantification #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StandaloneDeriving #-}
{-# LANGUAGE TemplateHaskell #-}

module Stratosphere.Template
       ( Template (..)
       , Parameter (..)
       , Resource (..)
       , Output (..)
       , templateDefault
       ) where

import Data.Aeson
import Data.Aeson.TH
import qualified Data.HashMap.Strict as HM
import qualified Data.Text as T
import GHC.Exts (fromList)

data Parameter =
  Parameter
  { parameterType :: T.Text
  , parameterDefault :: Maybe Value
  , parameterNoEcho :: Maybe Bool
  , parameterAllowedValues :: Maybe Array
  , parameterAllowedPattern :: Maybe T.Text
  , parameterMaxLength :: Maybe T.Text -- Integer
  , parameterMinLength :: Maybe T.Text -- Integer
  , parameterMaxValue :: Maybe T.Text -- Integer
  , parameterMinValue :: Maybe T.Text -- Integer
  , parameterDescription :: Maybe T.Text
  , parameterConstraintDescription :: Maybe T.Text
  } deriving (Show)

$(deriveJSON defaultOptions { fieldLabelModifier = drop 9
                            , omitNothingFields = True } ''Parameter)

type Mapping = HM.HashMap T.Text Object

data Resource =
  Resource
  { resourceType :: T.Text
  , resourceProperties :: Object
  } deriving (Show)

$(deriveJSON defaultOptions { fieldLabelModifier = drop 8 } ''Resource)

data Output =
  Output
  { outputDescription :: T.Text
  , outputValue :: Object
  } deriving (Show)

$(deriveJSON defaultOptions { fieldLabelModifier = drop 6 } ''Output)

data Template =
  Template
  { templateFormatVersion :: Maybe T.Text
  , templateDescription :: Maybe T.Text
  , templateMetadata :: Maybe Object
  , templateParameters :: Maybe (HM.HashMap T.Text Parameter)
  , templateMappings :: Maybe (HM.HashMap T.Text Mapping)
  , templateConditions :: Maybe Object
  , templateResources :: HM.HashMap T.Text Resource
  , templateOutputs :: Maybe (HM.HashMap T.Text Output)
  } deriving (Show)

$(deriveJSON defaultOptions { fieldLabelModifier = drop 8
                            , omitNothingFields = True } ''Template)

templateDefault :: Template
templateDefault =
  Template
  { templateFormatVersion = Nothing
  , templateDescription = Nothing
  , templateMetadata = Nothing
  , templateParameters = Nothing
  , templateMappings = Nothing
  , templateConditions = Nothing
  , templateResources = fromList []
  , templateOutputs = Nothing
  }
