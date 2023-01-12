-- | This transforms the output from ReadRawSpecFile for consumption into the
-- generator.

module Gen.Spec
  ( Spec(..)
  , specFromRaw
  , PropertyType(..)
  , Property(..)
  , SpecType(..)
  , subPropertyTypeNames
  , AtomicType(..)
  , ResourceType(..)
  )
where

import Data.List (sortOn)
import Data.Map (toList)
import Data.Maybe (catMaybes)
import GHC.Generics hiding (to)
import Gen.Prelude
import Gen.RawSpec

import qualified Data.Text as Text

data Spec = Spec
  { specPropertyTypes :: [PropertyType]
  , specVersion       :: Text
  , specResourceTypes :: [ResourceType]
  }
  deriving (Show, Eq)

specFromRaw :: RawSpec -> Spec
specFromRaw RawSpec{..}
  = Spec
  { specPropertyTypes = uncurry propertyTypeFromRaw <$> sortOn fst (toList rawSpecPropertyTypes)
  , specResourceTypes = uncurry resourceTypeFromRaw <$> sortOn fst (toList rawSpecResourceTypes)
  , specVersion       = rawSpecResourceSpecificationVersion
  }

data PropertyType = PropertyType
  { propertyTypeName          :: Text
  , propertyTypeDocumentation :: Text
  , propertyTypeProperties    :: [Property]
  }
  deriving (Show, Eq)

propertyTypeFromRaw :: Text -> RawPropertyType -> PropertyType
propertyTypeFromRaw fullName RawPropertyType{..}
  = PropertyType
  { propertyTypeName          = fullName
  , propertyTypeDocumentation = rawPropertyTypeDocumentation
  , propertyTypeProperties    = (uncurry propertyFromRaw <$> sortOn fst (toList rawPropertyTypeProperties))
  }

data Property = Property
  { propertyName          :: Text
  , propertyDocumentation :: Text
  --, propertyDuplicatesAllowed :: Maybe Bool -- Don't care about this
  , propertySpecType      :: SpecType
  , propertyRequired      :: Bool
  --, propertyUpdateType :: Maybe Text -- Don't care about this
  }
  deriving (Show, Eq)

propertyFromRaw :: Text -> RawProperty -> Property
propertyFromRaw name rawProperty@RawProperty{..}
  = Property
  { propertyName          = name
  , propertyDocumentation = rawPropertyDocumentation
  , propertySpecType      = specType
  , propertyRequired      = rawPropertyRequired
  }
  where
    specType = case tuple of
      ((Just prim), Nothing,       Nothing,     Nothing)     -> AtomicType $ textToPrimitiveType prim
      (Nothing,     (Just "List"), (Just prim), Nothing)     -> ListType $ textToPrimitiveType prim
      (Nothing,     (Just "List"), Nothing,     (Just item)) -> ListType $ SubPropertyType item
      (Nothing,     (Just "Map"),  (Just prim), Nothing)     -> MapType $ textToPrimitiveType prim
      (Nothing,     (Just "Map"),  Nothing,     (Just item)) -> MapType $ SubPropertyType item
      (Nothing,     (Just prop),   Nothing,     Nothing)     -> AtomicType $ SubPropertyType prop
      _other                                                 -> error $ "Unknown raw type: " <> show rawProperty

    tuple = (rawPropertyPrimitiveType, rawPropertyType, rawPropertyPrimitiveItemType, rawPropertyItemType)

data SpecType
  = AtomicType AtomicType
  | ListType AtomicType
  | MapType AtomicType
  deriving (Show, Eq)

data AtomicType
  = StringPrimitive
  | IntegerPrimitive
  | DoublePrimitive
  | BoolPrimitive
  | JsonPrimitive
  | SubPropertyType Text
  deriving (Show, Eq)

textToPrimitiveType :: Text -> AtomicType
textToPrimitiveType "String" = StringPrimitive
textToPrimitiveType "Long" = IntegerPrimitive
textToPrimitiveType "Integer" = IntegerPrimitive
textToPrimitiveType "Double" = DoublePrimitive
textToPrimitiveType "Boolean" = BoolPrimitive
textToPrimitiveType "Timestamp" = StringPrimitive
textToPrimitiveType "Json" = JsonPrimitive
textToPrimitiveType t = error $ "Unknown primitive type: " ++ Text.unpack t

subPropertyTypeName :: SpecType -> Maybe Text
subPropertyTypeName (AtomicType (SubPropertyType name)) = Just name
subPropertyTypeName (ListType (SubPropertyType name)) = Just name
subPropertyTypeName (MapType (SubPropertyType name)) = Just name
subPropertyTypeName _ = Nothing

subPropertyTypeNames :: [Property] -> [Text]
subPropertyTypeNames = catMaybes . fmap (subPropertyTypeName . propertySpecType)

data ResourceType = ResourceType
  { resourceTypeFullName      :: Text
  --, resourceTypeAttributes :: [ResourceAttribute] -- Don't care about this yet, could be useful
  , resourceTypeDocumentation :: Text
  , resourceTypeProperties    :: [Property]
  }
  deriving (Show, Eq, Generic)

resourceTypeFromRaw :: Text -> RawResourceType -> ResourceType
resourceTypeFromRaw fullName RawResourceType{..}
  = ResourceType
  { resourceTypeFullName      = fullName
  , resourceTypeDocumentation = rawResourceTypeDocumentation
  , resourceTypeProperties    = uncurry propertyFromRaw <$> sortOn fst (toList rawResourceTypeProperties)
  }
