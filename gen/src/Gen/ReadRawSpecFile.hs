{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | Parse the official AWS specification file.

module Gen.ReadRawSpecFile
  ( RawCloudFormationSpec (..)
  , RawPropertyType (..)
  , RawProperty (..)
  , RawResourceType (..)
  , RawResourceAttribute (..)
  , decodeFile
  , rawProperty
  ) where

import Control.Applicative ((<|>))
import Data.Aeson
import qualified Data.ByteString as BS
import Data.Map (Map)
import Data.Text
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
  { rawPropertyTypeDocumentation :: Maybe Text
  , rawPropertyTypeProperties :: Maybe(Map Text RawProperty)
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

rawProperty :: Bool -> Text -> RawProperty
rawProperty rpReq rpDoc = RawProperty
  { rawPropertyDocumentation = rpDoc
  , rawPropertyDuplicatesAllowed = Nothing
  , rawPropertyItemType = Nothing
  , rawPropertyPrimitiveItemType = Nothing
  , rawPropertyPrimitiveType = Nothing
  , rawPropertyRequired = rpReq
  , rawPropertyType = Nothing
  , rawPropertyUpdateType = Nothing
  }

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
  , rawResourceAttributeType :: Maybe (Either [Text] Text)
  }
  deriving (Show, Eq, Generic)

instance FromJSON RawResourceAttribute where
  parseJSON (Object o) =
    RawResourceAttribute <$>
      o .:? "ItemType" <*>
      o .:? "PrimitiveItemType" <*>
      o .:? "PrimitiveType" <*>
      (fmap Left <$> o .:? "Type" <|> fmap Right <$> o .:? "Type")
  parseJSON _ = mempty

-- | Decode a JSON file into a type
decodeFile :: (FromJSON a) => FilePath -> IO (Either String a)
decodeFile fp = fmap eitherDecodeStrict (BS.readFile fp)
