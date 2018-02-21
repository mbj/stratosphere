{-# LANGUAGE ExistentialQuantification #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE FunctionalDependencies #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StandaloneDeriving #-}
{-# LANGUAGE TemplateHaskell #-}

-- | See:
-- http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html

module Stratosphere.Template
  ( Template (..)
  , template
  , encodeTemplate
  , Mapping

    -- Template lenses
  , templateFormatVersion
  , templateDescription
  , templateMetadata
  , templateParameters
  , templateMappings
  , templateConditions
  , templateResources
  , templateOutputs
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
  { _templateFormatVersion :: Maybe T.Text
    -- ^ Specifies the AWS CloudFormation template version that the template
    -- conforms to. The template format version is not the same as the API or
    -- WSDL version. The template format version can change independently of
    -- the API and WSDL versions.
  , _templateDescription :: Maybe T.Text
    -- ^ A text string that describes the template. This section must always
    -- follow the template format version section.
  , _templateMetadata :: Maybe Object
    -- ^ JSON objects that provide additional information about the template.
  , _templateParameters :: Maybe Parameters
    -- ^ Specifies values that you can pass in to your template at runtime
    -- (when you create or update a stack). You can refer to parameters in the
    -- Resources and Outputs sections of the template.
  , _templateMappings :: Maybe (HM.HashMap T.Text Mapping)
    -- ^ A mapping of keys and associated values that you can use to specify
    -- conditional parameter values, similar to a lookup table. You can match a
    -- key to a corresponding value by using the Fn::FindInMap intrinsic
    -- function in the Resources and Outputs section.
  , _templateConditions :: Maybe Object
    -- ^ Defines conditions that control whether certain resources are created
    -- or whether certain resource properties are assigned a value during stack
    -- creation or update. For example, you could conditionally create a
    -- resource that depends on whether the stack is for a production or test
    -- environment.
  , _templateResources :: Resources
    -- ^ Specifies the stack resources and their properties, such as an Amazon
    -- Elastic Compute Cloud instance or an Amazon Simple Storage Service
    -- bucket. You can refer to resources in the Resources and Outputs sections
    -- of the template.
  , _templateOutputs :: Maybe Outputs
    -- ^ Describes the values that are returned whenever you view your stack's
    -- properties. For example, you can declare an output for an Amazon S3
    -- bucket name and then call the aws cloudformation describe-stacks AWS CLI
    -- command to view the name.
  } deriving (Show, Eq)


$(deriveJSON defaultOptions { fieldLabelModifier = modTemplateJSONField
                            , omitNothingFields = True } ''Template)
$(makeLenses ''Template)

-- | Convenient constructor for 'Template' with required arguments.
template :: Resources -> Template
template res =
  Template
  { _templateFormatVersion = Nothing
  , _templateDescription = Nothing
  , _templateMetadata = Nothing
  , _templateParameters = Nothing
  , _templateMappings = Nothing
  , _templateConditions = Nothing
  , _templateResources = res
  , _templateOutputs = Nothing
  }

-- | Pretty print a template using aeson-pretty.
encodeTemplate :: Template -> BS.ByteString
encodeTemplate = encodePretty' defConfig { confIndent = Spaces 2, confCompare = comp }
  where comp = keyOrder [ "AWSTemplateFormatVersion"
                        , "Description"
                        , "Metadata"
                        , "Parameters"
                        , "Mappings"
                        , "Conditions"
                        , "Resources"
                        , "Outputs"
                        ]
