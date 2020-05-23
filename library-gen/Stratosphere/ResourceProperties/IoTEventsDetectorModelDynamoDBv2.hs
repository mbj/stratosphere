{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-dynamodbv2.html

module Stratosphere.ResourceProperties.IoTEventsDetectorModelDynamoDBv2 where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.IoTEventsDetectorModelPayload

-- | Full data type definition for IoTEventsDetectorModelDynamoDBv2. See
-- 'ioTEventsDetectorModelDynamoDBv2' for a more convenient constructor.
data IoTEventsDetectorModelDynamoDBv2 =
  IoTEventsDetectorModelDynamoDBv2
  { _ioTEventsDetectorModelDynamoDBv2Payload :: Maybe IoTEventsDetectorModelPayload
  , _ioTEventsDetectorModelDynamoDBv2TableName :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON IoTEventsDetectorModelDynamoDBv2 where
  toJSON IoTEventsDetectorModelDynamoDBv2{..} =
    object $
    catMaybes
    [ fmap (("Payload",) . toJSON) _ioTEventsDetectorModelDynamoDBv2Payload
    , fmap (("TableName",) . toJSON) _ioTEventsDetectorModelDynamoDBv2TableName
    ]

-- | Constructor for 'IoTEventsDetectorModelDynamoDBv2' containing required
-- fields as arguments.
ioTEventsDetectorModelDynamoDBv2
  :: IoTEventsDetectorModelDynamoDBv2
ioTEventsDetectorModelDynamoDBv2  =
  IoTEventsDetectorModelDynamoDBv2
  { _ioTEventsDetectorModelDynamoDBv2Payload = Nothing
  , _ioTEventsDetectorModelDynamoDBv2TableName = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-dynamodbv2.html#cfn-iotevents-detectormodel-dynamodbv2-payload
itedmddbPayload :: Lens' IoTEventsDetectorModelDynamoDBv2 (Maybe IoTEventsDetectorModelPayload)
itedmddbPayload = lens _ioTEventsDetectorModelDynamoDBv2Payload (\s a -> s { _ioTEventsDetectorModelDynamoDBv2Payload = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-dynamodbv2.html#cfn-iotevents-detectormodel-dynamodbv2-tablename
itedmddbTableName :: Lens' IoTEventsDetectorModelDynamoDBv2 (Maybe (Val Text))
itedmddbTableName = lens _ioTEventsDetectorModelDynamoDBv2TableName (\s a -> s { _ioTEventsDetectorModelDynamoDBv2TableName = a })
