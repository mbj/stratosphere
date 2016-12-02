-- | Parse the official AWS specification file.

module Gen.ReadRawSpecFile
  ( RawCloudFormationSpec (..)
  , RawPropertyType (..)
  , RawProperty (..)
  , RawResourceType (..)
  , RawResourceAttribute (..)
  , decodeFile
  ) where

import Data.Aeson
import Data.Aeson.Types
import Data.Map (Map)
import Data.Text
import qualified Filesystem as FS
import qualified Filesystem.Path.CurrentOS as FP
import GHC.Generics

data RawCloudFormationSpec
  = RawCloudFormationSpec
  { rawCloudFormationSpecPropertyTypes :: Map Text RawPropertyType
  , rawClousFormationSpecResourceSpecificationVersion :: Text
  , rawCloudFormationSpecResourceTypes :: Map Text RawResourceType
  }
  deriving (Show, Eq, Generic)

instance FromJSON RawCloudFormationSpec where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 21 }

data RawPropertyType
  = RawPropertyType
  { rawPropertyTypeDocumentation :: Text
  , rawPropertyTypeProperties :: Map Text RawProperty
  }
  deriving (Show, Eq, Generic)

instance FromJSON RawPropertyType where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 15 }

data RawProperty
  = RawProperty
  { rawPropertyDocumentation :: Text
  , rawPropertyDuplicatesAllowed :: Maybe Bool
  , rawPropertyItemType :: Maybe Text
  , rawPropertyPrimitiveItemType :: Maybe Text
  , rawPropertyPrimitiveType :: Maybe Text
  , rawPropertyRequired :: Bool
  , rawPropertyType :: Maybe Text
  , rawPropertyUpdateType :: Maybe Text
  }
  deriving (Show, Eq, Generic)

instance FromJSON RawProperty where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 11 }

data RawResourceType
  = RawResourceType
  { rawResourceTypeAttributes :: Maybe (Map Text RawResourceAttribute)
  , rawResourceTypeDocumentation :: Text
  , rawResourceTypeProperties :: Map Text RawProperty
  }
  deriving (Show, Eq, Generic)

instance FromJSON RawResourceType where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 15 }

data RawResourceAttribute
  = RawResourceAttribute
  { rawResourceAttributeItemType :: Maybe Text
  , rawResourceAttributePrimitiveItemType :: Maybe Text
  , rawResourceAttributePrimitiveType :: Maybe Text
  , rawResourceAttributeType :: Maybe Text
  }
  deriving (Show, Eq, Generic)

instance FromJSON RawResourceAttribute where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 20 }

-- | Decode a JSON file into a type
decodeFile :: (FromJSON a) => FP.FilePath -> IO (Either String a)
decodeFile fp = fmap eitherDecodeStrict (FS.readFile fp)
