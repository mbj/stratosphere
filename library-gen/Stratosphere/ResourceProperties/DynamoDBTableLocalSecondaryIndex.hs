{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-lsi.html

module Stratosphere.ResourceProperties.DynamoDBTableLocalSecondaryIndex where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.DynamoDBTableKeySchema
import Stratosphere.ResourceProperties.DynamoDBTableProjection

-- | Full data type definition for DynamoDBTableLocalSecondaryIndex. See
-- | 'dynamoDBTableLocalSecondaryIndex' for a more convenient constructor.
data DynamoDBTableLocalSecondaryIndex =
  DynamoDBTableLocalSecondaryIndex
  { _dynamoDBTableLocalSecondaryIndexIndexName :: Val Text
  , _dynamoDBTableLocalSecondaryIndexKeySchema :: [DynamoDBTableKeySchema]
  , _dynamoDBTableLocalSecondaryIndexProjection :: DynamoDBTableProjection
  } deriving (Show, Eq, Generic)

instance ToJSON DynamoDBTableLocalSecondaryIndex where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 33, omitNothingFields = True }

instance FromJSON DynamoDBTableLocalSecondaryIndex where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 33, omitNothingFields = True }

-- | Constructor for 'DynamoDBTableLocalSecondaryIndex' containing required
-- | fields as arguments.
dynamoDBTableLocalSecondaryIndex
  :: Val Text -- ^ 'ddbtlsiIndexName'
  -> [DynamoDBTableKeySchema] -- ^ 'ddbtlsiKeySchema'
  -> DynamoDBTableProjection -- ^ 'ddbtlsiProjection'
  -> DynamoDBTableLocalSecondaryIndex
dynamoDBTableLocalSecondaryIndex indexNamearg keySchemaarg projectionarg =
  DynamoDBTableLocalSecondaryIndex
  { _dynamoDBTableLocalSecondaryIndexIndexName = indexNamearg
  , _dynamoDBTableLocalSecondaryIndexKeySchema = keySchemaarg
  , _dynamoDBTableLocalSecondaryIndexProjection = projectionarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-lsi.html#cfn-dynamodb-lsi-indexname
ddbtlsiIndexName :: Lens' DynamoDBTableLocalSecondaryIndex (Val Text)
ddbtlsiIndexName = lens _dynamoDBTableLocalSecondaryIndexIndexName (\s a -> s { _dynamoDBTableLocalSecondaryIndexIndexName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-lsi.html#cfn-dynamodb-lsi-keyschema
ddbtlsiKeySchema :: Lens' DynamoDBTableLocalSecondaryIndex [DynamoDBTableKeySchema]
ddbtlsiKeySchema = lens _dynamoDBTableLocalSecondaryIndexKeySchema (\s a -> s { _dynamoDBTableLocalSecondaryIndexKeySchema = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-lsi.html#cfn-dynamodb-lsi-projection
ddbtlsiProjection :: Lens' DynamoDBTableLocalSecondaryIndex DynamoDBTableProjection
ddbtlsiProjection = lens _dynamoDBTableLocalSecondaryIndexProjection (\s a -> s { _dynamoDBTableLocalSecondaryIndexProjection = a })
