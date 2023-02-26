module Stratosphere.Resource
  ( DeletionPolicy(..)
  , Resource(..)
  , ResourceProperties(..)
  , Resources(..)
  , resource
  , resourceToJSON
  )
where

import GHC.Exts (IsList(..))
import Prelude
import Stratosphere.NamedItem
import Stratosphere.Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value

import qualified Data.Aeson                                     as JSON
import qualified Stratosphere.ResourceAttributes.CreationPolicy as ResourceAttributes
import qualified Stratosphere.ResourceAttributes.UpdatePolicy   as ResourceAttributes

data DeletionPolicy
  = Delete
  | Retain
  | Snapshot
  deriving (Show, Eq, Generic)

instance JSON.ToJSON DeletionPolicy where
  toJSON = \case
    Delete   -> "Delete"
    Retain   -> "Retain"
    Snapshot -> "Snapshot"

data Resource = Resource
  { condition      :: Maybe Text
  , creationPolicy :: Maybe ResourceAttributes.CreationPolicy
  , deletionPolicy :: Maybe DeletionPolicy
  , dependsOn      :: Maybe [Text]
  , metadata       :: Maybe JSON.Object
  , name           :: Text
  , properties     :: ResourceProperties
  , updatePolicy   :: Maybe ResourceAttributes.UpdatePolicy
  }
  deriving (Show, Eq)

instance Property "Condition" Resource where
  type PropertyType "Condition" Resource = Text
  set newValue Resource{..} = Resource{condition = pure newValue, ..}

instance Property "CreationPolicy" Resource where
  type PropertyType "CreationPolicy" Resource = ResourceAttributes.CreationPolicy
  set newValue Resource{..} = Resource{creationPolicy = pure newValue, ..}

instance Property "DeletionPolicy" Resource where
  type PropertyType "DeletionPolicy" Resource = DeletionPolicy
  set newValue Resource{..} = Resource{deletionPolicy = pure newValue, ..}

instance Property "DependsOn" Resource where
  type PropertyType "DependsOn" Resource = [Text]
  set newValue Resource{..} = Resource{dependsOn = pure newValue, ..}

instance Property "Metadata" Resource where
  type PropertyType "Metadata" Resource = JSON.Object
  set newValue Resource{..} = Resource{metadata = pure newValue, ..}

instance Property "Name" Resource where
  type PropertyType "Name" Resource = Text
  set newValue Resource{..} = Resource{name = newValue, ..}

instance Property "Properties" Resource where
  type PropertyType "Properties" Resource = ResourceProperties
  set newValue Resource{..} = Resource{properties = newValue, ..}

instance Property "UpdatePolicy" Resource where
  type PropertyType "UpdatePolicy" Resource = ResourceAttributes.UpdatePolicy
  set newValue Resource{..} = Resource{updatePolicy = pure newValue, ..}

instance ToRef Resource b where
  toRef = Ref . (.name)

-- | Convenient constructor for 'Resource' with required arguments.
resource
  :: ToResourceProperties a
  => Text -- ^ Logical name
  -> a
  -> Resource
resource name properties =
  Resource
  { condition      = Nothing
  , creationPolicy = Nothing
  , deletionPolicy = Nothing
  , dependsOn      = Nothing
  , metadata       = Nothing
  , properties     = toResourceProperties properties
  , updatePolicy   = Nothing
  , ..
  }

resourceToJSON :: Resource -> JSON.Value
resourceToJSON Resource{..}
  = JSON.object
  $ resourcePropertiesJSON properties <> catMaybes
  [ maybeField "Condition"      condition
  , maybeField "CreationPolicy" creationPolicy
  , maybeField "DeletionPolicy" deletionPolicy
  , maybeField "DependsOn"      dependsOn
  , maybeField "Metadata"       metadata
  , maybeField "UpdatePolicy"   updatePolicy
  ]

-- | Wrapper around a list of 'Resources's to we can modify the aeson instances.
newtype Resources = Resources { resourceList :: [Resource] }
  deriving stock (Show, Eq)
  deriving newtype (Semigroup, Monoid)


instance IsList Resources where
  type Item Resources = Resource
  fromList            = Resources
  toList              = (.resourceList)

instance NamedItem Resource where
  itemName   = (.name)
  nameToJSON = resourceToJSON

instance JSON.ToJSON Resources where
  toJSON = namedItemToJSON . (.resourceList)
