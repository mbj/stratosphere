module Stratosphere.ResourceImports
  ( module X
  , hashMapFromList
  , hashMapEmpty
  ) where

import Control.Lens as X (Lens', lens)
import Data.Aeson as X
import Data.Aeson.TH as X
import Data.Maybe as X (catMaybes)
import Data.Map.Strict as X
import Data.Monoid as X (mempty)
import Data.Text as X (Text)
import Stratosphere.ResourceProperties as X
import Stratosphere.Values as X

import Data.Hashable (Hashable)
import Data.HashMap.Strict (HashMap)
import qualified Data.HashMap.Strict as HM

-- Re-export hashmap functions so we don't need a qualified import

hashMapFromList :: (Eq k, Hashable k) => [(k, v)] -> HashMap k v
hashMapFromList = HM.fromList

hashMapEmpty :: HashMap k v
hashMapEmpty = HM.empty
