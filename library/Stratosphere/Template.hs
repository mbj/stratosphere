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
import Stratosphere.Outputs
import Stratosphere.Parameters
import Stratosphere.Resources

type Mapping = HM.HashMap T.Text Object

data Template =
  Template
  { templateFormatVersion :: Maybe T.Text
  , templateDescription :: Maybe T.Text
  , templateMetadata :: Maybe Object
  , templateParameters :: Maybe Parameters
  , templateMappings :: Maybe (HM.HashMap T.Text Mapping)
  , templateConditions :: Maybe Object
  , templateResources :: Resources
  , templateOutputs :: Maybe Outputs
  } deriving (Show)


$(deriveJSON defaultOptions { fieldLabelModifier = modTemplateJSONField
                            , omitNothingFields = True } ''Template)
$(makeFields ''Template)

template :: Resources -> Template
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
