module Stratosphere.ResourceImports
  ( module X
  , keyMapFromList
  , keyMapEmpty
  ) where

import Control.Lens as X (Lens', lens)
import Data.Aeson as X
import Data.Aeson.KeyMap as X
import Data.Aeson.TH as X
import Data.Map as X (Map)
import Data.Maybe as X (catMaybes)
import Data.Monoid as X (mempty)
import Data.Text as X (Text)
import Stratosphere.ResourceProperties as X
import Stratosphere.Values as X

-- Re-export key map functions so we don't need a qualified import

keyMapFromList :: [(Key, v)] -> KeyMap v
keyMapFromList = X.fromList

keyMapEmpty :: KeyMap v
keyMapEmpty = X.empty
