
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-dynamodb.html

module Stratosphere.ResourceProperties.IoTEventsDetectorModelDynamoDB where

import Prelude
import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.IoTEventsDetectorModelPayload

-- | Full data type definition for IoTEventsDetectorModelDynamoDB. See
-- 'ioTEventsDetectorModelDynamoDB' for a more convenient constructor.
data IoTEventsDetectorModelDynamoDB =
  IoTEventsDetectorModelDynamoDB
  { _ioTEventsDetectorModelDynamoDBHashKeyField :: Maybe (Val Text)
  , _ioTEventsDetectorModelDynamoDBHashKeyType :: Maybe (Val Text)
  , _ioTEventsDetectorModelDynamoDBHashKeyValue :: Maybe (Val Text)
  , _ioTEventsDetectorModelDynamoDBOperation :: Maybe (Val Text)
  , _ioTEventsDetectorModelDynamoDBPayload :: Maybe IoTEventsDetectorModelPayload
  , _ioTEventsDetectorModelDynamoDBPayloadField :: Maybe (Val Text)
  , _ioTEventsDetectorModelDynamoDBRangeKeyField :: Maybe (Val Text)
  , _ioTEventsDetectorModelDynamoDBRangeKeyType :: Maybe (Val Text)
  , _ioTEventsDetectorModelDynamoDBRangeKeyValue :: Maybe (Val Text)
  , _ioTEventsDetectorModelDynamoDBTableName :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON IoTEventsDetectorModelDynamoDB where
  toJSON IoTEventsDetectorModelDynamoDB{..} =
    object $
    catMaybes
    [ fmap (("HashKeyField",) . toJSON) _ioTEventsDetectorModelDynamoDBHashKeyField
    , fmap (("HashKeyType",) . toJSON) _ioTEventsDetectorModelDynamoDBHashKeyType
    , fmap (("HashKeyValue",) . toJSON) _ioTEventsDetectorModelDynamoDBHashKeyValue
    , fmap (("Operation",) . toJSON) _ioTEventsDetectorModelDynamoDBOperation
    , fmap (("Payload",) . toJSON) _ioTEventsDetectorModelDynamoDBPayload
    , fmap (("PayloadField",) . toJSON) _ioTEventsDetectorModelDynamoDBPayloadField
    , fmap (("RangeKeyField",) . toJSON) _ioTEventsDetectorModelDynamoDBRangeKeyField
    , fmap (("RangeKeyType",) . toJSON) _ioTEventsDetectorModelDynamoDBRangeKeyType
    , fmap (("RangeKeyValue",) . toJSON) _ioTEventsDetectorModelDynamoDBRangeKeyValue
    , fmap (("TableName",) . toJSON) _ioTEventsDetectorModelDynamoDBTableName
    ]

-- | Constructor for 'IoTEventsDetectorModelDynamoDB' containing required
-- fields as arguments.
ioTEventsDetectorModelDynamoDB
  :: IoTEventsDetectorModelDynamoDB
ioTEventsDetectorModelDynamoDB  =
  IoTEventsDetectorModelDynamoDB
  { _ioTEventsDetectorModelDynamoDBHashKeyField = Nothing
  , _ioTEventsDetectorModelDynamoDBHashKeyType = Nothing
  , _ioTEventsDetectorModelDynamoDBHashKeyValue = Nothing
  , _ioTEventsDetectorModelDynamoDBOperation = Nothing
  , _ioTEventsDetectorModelDynamoDBPayload = Nothing
  , _ioTEventsDetectorModelDynamoDBPayloadField = Nothing
  , _ioTEventsDetectorModelDynamoDBRangeKeyField = Nothing
  , _ioTEventsDetectorModelDynamoDBRangeKeyType = Nothing
  , _ioTEventsDetectorModelDynamoDBRangeKeyValue = Nothing
  , _ioTEventsDetectorModelDynamoDBTableName = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-dynamodb.html#cfn-iotevents-detectormodel-dynamodb-hashkeyfield
itedmddbHashKeyField :: Lens' IoTEventsDetectorModelDynamoDB (Maybe (Val Text))
itedmddbHashKeyField = lens _ioTEventsDetectorModelDynamoDBHashKeyField (\s a -> s { _ioTEventsDetectorModelDynamoDBHashKeyField = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-dynamodb.html#cfn-iotevents-detectormodel-dynamodb-hashkeytype
itedmddbHashKeyType :: Lens' IoTEventsDetectorModelDynamoDB (Maybe (Val Text))
itedmddbHashKeyType = lens _ioTEventsDetectorModelDynamoDBHashKeyType (\s a -> s { _ioTEventsDetectorModelDynamoDBHashKeyType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-dynamodb.html#cfn-iotevents-detectormodel-dynamodb-hashkeyvalue
itedmddbHashKeyValue :: Lens' IoTEventsDetectorModelDynamoDB (Maybe (Val Text))
itedmddbHashKeyValue = lens _ioTEventsDetectorModelDynamoDBHashKeyValue (\s a -> s { _ioTEventsDetectorModelDynamoDBHashKeyValue = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-dynamodb.html#cfn-iotevents-detectormodel-dynamodb-operation
itedmddbOperation :: Lens' IoTEventsDetectorModelDynamoDB (Maybe (Val Text))
itedmddbOperation = lens _ioTEventsDetectorModelDynamoDBOperation (\s a -> s { _ioTEventsDetectorModelDynamoDBOperation = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-dynamodb.html#cfn-iotevents-detectormodel-dynamodb-payload
itedmddbPayload :: Lens' IoTEventsDetectorModelDynamoDB (Maybe IoTEventsDetectorModelPayload)
itedmddbPayload = lens _ioTEventsDetectorModelDynamoDBPayload (\s a -> s { _ioTEventsDetectorModelDynamoDBPayload = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-dynamodb.html#cfn-iotevents-detectormodel-dynamodb-payloadfield
itedmddbPayloadField :: Lens' IoTEventsDetectorModelDynamoDB (Maybe (Val Text))
itedmddbPayloadField = lens _ioTEventsDetectorModelDynamoDBPayloadField (\s a -> s { _ioTEventsDetectorModelDynamoDBPayloadField = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-dynamodb.html#cfn-iotevents-detectormodel-dynamodb-rangekeyfield
itedmddbRangeKeyField :: Lens' IoTEventsDetectorModelDynamoDB (Maybe (Val Text))
itedmddbRangeKeyField = lens _ioTEventsDetectorModelDynamoDBRangeKeyField (\s a -> s { _ioTEventsDetectorModelDynamoDBRangeKeyField = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-dynamodb.html#cfn-iotevents-detectormodel-dynamodb-rangekeytype
itedmddbRangeKeyType :: Lens' IoTEventsDetectorModelDynamoDB (Maybe (Val Text))
itedmddbRangeKeyType = lens _ioTEventsDetectorModelDynamoDBRangeKeyType (\s a -> s { _ioTEventsDetectorModelDynamoDBRangeKeyType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-dynamodb.html#cfn-iotevents-detectormodel-dynamodb-rangekeyvalue
itedmddbRangeKeyValue :: Lens' IoTEventsDetectorModelDynamoDB (Maybe (Val Text))
itedmddbRangeKeyValue = lens _ioTEventsDetectorModelDynamoDBRangeKeyValue (\s a -> s { _ioTEventsDetectorModelDynamoDBRangeKeyValue = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-dynamodb.html#cfn-iotevents-detectormodel-dynamodb-tablename
itedmddbTableName :: Lens' IoTEventsDetectorModelDynamoDB (Maybe (Val Text))
itedmddbTableName = lens _ioTEventsDetectorModelDynamoDBTableName (\s a -> s { _ioTEventsDetectorModelDynamoDBTableName = a })
