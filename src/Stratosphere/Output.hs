-- | See:
-- http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/outputs-section-structure.html
--
-- The optional Outputs section declares output values that you want to view
-- from the AWS CloudFormation console or that you want to return in response
-- to describe stack calls. For example, you can output the Amazon S3 bucket
-- name for a stack so that you can easily find it.

module Stratosphere.Output
  ( Output(..)
  , OutputExport(..)
  , Outputs(..)
  , mkOutput
  )
where

import GHC.Exts (IsList(..))
import Stratosphere.NamedItem
import Stratosphere.Prelude
import Stratosphere.Property
import Stratosphere.Value

import qualified Data.Aeson as JSON

data OutputExport
  = OutputExport { outputExportName :: Value Text }
  deriving stock (Show, Eq)

instance JSON.ToJSON OutputExport where
  toJSON OutputExport{..}
    = JSON.object
    [ "Name" .= outputExportName
    ]

-- | See 'mkOutput' for a convenient constructor.
data Output = Output
  { name :: Text
    -- ^ An identifier for this output. The logical ID must be alphanumeric
    -- (A-Za-z0-9) and unique within the template.
  , condition :: Maybe Text
    -- ^ Output condition controling the output creation
  , description :: Maybe Text
    -- ^ A String type up to 4K in length describing the output value.
  , value :: Value Text
    -- ^ The value of the property that is returned by the aws cloudformation
    -- describe-stacks command. The value of an output can be literals,
    -- parameter references, pseudo parameters, a mapping value, and intrinsic
    -- functions.
  , export :: Maybe OutputExport
  } deriving (Show, Eq)

instance ToRef Output b where
  toRef Output{..} = Ref name

instance Property "Name" Output where
  type PropertyType "Name" Output = Text
  set newValue Output{..} = Output{name = newValue, ..}

instance Property "Condition" Output where
  type PropertyType "Condition" Output = Text
  set newValue Output{..} = Output{condition = pure newValue, ..}

instance Property "Description" Output where
  type PropertyType "Description" Output = Text
  set newValue Output{..} = Output{description = pure newValue, ..}

instance Property "Value" Output where
  type PropertyType "Value" Output = Value Text
  set newValue Output{..} = Output{value = newValue, ..}

instance Property "Export" Output where
  type PropertyType "Export" Output = OutputExport
  set newValue Output{..} = Output{export = pure newValue, ..}

-- | Constructor for 'Output'
mkOutput
  :: Text       -- ^ Name
  -> Value Text -- ^ Value
  -> Output
mkOutput name value =
  Output
  { condition   = Nothing
  , description = Nothing
  , export      = Nothing
  , ..
  }

outputToJSON :: Output -> JSON.Value
outputToJSON Output{..}
  = JSON.object
  $ catMaybes
  [ Just ("Value" .=         value)
  , maybeField "Condition"   condition
  , maybeField "Description" description
  , maybeField "Export"      export
  ]

-- | Wrapper around a list of 'Output's to we can modify the aeson instances.
newtype Outputs = Outputs { outputs :: [Output] }
  deriving stock (Show, Eq)
  deriving newtype (Semigroup, Monoid)

instance IsList Outputs where
  type Item Outputs = Output
  fromList = Outputs
  toList   = (.outputs)

instance NamedItem Output where
  itemName   = (.name)
  nameToJSON = outputToJSON

instance JSON.ToJSON Outputs where
  toJSON = namedItemToJSON . (.outputs)
