{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | Describes a set of provisioned throughput values for an
-- AWS::DynamoDB::Table resource. DynamoDB uses these capacity units to
-- allocate sufficient resources to provide the requested throughput. For a
-- complete discussion of DynamoDB provisioned throughput values, see
-- Specifying Read and Write Requirements in the DynamoDB Developer Guide.

module Stratosphere.ResourceProperties.DynamoDBProvisionedThroughput where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for DynamoDBProvisionedThroughput. See
-- 'dynamoDBProvisionedThroughput' for a more convenient constructor.
data DynamoDBProvisionedThroughput =
  DynamoDBProvisionedThroughput
  { _dynamoDBProvisionedThroughputReadCapacityUnits :: Double'
  , _dynamoDBProvisionedThroughputWriteCapacityUnits :: Double'
  } deriving (Show, Generic)

instance ToJSON DynamoDBProvisionedThroughput where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 30, omitNothingFields = True }

instance FromJSON DynamoDBProvisionedThroughput where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 30, omitNothingFields = True }

-- | Constructor for 'DynamoDBProvisionedThroughput' containing required
-- fields as arguments.
dynamoDBProvisionedThroughput
  :: Double' -- ^ 'ddbptReadCapacityUnits'
  -> Double' -- ^ 'ddbptWriteCapacityUnits'
  -> DynamoDBProvisionedThroughput
dynamoDBProvisionedThroughput readCapacityUnitsarg writeCapacityUnitsarg =
  DynamoDBProvisionedThroughput
  { _dynamoDBProvisionedThroughputReadCapacityUnits = readCapacityUnitsarg
  , _dynamoDBProvisionedThroughputWriteCapacityUnits = writeCapacityUnitsarg
  }

-- | Sets the desired minimum number of consistent reads of items (up to 1KB
-- in size) per second for the specified table before Amazon DynamoDB balances
-- the load.
ddbptReadCapacityUnits :: Lens' DynamoDBProvisionedThroughput Double'
ddbptReadCapacityUnits = lens _dynamoDBProvisionedThroughputReadCapacityUnits (\s a -> s { _dynamoDBProvisionedThroughputReadCapacityUnits = a })

-- | Sets the desired minimum number of consistent writes of items (up to 1KB
-- in size) per second for the specified table before Amazon DynamoDB balances
-- the load.
ddbptWriteCapacityUnits :: Lens' DynamoDBProvisionedThroughput Double'
ddbptWriteCapacityUnits = lens _dynamoDBProvisionedThroughputWriteCapacityUnits (\s a -> s { _dynamoDBProvisionedThroughputWriteCapacityUnits = a })