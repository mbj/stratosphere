
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-dynamodbaction.html

module Stratosphere.ResourceProperties.IoTTopicRuleDynamoDBAction where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for IoTTopicRuleDynamoDBAction. See
-- 'ioTTopicRuleDynamoDBAction' for a more convenient constructor.
data IoTTopicRuleDynamoDBAction =
  IoTTopicRuleDynamoDBAction
  { _ioTTopicRuleDynamoDBActionHashKeyField :: Val Text
  , _ioTTopicRuleDynamoDBActionHashKeyType :: Maybe (Val Text)
  , _ioTTopicRuleDynamoDBActionHashKeyValue :: Val Text
  , _ioTTopicRuleDynamoDBActionPayloadField :: Maybe (Val Text)
  , _ioTTopicRuleDynamoDBActionRangeKeyField :: Maybe (Val Text)
  , _ioTTopicRuleDynamoDBActionRangeKeyType :: Maybe (Val Text)
  , _ioTTopicRuleDynamoDBActionRangeKeyValue :: Maybe (Val Text)
  , _ioTTopicRuleDynamoDBActionRoleArn :: Val Text
  , _ioTTopicRuleDynamoDBActionTableName :: Val Text
  } deriving (Show, Eq)

instance ToJSON IoTTopicRuleDynamoDBAction where
  toJSON IoTTopicRuleDynamoDBAction{..} =
    object $
    catMaybes
    [ (Just . ("HashKeyField",) . toJSON) _ioTTopicRuleDynamoDBActionHashKeyField
    , fmap (("HashKeyType",) . toJSON) _ioTTopicRuleDynamoDBActionHashKeyType
    , (Just . ("HashKeyValue",) . toJSON) _ioTTopicRuleDynamoDBActionHashKeyValue
    , fmap (("PayloadField",) . toJSON) _ioTTopicRuleDynamoDBActionPayloadField
    , fmap (("RangeKeyField",) . toJSON) _ioTTopicRuleDynamoDBActionRangeKeyField
    , fmap (("RangeKeyType",) . toJSON) _ioTTopicRuleDynamoDBActionRangeKeyType
    , fmap (("RangeKeyValue",) . toJSON) _ioTTopicRuleDynamoDBActionRangeKeyValue
    , (Just . ("RoleArn",) . toJSON) _ioTTopicRuleDynamoDBActionRoleArn
    , (Just . ("TableName",) . toJSON) _ioTTopicRuleDynamoDBActionTableName
    ]

-- | Constructor for 'IoTTopicRuleDynamoDBAction' containing required fields
-- as arguments.
ioTTopicRuleDynamoDBAction
  :: Val Text -- ^ 'ittrddbaHashKeyField'
  -> Val Text -- ^ 'ittrddbaHashKeyValue'
  -> Val Text -- ^ 'ittrddbaRoleArn'
  -> Val Text -- ^ 'ittrddbaTableName'
  -> IoTTopicRuleDynamoDBAction
ioTTopicRuleDynamoDBAction hashKeyFieldarg hashKeyValuearg roleArnarg tableNamearg =
  IoTTopicRuleDynamoDBAction
  { _ioTTopicRuleDynamoDBActionHashKeyField = hashKeyFieldarg
  , _ioTTopicRuleDynamoDBActionHashKeyType = Nothing
  , _ioTTopicRuleDynamoDBActionHashKeyValue = hashKeyValuearg
  , _ioTTopicRuleDynamoDBActionPayloadField = Nothing
  , _ioTTopicRuleDynamoDBActionRangeKeyField = Nothing
  , _ioTTopicRuleDynamoDBActionRangeKeyType = Nothing
  , _ioTTopicRuleDynamoDBActionRangeKeyValue = Nothing
  , _ioTTopicRuleDynamoDBActionRoleArn = roleArnarg
  , _ioTTopicRuleDynamoDBActionTableName = tableNamearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-dynamodbaction.html#cfn-iot-topicrule-dynamodbaction-hashkeyfield
ittrddbaHashKeyField :: Lens' IoTTopicRuleDynamoDBAction (Val Text)
ittrddbaHashKeyField = lens _ioTTopicRuleDynamoDBActionHashKeyField (\s a -> s { _ioTTopicRuleDynamoDBActionHashKeyField = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-dynamodbaction.html#cfn-iot-topicrule-dynamodbaction-hashkeytype
ittrddbaHashKeyType :: Lens' IoTTopicRuleDynamoDBAction (Maybe (Val Text))
ittrddbaHashKeyType = lens _ioTTopicRuleDynamoDBActionHashKeyType (\s a -> s { _ioTTopicRuleDynamoDBActionHashKeyType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-dynamodbaction.html#cfn-iot-topicrule-dynamodbaction-hashkeyvalue
ittrddbaHashKeyValue :: Lens' IoTTopicRuleDynamoDBAction (Val Text)
ittrddbaHashKeyValue = lens _ioTTopicRuleDynamoDBActionHashKeyValue (\s a -> s { _ioTTopicRuleDynamoDBActionHashKeyValue = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-dynamodbaction.html#cfn-iot-topicrule-dynamodbaction-payloadfield
ittrddbaPayloadField :: Lens' IoTTopicRuleDynamoDBAction (Maybe (Val Text))
ittrddbaPayloadField = lens _ioTTopicRuleDynamoDBActionPayloadField (\s a -> s { _ioTTopicRuleDynamoDBActionPayloadField = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-dynamodbaction.html#cfn-iot-topicrule-dynamodbaction-rangekeyfield
ittrddbaRangeKeyField :: Lens' IoTTopicRuleDynamoDBAction (Maybe (Val Text))
ittrddbaRangeKeyField = lens _ioTTopicRuleDynamoDBActionRangeKeyField (\s a -> s { _ioTTopicRuleDynamoDBActionRangeKeyField = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-dynamodbaction.html#cfn-iot-topicrule-dynamodbaction-rangekeytype
ittrddbaRangeKeyType :: Lens' IoTTopicRuleDynamoDBAction (Maybe (Val Text))
ittrddbaRangeKeyType = lens _ioTTopicRuleDynamoDBActionRangeKeyType (\s a -> s { _ioTTopicRuleDynamoDBActionRangeKeyType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-dynamodbaction.html#cfn-iot-topicrule-dynamodbaction-rangekeyvalue
ittrddbaRangeKeyValue :: Lens' IoTTopicRuleDynamoDBAction (Maybe (Val Text))
ittrddbaRangeKeyValue = lens _ioTTopicRuleDynamoDBActionRangeKeyValue (\s a -> s { _ioTTopicRuleDynamoDBActionRangeKeyValue = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-dynamodbaction.html#cfn-iot-topicrule-dynamodbaction-rolearn
ittrddbaRoleArn :: Lens' IoTTopicRuleDynamoDBAction (Val Text)
ittrddbaRoleArn = lens _ioTTopicRuleDynamoDBActionRoleArn (\s a -> s { _ioTTopicRuleDynamoDBActionRoleArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-dynamodbaction.html#cfn-iot-topicrule-dynamodbaction-tablename
ittrddbaTableName :: Lens' IoTTopicRuleDynamoDBAction (Val Text)
ittrddbaTableName = lens _ioTTopicRuleDynamoDBActionTableName (\s a -> s { _ioTTopicRuleDynamoDBActionTableName = a })
