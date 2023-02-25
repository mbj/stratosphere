-- | See:
-- http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html

module Stratosphere.Template
  ( Template(..)
  , Mapping
  , encodeTemplate
  , mkTemplate
  )
where

import Data.Aeson
import Data.Aeson.Encode.Pretty
import Prelude
import Stratosphere.Output
import Stratosphere.Parameter
import Stratosphere.Prelude
import Stratosphere.Property
import Stratosphere.Resource

import qualified Data.ByteString.Lazy as BS
import qualified Data.Aeson           as JSON
import qualified Data.Char            as Char

type Mapping = Map Text Object

data Template =
  Template
  { conditions :: Maybe Object
    -- ^ Defines conditions that control whether certain resources are created
    -- or whether certain resource properties are assigned a value during stack
    -- creation or update. For example, you could conditionally create a
    -- resource that depends on whether the stack is for a production or test
    -- environment.
  , description :: Maybe Text
    -- ^ A text string that describes the template. This section must always
    -- follow the template format version section.
  , formatVersion :: Maybe Text
    -- ^ Specifies the AWS CloudFormation template version that the template
    -- conforms to. The template format version is not the same as the API or
    -- WSDL version. The template format version can change independently of
    -- the API and WSDL versions.
  , mappings :: Maybe (Map Text Mapping)
    -- ^ A mapping of keys and associated values that you can use to specify
    -- conditional parameter values, similar to a lookup table. You can match a
    -- key to a corresponding value by using the Fn::FindInMap intrinsic
    -- function in the Resources and Outputs section.
  , metadata :: Maybe Object
    -- ^ JSON objects that provide additional information about the template.
  , outputs :: Maybe Outputs
    -- ^ Describes the values that are returned whenever you view your stack's
    -- properties. For example, you can declare an output for an Amazon S3
    -- bucket name and then call the aws cloudformation describe-stacks AWS CLI
    -- command to view the name.
  , parameters :: Maybe Parameters
    -- ^ Specifies values that you can pass in to your template at runtime
    -- (when you create or update a stack). You can refer to parameters in the
    -- Resources and Outputs sections of the template.
  , resources :: Resources
    -- ^ Specifies the stack resources and their properties, such as an Amazon
    -- Elastic Compute Cloud instance or an Amazon Simple Storage Service
    -- bucket. You can refer to resources in the Resources and Outputs sections
    -- of the template.
  }
  deriving (Show, Eq, Generic)

instance Property "Conditions" Template where
  type PropertyType "Conditions" Template = Object
  set newValue Template{..} = Template{conditions = pure newValue, ..}

instance Property "Description" Template where
  type PropertyType "Description" Template = Text
  set newValue Template{..} = Template{description = pure newValue, ..}

instance Property "FormatVersion" Template where
  type PropertyType "FormatVersion" Template = Text
  set newValue Template{..} = Template{formatVersion = pure newValue, ..}

instance Property "Mappings" Template where
  type PropertyType "Mappings" Template = Map Text Mapping
  set newValue Template{..} = Template{mappings = pure newValue, ..}

instance Property "Metadata" Template where
  type PropertyType "Metadata" Template = JSON.Object
  set newValue Template{..} = Template{metadata = pure newValue, ..}

instance Property "Outputs" Template where
  type PropertyType "Outputs" Template = Outputs
  set newValue Template{..} = Template{outputs = pure newValue, ..}

instance Property "Parameters" Template where
  type PropertyType "Parameters" Template = Parameters
  set newValue Template{..} = Template{parameters = pure newValue, ..}

instance Property "Resources" Template where
  type PropertyType "Resources" Template = Resources
  set newValue Template{..} = Template{resources = newValue, ..}

instance JSON.ToJSON Template where
  toJSON
    = JSON.genericToJSON
    $ JSON.defaultOptions
    { JSON.fieldLabelModifier = upperHead
    , JSON.omitNothingFields  = True
    }
    where
      upperHead :: String -> String
      upperHead = \case
        (headc:tails) -> Char.toUpper headc : tails
        other         -> other

-- | Convenient constructor for 'Template' with required arguments.
mkTemplate :: Resources -> Template
mkTemplate resources
  = Template
  { formatVersion = Nothing
  , description   = Nothing
  , metadata      = Nothing
  , parameters    = Nothing
  , mappings      = Nothing
  , conditions    = Nothing
  , outputs       = Nothing
  , ..
  }

-- | Pretty print a template using aeson-pretty.
encodeTemplate :: Template -> BS.ByteString
encodeTemplate = encodePretty' defConfig { confIndent = Spaces 2, confCompare = comp }
  where
    comp
      = keyOrder
      [ "AWSTemplateFormatVersion"
      , "Description"
      , "Metadata"
      , "Parameters"
      , "Mappings"
      , "Conditions"
      , "Resources"
      , "Outputs"
      ]
