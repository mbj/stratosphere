{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE FlexibleInstances          #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE MultiParamTypeClasses      #-}
{-# LANGUAGE OverloadedStrings          #-}
{-# LANGUAGE TemplateHaskell            #-}
{-# LANGUAGE TypeFamilies               #-}

module Stratosphere.Resource
  ( DeletionPolicy(..)
  , Resource(..)
  , ResourceProperties(..)
  , Resources(..)
  , resource
  , resourceCondition
  , resourceCreationPolicy
  , resourceDeletionPolicy
  , resourceDependsOn
  , resourceMetadata
  , resourceName
  , resourceProperties
  , resourceToJSON
  , resourceUpdatePolicy
  )
where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import GHC.Exts (IsList(..))
import GHC.Generics (Generic)
import Stratosphere.Helpers
import Stratosphere.ResourceAttributes.CreationPolicy as X
import Stratosphere.ResourceAttributes.UpdatePolicy   as X
import Stratosphere.ResourceProperties
import Stratosphere.Values

import qualified Data.Text as T

data DeletionPolicy
  = Delete
  | Retain
  | Snapshot
  deriving (Show, Eq, Generic)

instance ToJSON DeletionPolicy where

data Resource =
  Resource
  { _resourceName :: T.Text
  , _resourceProperties :: ResourceProperties
  , _resourceDeletionPolicy :: Maybe DeletionPolicy
  , _resourceCreationPolicy :: Maybe CreationPolicy
  , _resourceUpdatePolicy :: Maybe UpdatePolicy
  , _resourceDependsOn :: Maybe [T.Text]
  , _resourceMetadata :: Maybe Object
  , _resourceCondition :: Maybe T.Text
  } deriving (Show, Eq)

instance ToRef Resource b where
  toRef r = Ref (_resourceName r)

-- | Convenient constructor for 'Resource' with required arguments.
resource
  :: (ToResourceProperties a)
  => T.Text -- ^ Logical name
  -> a
  -> Resource
resource rn rp =
  Resource
  { _resourceName = rn
  , _resourceProperties = toResourceProperties rp
  , _resourceDeletionPolicy = Nothing
  , _resourceCreationPolicy = Nothing
  , _resourceUpdatePolicy = Nothing
  , _resourceDependsOn = Nothing
  , _resourceMetadata = Nothing
  , _resourceCondition = Nothing
  }

$(makeLenses ''Resource)

resourceToJSON :: Resource -> Value
resourceToJSON (Resource _ props dp cp up deps meta cond) =
  object $
    resourcePropertiesJSON props ++
    catMaybes
    [ maybeField "DeletionPolicy" dp
    , maybeField "CreationPolicy" cp
    , maybeField "UpdatePolicy" up
    , maybeField "DependsOn" deps
    , maybeField "Metadata" meta
    , maybeField "Condition" cond
    ]

-- | Wrapper around a list of 'Resources's to we can modify the aeson
-- instances.
newtype Resources = Resources { unResources :: [Resource] }
  deriving (Show, Eq, Semigroup, Monoid)

instance IsList Resources where
  type Item Resources = Resource
  fromList = Resources
  toList = unResources

instance NamedItem Resource where
  itemName = _resourceName
  nameToJSON = resourceToJSON

instance ToJSON Resources where
  toJSON = namedItemToJSON . unResources
