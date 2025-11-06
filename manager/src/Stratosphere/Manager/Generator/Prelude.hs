module Stratosphere.Manager.Generator.Prelude
  ( module Exports
  , ToText(..)
  )
where

import Data.Foldable   as Exports (traverse_)
import Data.Map.Strict as Exports (Map)
import Data.Text       as Exports (Text)
import GHC.Records     as Exports (getField)
import GHC.Stack       as Exports (HasCallStack)
import Prelude         as Exports hiding (map)

class ToText a where
  toText :: a -> Text
