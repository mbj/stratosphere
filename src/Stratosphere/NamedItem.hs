module Stratosphere.NamedItem
  ( NamedItem (..)
  , namedItemToJSON
  )
where

import Stratosphere.Prelude

import qualified Data.Aeson     as JSON
import qualified Data.Aeson.Key as Key

-- | This class defines items with names in them. It is used to extract the
-- name from JSON fields so we can get an Object with the names as keys instead
-- of just an array.
class NamedItem a where
  itemName   :: a -> Text
  nameToJSON :: a -> JSON.Value

namedItemToJSON :: (NamedItem a) => [a] -> JSON.Value
namedItemToJSON
  = JSON.object
  . fmap (\item -> (Key.fromText (itemName item)) .= nameToJSON item)
