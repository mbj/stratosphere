module Stratosphere.Prelude (module Exports, maybeField) where

import Data.Aeson      as Exports ((.=))
import Data.Kind       as Exports (Type)
import Data.Map.Strict as Exports (Map)
import Data.Maybe      as Exports (catMaybes)
import Data.Text       as Exports (Text)
import GHC.Exts        as Exports (fromList)
import GHC.Generics    as Exports (Generic)
import Prelude         as Exports

import qualified Data.Aeson as JSON

-- | Might create an aeson pair from a Maybe value.
maybeField
  :: JSON.ToJSON a
  => JSON.Key
  -> Maybe a
  -> Maybe (JSON.Key, JSON.Value)
maybeField field = fmap ((field .=) . JSON.toJSON)
