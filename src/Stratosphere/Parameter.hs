-- | See:
-- http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/parameters-section-structure.html
--
-- You can use the optional Parameters section to pass values into your
-- template when you create a stack. With parameters, you can create templates
-- that are customized each time you create a stack. Each parameter must
-- contain a value when you create a stack. You can specify a default value to
-- make the parameter optional. For more information about creating stacks, see
-- Working with Stacks.

module Stratosphere.Parameter where

import GHC.Exts (IsList(..))
import Stratosphere.NamedItem
import Stratosphere.Prelude
import Stratosphere.Property
import Stratosphere.Value

import qualified Data.Aeson as JSON

data Parameter =
  Parameter
  { name :: Text
  , type' :: Text
    -- ^ The data type for the parameter.
  , default' :: Maybe JSON.Value
    -- ^ A value of the appropriate type for the template to use if no value is
    -- specified when a stack is created. If you define constraints for the
    -- parameter, you must specify a value that adheres to those constraints.
  , noEcho :: Maybe Bool
    -- ^ Whether to mask the parameter value whenever anyone makes a call that
    -- describes the stack. If you set the value to true, the parameter value
    -- is masked with asterisks (*****).
  , allowedValues :: Maybe JSON.Array
    -- ^ An array containing the list of values allowed for the parameter.
  , allowedPattern :: Maybe Text
    -- ^ A regular expression that represents the patterns you want to allow
    -- for String types.
  , maxLength :: Maybe Integer
    -- ^ An integer value that determines the largest number of characters you
    -- want to allow for String types.
  , minLength :: Maybe Integer
    -- ^ An integer value that determines the smallest number of characters you
    -- want to allow for String types.
  , maxValue :: Maybe Integer
    -- ^ A numeric value that determines the largest numeric value you want to
    -- allow for Number types.
  , minValue :: Maybe Integer
    -- ^ A numeric value that determines the smallest numeric value you want to
    -- allow for Number types.
  , description :: Maybe Text
    -- ^ A string of up to 4000 characters that describes the parameter.
  , constraintDescription :: Maybe Text
    -- ^ A string that explains the constraint when the constraint is violated.
  } deriving (Show, Eq)

instance Property "Name" Parameter where
  type PropertyType "Name" Parameter = Text
  set newValue Parameter{..} = Parameter{name = newValue, ..}

instance Property "Type" Parameter where
  type PropertyType "Type" Parameter = Text
  set newValue Parameter{..} = Parameter{type' = newValue, ..}

instance Property "Default" Parameter where
  type PropertyType "Default" Parameter = JSON.Value
  set newValue Parameter{..} = Parameter{default' = pure newValue, ..}

instance Property "NoEcho" Parameter where
  type PropertyType "NoEcho" Parameter = Bool
  set newValue Parameter{..} = Parameter{noEcho = pure newValue, ..}

instance Property "AllowedValues" Parameter where
  type PropertyType "AllowedValues" Parameter = JSON.Array
  set newValue Parameter{..} = Parameter{allowedValues = pure newValue, ..}

instance Property "AllowedPattern" Parameter where
  type PropertyType "AllowedPattern" Parameter = Text
  set newValue Parameter{..} = Parameter{allowedPattern = pure newValue, ..}

instance Property "MaxLength" Parameter where
  type PropertyType "MaxLength" Parameter = Integer
  set newValue Parameter{..} = Parameter{maxLength = pure newValue, ..}

instance Property "MinLength" Parameter where
  type PropertyType "MinLength" Parameter = Integer
  set newValue Parameter{..} = Parameter{minLength = pure newValue, ..}

instance Property "MaxValue" Parameter where
  type PropertyType "MaxValue" Parameter = Integer
  set newValue Parameter{..} = Parameter{maxValue = pure newValue, ..}

instance Property "MinValue" Parameter where
  type PropertyType "MinValue" Parameter = Integer
  set newValue Parameter{..} = Parameter{minValue = pure newValue, ..}

instance Property "Description" Parameter where
  type PropertyType "Description" Parameter = Text
  set newValue Parameter{..} = Parameter{description = pure newValue, ..}

instance Property "ConstraintDescription" Parameter where
  type PropertyType "ConstraintDescription" Parameter = Text
  set newValue Parameter{..} = Parameter{constraintDescription = pure newValue, ..}

instance ToRef Parameter b where
  toRef Parameter{..} = Ref name

parameterToJSON :: Parameter -> JSON.Value
parameterToJSON Parameter{..}
  = JSON.object $ catMaybes
  [ Just ("Type" .= type')
  , maybeField "AllowedPattern"        allowedPattern
  , maybeField "AllowedValues"         allowedValues
  , maybeField "ConstraintDescription" constraintDescription
  , maybeField "Default"               default'
  , maybeField "Description"           description
  , maybeField "MaxLength"             maxLength
  , maybeField "MaxValue"              maxValue
  , maybeField "MinLength"             minLength
  , maybeField "MinValue"              minValue
  , maybeField "NoEcho"                noEcho
  ]

-- | Constructor for 'Parameter' with required arguments.
mkParameter
  :: Text -- ^ Name
  -> Text -- ^ Type
  -> Parameter
mkParameter name type' =
  Parameter
  { allowedPattern        = Nothing
  , allowedValues         = Nothing
  , constraintDescription = Nothing
  , default'              = Nothing
  , description           = Nothing
  , maxLength             = Nothing
  , maxValue              = Nothing
  , minValue              = Nothing
  , minLength             = Nothing
  , noEcho                = Nothing
  , ..
  }

-- | Wrapper around a list of 'Parameters's to we can modify the aeson
-- instances.
newtype Parameters = Parameters { parameterList :: [Parameter] }
  deriving stock (Show, Eq)
  deriving newtype (Semigroup, Monoid)

instance IsList Parameters where
  type Item Parameters = Parameter
  fromList = Parameters
  toList = (.parameterList)

instance NamedItem Parameter where
  itemName = (.name)
  nameToJSON = parameterToJSON

instance JSON.ToJSON Parameters where
  toJSON = namedItemToJSON . (.parameterList)
