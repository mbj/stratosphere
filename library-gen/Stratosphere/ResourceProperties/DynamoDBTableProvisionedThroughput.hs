{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-provisionedthroughput.html

module Stratosphere.ResourceProperties.DynamoDBTableProvisionedThroughput where

import Stratosphere.ResourceImports


-- | Full data type definition for DynamoDBTableProvisionedThroughput. See
-- 'dynamoDBTableProvisionedThroughput' for a more convenient constructor.
data DynamoDBTableProvisionedThroughput =
  DynamoDBTableProvisionedThroughput
  { _dynamoDBTableProvisionedThroughputReadCapacityUnits :: Val Integer
  , _dynamoDBTableProvisionedThroughputWriteCapacityUnits :: Val Integer
  } deriving (Show, Eq)

instance ToJSON DynamoDBTableProvisionedThroughput where
  toJSON DynamoDBTableProvisionedThroughput{..} =
    object $
    catMaybes
    [ (Just . ("ReadCapacityUnits",) . toJSON . fmap Integer') _dynamoDBTableProvisionedThroughputReadCapacityUnits
    , (Just . ("WriteCapacityUnits",) . toJSON . fmap Integer') _dynamoDBTableProvisionedThroughputWriteCapacityUnits
    ]

-- | Constructor for 'DynamoDBTableProvisionedThroughput' containing required
-- fields as arguments.
dynamoDBTableProvisionedThroughput
  :: Val Integer -- ^ 'ddbtptReadCapacityUnits'
  -> Val Integer -- ^ 'ddbtptWriteCapacityUnits'
  -> DynamoDBTableProvisionedThroughput
dynamoDBTableProvisionedThroughput readCapacityUnitsarg writeCapacityUnitsarg =
  DynamoDBTableProvisionedThroughput
  { _dynamoDBTableProvisionedThroughputReadCapacityUnits = readCapacityUnitsarg
  , _dynamoDBTableProvisionedThroughputWriteCapacityUnits = writeCapacityUnitsarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-provisionedthroughput.html#cfn-dynamodb-provisionedthroughput-readcapacityunits
ddbtptReadCapacityUnits :: Lens' DynamoDBTableProvisionedThroughput (Val Integer)
ddbtptReadCapacityUnits = lens _dynamoDBTableProvisionedThroughputReadCapacityUnits (\s a -> s { _dynamoDBTableProvisionedThroughputReadCapacityUnits = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-provisionedthroughput.html#cfn-dynamodb-provisionedthroughput-writecapacityunits
ddbtptWriteCapacityUnits :: Lens' DynamoDBTableProvisionedThroughput (Val Integer)
ddbtptWriteCapacityUnits = lens _dynamoDBTableProvisionedThroughputWriteCapacityUnits (\s a -> s { _dynamoDBTableProvisionedThroughputWriteCapacityUnits = a })
