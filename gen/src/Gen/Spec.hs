-- | Generation of renderable spec from Gen.Raw

module Gen.Spec
  ( Spec(..)
  , specFromRaw
  , PropertyType(..)
  , Property(..)
  , SpecType(..)
  , subPropertyTypeNames
  , AtomicType(..)
  , Resource(..)
  )
where

import Data.List (sortOn)
import Data.Map (toList)
import Data.Maybe (catMaybes)
import GHC.Generics hiding (to)
import Gen.Prelude

import qualified Gen.Raw as Raw

data Spec = Spec
  { specPropertyTypes :: [PropertyType]
  , specVersion       :: Text
  , specResources     :: [Resource]
  }
  deriving (Show, Eq)

data PropertyType = PropertyType
  { propertyTypeName          :: Text
  , propertyTypeDocumentation :: Text
  , propertyTypeProperties    :: [Property]
  }
  deriving (Show, Eq)

data Property = Property
  { propertyName          :: Text
  , propertyDocumentation :: Text
  , propertySpecType      :: SpecType
  , propertyRequired      :: Bool
  }
  deriving (Show, Eq)

data SpecType
  = AtomicType AtomicType
  | ListType AtomicType
  | MapType AtomicType
  deriving (Show, Eq)

data AtomicType
  = PrimitiveType Raw.PrimitiveType
  | SubPropertyType Raw.SubpropertyName
  deriving (Show, Eq)

data Resource = Resource
  { resourceName          :: Raw.ResourceName
  , resourceDocumentation :: Text
  , resourceProperties    :: [Property]
  }
  deriving (Show, Eq, Generic)

specFromRaw :: Raw.Spec -> Spec
specFromRaw Raw.Spec{..}
  = Spec
  { specPropertyTypes = uncurry propertyTypeFromRaw <$> sortOn fst (toList specPropertyTypes)
  , specResources     = uncurry resourceFromRaw <$> sortOn fst (toList specResourceTypes)
  , specVersion       = specResourceSpecificationVersion
  }

resourceFromRaw :: Raw.ResourceName -> Raw.Resource -> Resource
resourceFromRaw resourceName Raw.Resource{..}
  = Resource
  { resourceName          = resourceName
  , resourceDocumentation = resourceDocumentation
  , resourceProperties    = uncurry propertyFromRaw <$> sortOn fst (toList resourceProperties)
  }

propertyTypeFromRaw :: Text -> Raw.PropertySpecification -> PropertyType
propertyTypeFromRaw fullName Raw.PropertySpecification{..}
  = PropertyType
  { propertyTypeName          = fullName
  , propertyTypeDocumentation = propertyTypeDocumentation
  , propertyTypeProperties    = (uncurry propertyFromRaw <$> sortOn fst (toList propertyTypeProperties))
  }

propertyFromRaw :: Text -> Raw.Property -> Property
propertyFromRaw name property@Raw.Property{..}
  = Property
  { propertyName          = name
  , propertyDocumentation = propertyDocumentation
  , propertySpecType      = specType
  , propertyRequired      = propertyRequired
  }
  where
    specType = case (propertyPrimitiveType, propertyType, propertyPrimitiveItemType, propertyItemType) of
      ( (Just prim), Nothing,                          Nothing,     Nothing)     -> AtomicType $ PrimitiveType prim
      ( Nothing,     (Just Raw.PropertyTypeList),      (Just prim), Nothing)     -> ListType $ PrimitiveType prim
      ( Nothing,     (Just Raw.PropertyTypeList),      Nothing,     (Just item)) -> ListType $ SubPropertyType item
      ( Nothing,     (Just Raw.PropertyTypeMap),       (Just prim), Nothing)     -> MapType $ PrimitiveType prim
      ( Nothing,     (Just Raw.PropertyTypeMap),       Nothing,     (Just item)) -> MapType $ SubPropertyType item
      ( Nothing,     (Just (Raw.PropertyTypeSub sub)), Nothing,     Nothing)     -> AtomicType $ SubPropertyType sub
      _other -> error $ "Unknown raw property type: " <> show property

subPropertyTypeNames :: [Property] -> [Text]
subPropertyTypeNames = catMaybes . fmap (subPropertyTypeName . propertySpecType)
  where
    subPropertyTypeName :: SpecType -> Maybe Text
    subPropertyTypeName = \case
      (AtomicType (SubPropertyType name)) -> Just $ Raw.toText name
      (ListType (SubPropertyType name))   -> Just $ Raw.toText name
      (MapType (SubPropertyType name))    -> Just $ Raw.toText name
      _other                              -> Nothing
