{-# LANGUAGE AllowAmbiguousTypes    #-}
{-# LANGUAGE FunctionalDependencies #-}

module Stratosphere.Property where

import Data.Kind (Type)
import GHC.TypeLits (Symbol)

class Property (propertyName :: Symbol) (record :: Type) where
  type PropertyType propertyName record :: Type

  set :: PropertyType propertyName record -> record -> record
