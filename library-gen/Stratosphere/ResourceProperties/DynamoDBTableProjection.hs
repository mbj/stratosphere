{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-projectionobject.html

module Stratosphere.ResourceProperties.DynamoDBTableProjection where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.Types

-- | Full data type definition for DynamoDBTableProjection. See
-- 'dynamoDBTableProjection' for a more convenient constructor.
data DynamoDBTableProjection =
  DynamoDBTableProjection
  { _dynamoDBTableProjectionNonKeyAttributes :: Maybe (ValList Text)
  , _dynamoDBTableProjectionProjectionType :: Maybe (Val ProjectionType)
  } deriving (Show, Eq)

instance ToJSON DynamoDBTableProjection where
  toJSON DynamoDBTableProjection{..} =
    object $
    catMaybes
    [ fmap (("NonKeyAttributes",) . toJSON) _dynamoDBTableProjectionNonKeyAttributes
    , fmap (("ProjectionType",) . toJSON) _dynamoDBTableProjectionProjectionType
    ]

instance FromJSON DynamoDBTableProjection where
  parseJSON (Object obj) =
    DynamoDBTableProjection <$>
      (obj .:? "NonKeyAttributes") <*>
      (obj .:? "ProjectionType")
  parseJSON _ = mempty

-- | Constructor for 'DynamoDBTableProjection' containing required fields as
-- arguments.
dynamoDBTableProjection
  :: DynamoDBTableProjection
dynamoDBTableProjection  =
  DynamoDBTableProjection
  { _dynamoDBTableProjectionNonKeyAttributes = Nothing
  , _dynamoDBTableProjectionProjectionType = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-projectionobject.html#cfn-dynamodb-projectionobj-nonkeyatt
ddbtpNonKeyAttributes :: Lens' DynamoDBTableProjection (Maybe (ValList Text))
ddbtpNonKeyAttributes = lens _dynamoDBTableProjectionNonKeyAttributes (\s a -> s { _dynamoDBTableProjectionNonKeyAttributes = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-projectionobject.html#cfn-dynamodb-projectionobj-projtype
ddbtpProjectionType :: Lens' DynamoDBTableProjection (Maybe (Val ProjectionType))
ddbtpProjectionType = lens _dynamoDBTableProjectionProjectionType (\s a -> s { _dynamoDBTableProjectionProjectionType = a })
