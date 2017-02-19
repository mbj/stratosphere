{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-provisionedthroughput.html

module Stratosphere.ResourceProperties.DynamoDBTableProvisionedThroughput where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for DynamoDBTableProvisionedThroughput. See
-- | 'dynamoDBTableProvisionedThroughput' for a more convenient constructor.
data DynamoDBTableProvisionedThroughput =
  DynamoDBTableProvisionedThroughput
  { _dynamoDBTableProvisionedThroughputReadCapacityUnits :: Val Integer'
  , _dynamoDBTableProvisionedThroughputWriteCapacityUnits :: Val Integer'
  } deriving (Show, Eq)

instance ToJSON DynamoDBTableProvisionedThroughput where
  toJSON DynamoDBTableProvisionedThroughput{..} =
    object $
    catMaybes
    [ Just ("ReadCapacityUnits" .= _dynamoDBTableProvisionedThroughputReadCapacityUnits)
    , Just ("WriteCapacityUnits" .= _dynamoDBTableProvisionedThroughputWriteCapacityUnits)
    ]

instance FromJSON DynamoDBTableProvisionedThroughput where
  parseJSON (Object obj) =
    DynamoDBTableProvisionedThroughput <$>
      obj .: "ReadCapacityUnits" <*>
      obj .: "WriteCapacityUnits"
  parseJSON _ = mempty

-- | Constructor for 'DynamoDBTableProvisionedThroughput' containing required
-- | fields as arguments.
dynamoDBTableProvisionedThroughput
  :: Val Integer' -- ^ 'ddbtptReadCapacityUnits'
  -> Val Integer' -- ^ 'ddbtptWriteCapacityUnits'
  -> DynamoDBTableProvisionedThroughput
dynamoDBTableProvisionedThroughput readCapacityUnitsarg writeCapacityUnitsarg =
  DynamoDBTableProvisionedThroughput
  { _dynamoDBTableProvisionedThroughputReadCapacityUnits = readCapacityUnitsarg
  , _dynamoDBTableProvisionedThroughputWriteCapacityUnits = writeCapacityUnitsarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-provisionedthroughput.html#cfn-dynamodb-provisionedthroughput-readcapacityunits
ddbtptReadCapacityUnits :: Lens' DynamoDBTableProvisionedThroughput (Val Integer')
ddbtptReadCapacityUnits = lens _dynamoDBTableProvisionedThroughputReadCapacityUnits (\s a -> s { _dynamoDBTableProvisionedThroughputReadCapacityUnits = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-provisionedthroughput.html#cfn-dynamodb-provisionedthroughput-writecapacityunits
ddbtptWriteCapacityUnits :: Lens' DynamoDBTableProvisionedThroughput (Val Integer')
ddbtptWriteCapacityUnits = lens _dynamoDBTableProvisionedThroughputWriteCapacityUnits (\s a -> s { _dynamoDBTableProvisionedThroughputWriteCapacityUnits = a })
