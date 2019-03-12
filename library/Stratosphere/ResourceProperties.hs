{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}

module Stratosphere.ResourceProperties
  ( ResourceProperties(..)
  , ToResourceProperties(..)
  , resourcePropertiesJSON
  ) where

import Data.Aeson
import Data.Aeson.Types (Pair)
import Data.Text (Text)

data ResourceProperties
  = ResourceProperties
  { resourcePropertiesType :: Text
  , resourcePropertiesProperties :: Object
  } deriving (Show, Eq)

class ToResourceProperties a where
  toResourceProperties :: a -> ResourceProperties

resourcePropertiesJSON :: ResourceProperties -> [Pair]
resourcePropertiesJSON (ResourceProperties ty props) =
  [ "Type" .= ty
  , "Properties" .= props
  ]
