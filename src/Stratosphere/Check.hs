{-# OPTIONS -Wno-redundant-constraints #-}

-- | `Stratosphere.Check` exports functions to catch errors
-- that would be too expensive or unwieldy to encode in types.
--
-- Stability: Experimental

module Stratosphere.Check (duplicateProperties) where

import Stratosphere.Prelude
import Stratosphere.Resource
import Stratosphere.Template

import qualified Data.Map.Strict as Map

newtype DuplicateProperty = DuplicateProperty Text
  deriving (Show, Eq)

duplicateProperties :: Template -> [DuplicateProperty]
duplicateProperties =
    map DuplicateProperty
  . duplicates
  . map (.name)
  . (.resourceList)
  . (\Template{..} -> resources)

duplicates :: (Foldable f, Eq a, Ord a) => f a -> [a]
duplicates =
  Map.keys . Map.filter (> one) . foldr (insertByAdding one) []
  where one :: Int
        one = 1

insertByAdding :: (Eq k, Ord k, Num v) => v -> k -> Map k v -> Map k v
insertByAdding = flip $ Map.insertWith (+)
