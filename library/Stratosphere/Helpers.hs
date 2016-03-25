module Stratosphere.Helpers
       ( maybeField
       ) where

import Data.Aeson
import qualified Data.Text as T


maybeField :: ToJSON a => T.Text -> Maybe a -> Maybe (T.Text, Value)
maybeField field = fmap ((field .=) . toJSON)
