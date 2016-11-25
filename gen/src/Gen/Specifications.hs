-- | This transforms the output from ReadRawSpecFile for consumption into the
-- generator.

module Gen.Specifications
  ( CloudFormationSpec (..)
  , specFromRaw
  , PropertyType (..)
  , Property (..)
  , SpecType (..)
  , nonPrimitivePropertyDependencies
  , AtomicType (..)
  , ResourceType (..)
  ) where

import Data.List (sortOn)
import Data.Maybe (catMaybes)
import Data.Map (toList)
import Data.Text
import GHC.Generics

import Gen.ReadRawSpecFile

data CloudFormationSpec
  = CloudFormationSpec
  { cloudFormationSpecPropertyTypes :: [PropertyType]
  , clousFormationSpecResourceSpecificationVersion :: Text
  , cloudFormationSpecResourceTypes :: [ResourceType]
  }
  deriving (Show, Eq)

specFromRaw :: RawCloudFormationSpec -> CloudFormationSpec
specFromRaw (RawCloudFormationSpec rawProps version rawResources) = CloudFormationSpec props version resources
  where
    props = uncurry propertyTypeFromRaw <$> sortOn fst (toList rawProps)
    resources = uncurry resourceTypeFromRaw <$> sortOn fst (toList rawResources)

data PropertyType
  = PropertyType
  { propertyTypeName :: Text
  , propertyTypeDocumentation :: Text
  , propertyTypeProperties :: [Property]
  }
  deriving (Show, Eq)

propertyTypeFromRaw :: Text -> RawPropertyType -> PropertyType
propertyTypeFromRaw fullName (RawPropertyType doc props) =
  PropertyType fullName doc (uncurry propertyFromRaw <$> sortOn fst (toList props))

data Property
  = Property
  { propertyName :: Text
  , propertyDocumentation :: Text
  --, propertyDuplicatesAllowed :: Maybe Bool -- Don't care about this
  , propertySpecType :: SpecType
  , propertyRequired :: Bool
  --, propertyUpdateType :: Maybe Text -- Don't care about this
  }
  deriving (Show, Eq)

propertyFromRaw :: Text -> RawProperty -> Property
propertyFromRaw name (RawProperty doc _ itemType primItemType primType required type' _) =
  Property name doc (rawToSpecType primType type' primItemType itemType) required

data SpecType
  = AtomicType AtomicType
  | ListType AtomicType
  | MapType AtomicType
  deriving (Show, Eq)

rawToSpecType
  :: Maybe Text -- PrimitiveType
  -> Maybe Text -- Type
  -> Maybe Text -- PrimitiveItemType
  -> Maybe Text -- ItemType
  -> SpecType
-- Just primitive type, nothing else
rawToSpecType (Just prim) _ _ _ = AtomicType $ textToPrimitiveType prim
-- A list of primitives
rawToSpecType _ (Just "List") (Just prim) _ = ListType $ textToPrimitiveType prim
-- A list of non-primitives
rawToSpecType _ (Just "List") _ (Just item) = ListType $ SubPropertyType item
-- A map of primitives
rawToSpecType _ (Just "Map") (Just prim) _ = MapType $ textToPrimitiveType prim
-- A map of non-primitives
rawToSpecType _ (Just "Map") _ (Just item) = MapType $ SubPropertyType item
-- A non-primitive type
rawToSpecType _ (Just prop) _ _ = AtomicType $ SubPropertyType prop
rawToSpecType prim type' primItem item = error $ "Unknown raw type: " ++ show (prim, type', primItem, item)

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
textToPrimitiveType "Json" = StringPrimitive
textToPrimitiveType t = error $ "Unknown primitive type: " ++ unpack t

nonPrimitiveTypeName :: SpecType -> Maybe Text
nonPrimitiveTypeName (AtomicType (SubPropertyType name)) = Just name
nonPrimitiveTypeName (ListType (SubPropertyType name)) = Just name
nonPrimitiveTypeName (MapType (SubPropertyType name)) = Just name
nonPrimitiveTypeName _ = Nothing

nonPrimitivePropertyDependencies :: [Property] -> [Text]
nonPrimitivePropertyDependencies = catMaybes . fmap (nonPrimitiveTypeName . propertySpecType)

data ResourceType
  = ResourceType
  { resourceTypeFullName :: Text
  --, resourceTypeAttributes :: [ResourceAttribute] -- Don't care about this yet, could be useful
  , resourceTypeDocumentation :: Text
  , resourceTypeProperties :: [Property]
  }
  deriving (Show, Eq, Generic)

resourceTypeFromRaw :: Text -> RawResourceType -> ResourceType
resourceTypeFromRaw fullName (RawResourceType _ doc props) =
  ResourceType fullName doc (uncurry propertyFromRaw <$> sortOn fst (toList props))
