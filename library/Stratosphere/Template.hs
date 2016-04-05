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
       , template
       , Parameter (..)
       , parameter
       , Resource (..)
       , Output (..)
       , output
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

import Stratosphere.Helpers (modTemplateJSONField)
import Stratosphere.Resources
import Stratosphere.Parameters
import Stratosphere.Values

type Mapping = HM.HashMap T.Text Object

data Output =
  Output
  { outputDescription :: Maybe T.Text
  , outputValue :: Val T.Text
  } deriving (Show)

$(deriveJSON defaultOptions { fieldLabelModifier = drop 6
                            , omitNothingFields = True}
  ''Output)
$(makeFields ''Output)

output
  :: Val T.Text
  -> Output
output oval =
  Output
  { outputDescription = Nothing
  , outputValue = oval
  }

data Template =
  Template
  { templateFormatVersion :: Maybe T.Text
  , templateDescription :: Maybe T.Text
  , templateMetadata :: Maybe Object
  , templateParameters :: Maybe ParameterMap
  , templateMappings :: Maybe (HM.HashMap T.Text Mapping)
  , templateConditions :: Maybe Object
  , templateResources :: HM.HashMap T.Text Resource
  , templateOutputs :: Maybe (HM.HashMap T.Text Output)
  } deriving (Show)


$(deriveJSON defaultOptions { fieldLabelModifier = modTemplateJSONField
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
  where comp = keyOrder [ "AWSTemplateFormatVersion"
                        , "Description"
                        , "Metadata"
                        , "Parameters"
                        , "Mappings"
                        , "Conditions"
                        , "Resources"
                        , "Outputs"
                        ]
