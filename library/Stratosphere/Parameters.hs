{-# LANGUAGE ExistentialQuantification #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE FunctionalDependencies #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE StandaloneDeriving #-}
{-# LANGUAGE TemplateHaskell #-}

module Stratosphere.Parameters where

import Control.Lens
import Data.Aeson
import Data.Aeson.TH
import qualified Data.HashMap.Strict as HM
import qualified Data.Text as T

import Stratosphere.Values

type ParameterMap = HM.HashMap T.Text Parameter

data Parameter =
  Parameter
  { parameterType' :: T.Text
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
  } deriving (Show)

$(deriveJSON defaultOptions
  { fieldLabelModifier = drop 9 . filter (/= '\'')
  , omitNothingFields = True }
  ''Parameter)
$(makeFields ''Parameter)

parameter
  :: T.Text  -- Type
  -> Parameter
parameter ptype =
  Parameter
  { parameterType' = ptype
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
