{-# LANGUAGE ExistentialQuantification #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE FunctionalDependencies #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StandaloneDeriving #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE TypeFamilies #-}

module Stratosphere.Parameters where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Aeson.Types (Parser)
import qualified Data.HashMap.Strict as HM
import Data.Maybe (catMaybes)
import qualified Data.Text as T
import GHC.Exts (IsList(..))

import Stratosphere.Helpers (maybeField)
import Stratosphere.Values

data Parameter =
  Parameter
  { parameterName :: T.Text
  , parameterType' :: T.Text
  , parameterDefault' :: Maybe Value
  , parameterNoEcho :: Maybe Bool
  , parameterAllowedValues :: Maybe Array
  , parameterAllowedPattern :: Maybe T.Text
  , parameterMaxLength :: Maybe Integer'
  , parameterMinLength :: Maybe Integer'
  , parameterMaxValue :: Maybe Integer'
  , parameterMinValue :: Maybe Integer'
  , parameterDescription :: Maybe T.Text
  , parameterConstraintDescription :: Maybe T.Text
  } deriving (Show, Eq)

$(makeFields ''Parameter)

instance ToRef Parameter b where
  toRef p = Ref (parameterName p)

paramToJSON :: Parameter -> Value
paramToJSON Parameter {..} =
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

paramFromJSON :: T.Text -> Object -> Parser Parameter
paramFromJSON n o =
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


newtype Parameters = Parameters { unParameters :: [Parameter] }
                   deriving (Show, Eq)

instance IsList Parameters where
  type Item Parameters = Parameter
  fromList = Parameters
  toList = unParameters

instance ToJSON Parameters where
  toJSON (Parameters ps) =
    object $ fmap (\p -> parameterName p .= paramToJSON p) ps

instance FromJSON Parameters where
  parseJSON v = do
    objs <- parseJSON v :: Parser (HM.HashMap T.Text Value)
    ps <- sequence [withObject "parameter" (paramFromJSON n) obj |
                    (n, obj) <- HM.toList objs]
    return $ Parameters ps
