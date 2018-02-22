{-# LANGUAGE ExistentialQuantification #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE FunctionalDependencies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StandaloneDeriving #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE TypeFamilies #-}

-- | See:
-- http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/parameters-section-structure.html
--
-- You can use the optional Parameters section to pass values into your
-- template when you create a stack. With parameters, you can create templates
-- that are customized each time you create a stack. Each parameter must
-- contain a value when you create a stack. You can specify a default value to
-- make the parameter optional. For more information about creating stacks, see
-- Working with Stacks.

module Stratosphere.Parameters where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Aeson.Types (Parser)
import Data.Maybe (catMaybes)
import qualified Data.Text as T
import GHC.Exts (IsList(..))

import Stratosphere.Helpers
import Stratosphere.Values

data Parameter =
  Parameter
  { _parameterName :: T.Text
  , _parameterType' :: T.Text
    -- ^ The data type for the parameter.
  , _parameterDefault' :: Maybe Value
    -- ^ A value of the appropriate type for the template to use if no value is
    -- specified when a stack is created. If you define constraints for the
    -- parameter, you must specify a value that adheres to those constraints.
  , _parameterNoEcho :: Maybe Bool'
    -- ^ Whether to mask the parameter value whenever anyone makes a call that
    -- describes the stack. If you set the value to true, the parameter value
    -- is masked with asterisks (*****).
  , _parameterAllowedValues :: Maybe Array
    -- ^ An array containing the list of values allowed for the parameter.
  , _parameterAllowedPattern :: Maybe T.Text
    -- ^ A regular expression that represents the patterns you want to allow
    -- for String types.
  , _parameterMaxLength :: Maybe Integer
    -- ^ An integer value that determines the largest number of characters you
    -- want to allow for String types.
  , _parameterMinLength :: Maybe Integer
    -- ^ An integer value that determines the smallest number of characters you
    -- want to allow for String types.
  , _parameterMaxValue :: Maybe Integer
    -- ^ A numeric value that determines the largest numeric value you want to
    -- allow for Number types.
  , _parameterMinValue :: Maybe Integer
    -- ^ A numeric value that determines the smallest numeric value you want to
    -- allow for Number types.
  , _parameterDescription :: Maybe T.Text
    -- ^ A string of up to 4000 characters that describes the parameter.
  , _parameterConstraintDescription :: Maybe T.Text
    -- ^ A string that explains the constraint when the constraint is violated.
  } deriving (Show, Eq)

$(makeLenses ''Parameter)

instance ToRef Parameter b where
  toRef p = Ref (_parameterName p)

parameterToJSON :: Parameter -> Value
parameterToJSON Parameter {..} =
  object $ catMaybes
  [ Just ("Type" .= _parameterType')
  , maybeField "Default" _parameterDefault'
  , maybeField "NoEcho" _parameterNoEcho
  , maybeField "AllowedValues" _parameterAllowedValues
  , maybeField "AllowedPattern" _parameterAllowedPattern
  , maybeField "MaxLength" (Integer' <$> _parameterMaxLength)
  , maybeField "MinLength" (Integer' <$> _parameterMinLength)
  , maybeField "MaxValue" (Integer' <$> _parameterMaxValue)
  , maybeField "MinValue" (Integer' <$> _parameterMinValue)
  , maybeField "Description" _parameterDescription
  , maybeField "ConstraintDescription" _parameterConstraintDescription
  ]

parameterFromJSON :: T.Text -> Object -> Parser Parameter
parameterFromJSON n o =
  Parameter n
  <$> o .:  "Type"
  <*> o .:? "Default"
  <*> o .:? "NoEcho"
  <*> o .:? "AllowedValues"
  <*> o .:? "AllowedPattern"
  <*> fmap (fmap unInteger') (o .:? "MaxLength")
  <*> fmap (fmap unInteger') (o .:? "MinLength")
  <*> fmap (fmap unInteger') (o .:? "MaxValue")
  <*> fmap (fmap unInteger') (o .:? "MinValue")
  <*> o .:? "Description"
  <*> o .:? "ConstraintDescription"

-- | Constructor for 'Parameter' with required arguments.
parameter
  :: T.Text -- ^ Name
  -> T.Text -- ^ Type
  -> Parameter
parameter pname ptype =
  Parameter
  { _parameterName = pname
  , _parameterType' = ptype
  , _parameterDefault' = Nothing
  , _parameterNoEcho = Nothing
  , _parameterAllowedValues = Nothing
  , _parameterAllowedPattern = Nothing
  , _parameterMaxLength = Nothing
  , _parameterMinLength = Nothing
  , _parameterMaxValue = Nothing
  , _parameterMinValue = Nothing
  , _parameterDescription = Nothing
  , _parameterConstraintDescription = Nothing
  }

-- | Wrapper around a list of 'Parameters's to we can modify the aeson
-- instances.
newtype Parameters = Parameters { unParameters :: [Parameter] }
  deriving (Show, Eq, Monoid)

instance IsList Parameters where
  type Item Parameters = Parameter
  fromList = Parameters
  toList = unParameters

instance NamedItem Parameter where
  itemName = _parameterName
  nameToJSON = parameterToJSON
  nameParseJSON = parameterFromJSON

instance ToJSON Parameters where
  toJSON = namedItemToJSON . unParameters

instance FromJSON Parameters where
  parseJSON v = Parameters <$> namedItemFromJSON v
