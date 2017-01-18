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
  { parameterName :: T.Text
  , parameterType' :: T.Text
    -- ^ The data type for the parameter.
  , parameterDefault' :: Maybe Value
    -- ^ A value of the appropriate type for the template to use if no value is
    -- specified when a stack is created. If you define constraints for the
    -- parameter, you must specify a value that adheres to those constraints.
  , parameterNoEcho :: Maybe Bool'
    -- ^ Whether to mask the parameter value whenever anyone makes a call that
    -- describes the stack. If you set the value to true, the parameter value
    -- is masked with asterisks (*****).
  , parameterAllowedValues :: Maybe Array
    -- ^ An array containing the list of values allowed for the parameter.
  , parameterAllowedPattern :: Maybe T.Text
    -- ^ A regular expression that represents the patterns you want to allow
    -- for String types.
  , parameterMaxLength :: Maybe Integer'
    -- ^ An integer value that determines the largest number of characters you
    -- want to allow for String types.
  , parameterMinLength :: Maybe Integer'
    -- ^ An integer value that determines the smallest number of characters you
    -- want to allow for String types.
  , parameterMaxValue :: Maybe Integer'
    -- ^ A numeric value that determines the largest numeric value you want to
    -- allow for Number types.
  , parameterMinValue :: Maybe Integer'
    -- ^ A numeric value that determines the smallest numeric value you want to
    -- allow for Number types.
  , parameterDescription :: Maybe T.Text
    -- ^ A string of up to 4000 characters that describes the parameter.
  , parameterConstraintDescription :: Maybe T.Text
    -- ^ A string that explains the constraint when the constraint is violated.
  } deriving (Show, Eq)

$(makeFields ''Parameter)

instance ToRef Parameter b where
  toRef p = Ref (parameterName p)

parameterToJSON :: Parameter -> Value
parameterToJSON Parameter {..} =
  object $ catMaybes
  [ Just ("Type" .= parameterType')
  , maybeField "Default" parameterDefault'
  , maybeField "NoEcho" parameterNoEcho
  , maybeField "AllowedValues" parameterAllowedValues
  , maybeField "AllowedPattern" parameterAllowedPattern
  , maybeField "MaxLength" parameterMaxLength
  , maybeField "MinLength" parameterMinLength
  , maybeField "MaxValue" parameterMaxValue
  , maybeField "MinValue" parameterMinValue
  , maybeField "Description" parameterDescription
  , maybeField "ConstraintDescription" parameterConstraintDescription
  ]

parameterFromJSON :: T.Text -> Object -> Parser Parameter
parameterFromJSON n o =
  Parameter n
  <$> o .:  "Type"
  <*> o .:? "Default"
  <*> o .:? "NoEcho"
  <*> o .:? "AllowedValues"
  <*> o .:? "AllowedPattern"
  <*> o .:? "MaxLength"
  <*> o .:? "MinLength"
  <*> o .:? "MaxValue"
  <*> o .:? "MinValue"
  <*> o .:? "Description"
  <*> o .:? "ConstraintDescription"

-- | Constructor for 'Parameter' with required arguments.
parameter
  :: T.Text -- ^ Name
  -> T.Text -- ^ Type
  -> Parameter
parameter pname ptype =
  Parameter
  { parameterName = pname
  , parameterType' = ptype
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

-- | Wrapper around a list of 'Parameters's to we can modify the aeson
-- instances.
newtype Parameters = Parameters { unParameters :: [Parameter] }
  deriving (Show, Eq, Monoid)

instance IsList Parameters where
  type Item Parameters = Parameter
  fromList = Parameters
  toList = unParameters

instance NamedItem Parameter where
  itemName = parameterName
  nameToJSON = parameterToJSON
  nameParseJSON = parameterFromJSON

instance ToJSON Parameters where
  toJSON = namedItemToJSON . unParameters

instance FromJSON Parameters where
  parseJSON v = Parameters <$> namedItemFromJSON v
