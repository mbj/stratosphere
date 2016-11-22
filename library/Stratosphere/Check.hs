-- | `Stratosphere.Check` exports functions to catch errors
-- that would be too expensive or unwieldy to encode in types.
--
-- Stability: Experimental

module Stratosphere.Check
     ( duplicateProperties
     ) where

import qualified Data.HashMap.Strict as HM
import qualified Data.Text as T

import Stratosphere.Resources (resourceResName, unResources)
import Stratosphere.Template (Template, templateResources)

data DuplicateProperty = DuplicateProperty T.Text deriving Show

duplicateProperties :: Template -> [DuplicateProperty]
duplicateProperties =
    map DuplicateProperty
  . HM.keys
  . HM.filter (> 1)
  . foldr (\k -> HM.insertWith (+) k (1 :: Integer)) HM.empty
  . map resourceResName
  . unResources
  . templateResources
