-- | Parse the official AWS specification file.

module Gen.ReadRawSpecFile
  ( RawCloudFormationSpec(..)
  , RawPropertyType(..)
  , RawProperty(..)
  , RawResourceType(..)
  , RawResourceAttribute(..)
  , decodeFile
  )
where

import Control.Applicative ((<|>))
import Data.Aeson ((.:?))
import Data.Map (Map)
import GHC.Generics
import Gen.Prelude

import qualified Data.Aeson      as JSON
import qualified Data.ByteString as BS

data RawCloudFormationSpec = RawCloudFormationSpec
  { rawCloudFormationSpecPropertyTypes                :: Map Text RawPropertyType
  , rawClousFormationSpecResourceSpecificationVersion :: Text
  , rawCloudFormationSpecResourceTypes                :: Map Text RawResourceType
  }
  deriving (Show, Eq, Generic)

instance JSON.FromJSON RawCloudFormationSpec where
  parseJSON = JSON.genericParseJSON $ parseOptions 21

data RawPropertyType = RawPropertyType
  { rawPropertyTypeDocumentation :: Text
  , rawPropertyTypeProperties    :: Map Text RawProperty
  }
  deriving (Show, Eq, Generic)

instance JSON.FromJSON RawPropertyType where
  parseJSON = JSON.genericParseJSON $ parseOptions 15

data RawProperty = RawProperty
  { rawPropertyDocumentation     :: Text
  , rawPropertyDuplicatesAllowed :: Maybe Bool
  , rawPropertyItemType          :: Maybe Text
  , rawPropertyPrimitiveItemType :: Maybe Text
  , rawPropertyPrimitiveType     :: Maybe Text
  , rawPropertyRequired          :: Bool
  , rawPropertyType              :: Maybe Text
  , rawPropertyUpdateType        :: Maybe Text
  }
  deriving (Show, Eq, Generic)

instance JSON.FromJSON RawProperty where
  parseJSON = JSON.genericParseJSON $ parseOptions 11

data RawResourceType = RawResourceType
  { rawResourceTypeAttributes    :: Maybe (Map Text RawResourceAttribute)
  , rawResourceTypeDocumentation :: Text
  , rawResourceTypeProperties    :: Map Text RawProperty
  }
  deriving (Show, Eq, Generic)

instance JSON.FromJSON RawResourceType where
  parseJSON = JSON.genericParseJSON $ parseOptions 15

data RawResourceAttribute = RawResourceAttribute
  { rawResourceAttributeItemType          :: Maybe Text
  , rawResourceAttributePrimitiveItemType :: Maybe Text
  , rawResourceAttributePrimitiveType     :: Maybe Text
  , rawResourceAttributeType              :: Maybe (Either [Text] Text)
  }
  deriving (Show, Eq, Generic)

instance JSON.FromJSON RawResourceAttribute where
  parseJSON (JSON.Object o) =
    RawResourceAttribute <$>
      o .:? "ItemType" <*>
      o .:? "PrimitiveItemType" <*>
      o .:? "PrimitiveType" <*>
      (fmap Left <$> o .:? "Type" <|> fmap Right <$> o .:? "Type")
  parseJSON _ = mempty

-- | Decode a JSON file into a type
decodeFile :: JSON.FromJSON a => FilePath -> IO (Either String a)
decodeFile fp = fmap JSON.eitherDecodeStrict (BS.readFile fp)

parseOptions :: Int -> JSON.Options
parseOptions dropLength
  = JSON.defaultOptions
  { JSON.fieldLabelModifier = Gen.Prelude.drop dropLength }
