module Stratosphere.ResourceProperties
  ( ResourceProperties(..)
  , ToResourceProperties(..)
  , resourcePropertiesJSON
  )
where

import Stratosphere.Prelude

import qualified Data.Aeson       as JSON
import qualified Data.Aeson.Types as JSON

data ResourceProperties
  = ResourceProperties
  { awsType      :: Text
  , properties   :: JSON.Object
  , supportsTags :: Bool
  }
  deriving (Show, Eq)

class ToResourceProperties a where
  toResourceProperties :: a -> ResourceProperties

resourcePropertiesJSON :: ResourceProperties -> [JSON.Pair]
resourcePropertiesJSON ResourceProperties{..} =
  [ "Type"       .= awsType
  , "Properties" .= properties
  ]
