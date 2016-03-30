{-# LANGUAGE ExistentialQuantification #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE FunctionalDependencies #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StandaloneDeriving #-}
{-# LANGUAGE TemplateHaskell #-}

module Stratosphere.Template
       ( Template (..)
       , Parameter (..)
       , defaultParameter
       , makeParameter
       , Resource (..)
       , OutputValue (..)
       , Output (..)
       , template
       , encodeTemplate

       -- Template lenses
       , formatVersion
       , description
       , metadata
       , parameters
       , mappings
       , conditions
       , resources
       , outputs

       -- Parameter lenses
       , default'
       , noEcho
       , allowedValues
       , allowedPattern
       , maxLength
       , minLength
       , maxValue
       , minValue
       , constraintDescription
       ) where

import Control.Lens
import Data.Aeson
import Data.Aeson.Encode.Pretty
import Data.Aeson.TH
import qualified Data.ByteString.Lazy as BS
import qualified Data.HashMap.Strict as HM
import qualified Data.Text as T

import Stratosphere.Resources
import Stratosphere.Values

data Parameter =
  Parameter
  { parameterType' :: T.Text
  , parameterDefault' :: Maybe Value
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

$(deriveJSON defaultOptions
  { fieldLabelModifier = drop 9 . filter (/= '\'')
  , omitNothingFields = True }
  ''Parameter)
$(makeFields ''Parameter)

defaultParameter :: Parameter
defaultParameter =
  Parameter
  { parameterType' = "String"
  , parameterDefault' = Nothing
  , parameterNoEcho = Nothing
  , parameterAllowedValues = Nothing
  , parameterAllowedPattern = Nothing
  , parameterMaxLength = Nothing
  , parameterMinLength = Nothing
  , parameterMaxValue = Nothing
  , parameterMinValue = Nothing
  , parameterDescription = Nothing
  , parameterConstraintDescription = Nothing
  }

makeParameter :: T.Text -> Parameter
makeParameter ptype = defaultParameter & type' .~ ptype

type Mapping = HM.HashMap T.Text Object

-- This is a kludge so we don't have to have heterogeneous collections to hold
-- Outputs.
data OutputValue = forall a. (Show a, FromJSON a, ToJSON a) => OutputValue (Val a)

deriving instance Show OutputValue

instance ToJSON OutputValue where
  toJSON (OutputValue v) = toJSON v

instance FromJSON OutputValue where
  parseJSON v = mkOut <$> parseJSON v
    where mkOut = OutputValue :: Val T.Text -> OutputValue

data Output =
  Output
  { outputDescription :: Maybe T.Text
  , outputValue :: OutputValue
  } deriving (Show)

$(deriveJSON defaultOptions { fieldLabelModifier = drop 6 } ''Output)
$(makeFields ''Output)

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
$(makeFields ''Template)

template :: HM.HashMap T.Text Resource -> Template
template res =
  Template
  { templateFormatVersion = Nothing
  , templateDescription = Nothing
  , templateMetadata = Nothing
  , templateParameters = Nothing
  , templateMappings = Nothing
  , templateConditions = Nothing
  , templateResources = res
  , templateOutputs = Nothing
  }

encodeTemplate :: Template -> BS.ByteString
encodeTemplate = encodePretty' defConfig { confCompare = comp }
  where comp = keyOrder [ "FormatVersion"
                        , "Description"
                        , "Metadata"
                        , "Parameters"
                        , "Mappings"
                        , "Conditions"
                        , "Resources"
                        , "Outputs"
                        ]
