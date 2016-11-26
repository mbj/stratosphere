{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-projectionobject.html

module Stratosphere.ResourceProperties.DynamoDBTableProjection where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.Types

-- | Full data type definition for DynamoDBTableProjection. See
-- | 'dynamoDBTableProjection' for a more convenient constructor.
data DynamoDBTableProjection =
  DynamoDBTableProjection
  { _dynamoDBTableProjectionNonKeyAttributes :: Maybe [Val Text]
  , _dynamoDBTableProjectionProjectionType :: Maybe (Val ProjectionType)
  } deriving (Show, Generic)

instance ToJSON DynamoDBTableProjection where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 24, omitNothingFields = True }

instance FromJSON DynamoDBTableProjection where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 24, omitNothingFields = True }

-- | Constructor for 'DynamoDBTableProjection' containing required fields as
-- | arguments.
dynamoDBTableProjection
  :: DynamoDBTableProjection
dynamoDBTableProjection  =
  DynamoDBTableProjection
  { _dynamoDBTableProjectionNonKeyAttributes = Nothing
  , _dynamoDBTableProjectionProjectionType = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-projectionobject.html#cfn-dynamodb-projectionobj-nonkeyatt
ddbtpNonKeyAttributes :: Lens' DynamoDBTableProjection (Maybe [Val Text])
ddbtpNonKeyAttributes = lens _dynamoDBTableProjectionNonKeyAttributes (\s a -> s { _dynamoDBTableProjectionNonKeyAttributes = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-projectionobject.html#cfn-dynamodb-projectionobj-projtype
ddbtpProjectionType :: Lens' DynamoDBTableProjection (Maybe (Val ProjectionType))
ddbtpProjectionType = lens _dynamoDBTableProjectionProjectionType (\s a -> s { _dynamoDBTableProjectionProjectionType = a })
