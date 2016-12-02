{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-provisionedthroughput.html

module Stratosphere.ResourceProperties.DynamoDBTableProvisionedThroughput where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for DynamoDBTableProvisionedThroughput. See
-- | 'dynamoDBTableProvisionedThroughput' for a more convenient constructor.
data DynamoDBTableProvisionedThroughput =
  DynamoDBTableProvisionedThroughput
  { _dynamoDBTableProvisionedThroughputReadCapacityUnits :: Val Integer'
  , _dynamoDBTableProvisionedThroughputWriteCapacityUnits :: Val Integer'
  } deriving (Show, Generic)

instance ToJSON DynamoDBTableProvisionedThroughput where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 35, omitNothingFields = True }

instance FromJSON DynamoDBTableProvisionedThroughput where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 35, omitNothingFields = True }

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
