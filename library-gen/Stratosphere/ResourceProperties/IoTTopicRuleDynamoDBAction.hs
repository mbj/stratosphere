{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-dynamodbaction.html

module Stratosphere.ResourceProperties.IoTTopicRuleDynamoDBAction where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for IoTTopicRuleDynamoDBAction. See
-- 'ioTTopicRuleDynamoDBAction' for a more convenient constructor.
data IoTTopicRuleDynamoDBAction =
  IoTTopicRuleDynamoDBAction
  { _ioTTopicRuleDynamoDBActionHashKeyField :: Val Text
  , _ioTTopicRuleDynamoDBActionHashKeyType :: Maybe (Val Text)
  , _ioTTopicRuleDynamoDBActionHashKeyValue :: Val Text
  , _ioTTopicRuleDynamoDBActionPayloadField :: Maybe (Val Text)
  , _ioTTopicRuleDynamoDBActionRangeKeyField :: Val Text
  , _ioTTopicRuleDynamoDBActionRangeKeyType :: Maybe (Val Text)
  , _ioTTopicRuleDynamoDBActionRangeKeyValue :: Val Text
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
    , (Just . ("RangeKeyField",) . toJSON) _ioTTopicRuleDynamoDBActionRangeKeyField
    , fmap (("RangeKeyType",) . toJSON) _ioTTopicRuleDynamoDBActionRangeKeyType
    , (Just . ("RangeKeyValue",) . toJSON) _ioTTopicRuleDynamoDBActionRangeKeyValue
    , (Just . ("RoleArn",) . toJSON) _ioTTopicRuleDynamoDBActionRoleArn
    , (Just . ("TableName",) . toJSON) _ioTTopicRuleDynamoDBActionTableName
    ]

instance FromJSON IoTTopicRuleDynamoDBAction where
  parseJSON (Object obj) =
    IoTTopicRuleDynamoDBAction <$>
      (obj .: "HashKeyField") <*>
      (obj .:? "HashKeyType") <*>
      (obj .: "HashKeyValue") <*>
      (obj .:? "PayloadField") <*>
      (obj .: "RangeKeyField") <*>
      (obj .:? "RangeKeyType") <*>
      (obj .: "RangeKeyValue") <*>
      (obj .: "RoleArn") <*>
      (obj .: "TableName")
  parseJSON _ = mempty

-- | Constructor for 'IoTTopicRuleDynamoDBAction' containing required fields
-- as arguments.
ioTTopicRuleDynamoDBAction
  :: Val Text -- ^ 'ittrddbaHashKeyField'
  -> Val Text -- ^ 'ittrddbaHashKeyValue'
  -> Val Text -- ^ 'ittrddbaRangeKeyField'
  -> Val Text -- ^ 'ittrddbaRangeKeyValue'
  -> Val Text -- ^ 'ittrddbaRoleArn'
  -> Val Text -- ^ 'ittrddbaTableName'
  -> IoTTopicRuleDynamoDBAction
ioTTopicRuleDynamoDBAction hashKeyFieldarg hashKeyValuearg rangeKeyFieldarg rangeKeyValuearg roleArnarg tableNamearg =
  IoTTopicRuleDynamoDBAction
  { _ioTTopicRuleDynamoDBActionHashKeyField = hashKeyFieldarg
  , _ioTTopicRuleDynamoDBActionHashKeyType = Nothing
  , _ioTTopicRuleDynamoDBActionHashKeyValue = hashKeyValuearg
  , _ioTTopicRuleDynamoDBActionPayloadField = Nothing
  , _ioTTopicRuleDynamoDBActionRangeKeyField = rangeKeyFieldarg
  , _ioTTopicRuleDynamoDBActionRangeKeyType = Nothing
  , _ioTTopicRuleDynamoDBActionRangeKeyValue = rangeKeyValuearg
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
ittrddbaRangeKeyField :: Lens' IoTTopicRuleDynamoDBAction (Val Text)
ittrddbaRangeKeyField = lens _ioTTopicRuleDynamoDBActionRangeKeyField (\s a -> s { _ioTTopicRuleDynamoDBActionRangeKeyField = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-dynamodbaction.html#cfn-iot-topicrule-dynamodbaction-rangekeytype
ittrddbaRangeKeyType :: Lens' IoTTopicRuleDynamoDBAction (Maybe (Val Text))
ittrddbaRangeKeyType = lens _ioTTopicRuleDynamoDBActionRangeKeyType (\s a -> s { _ioTTopicRuleDynamoDBActionRangeKeyType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-dynamodbaction.html#cfn-iot-topicrule-dynamodbaction-rangekeyvalue
ittrddbaRangeKeyValue :: Lens' IoTTopicRuleDynamoDBAction (Val Text)
ittrddbaRangeKeyValue = lens _ioTTopicRuleDynamoDBActionRangeKeyValue (\s a -> s { _ioTTopicRuleDynamoDBActionRangeKeyValue = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-dynamodbaction.html#cfn-iot-topicrule-dynamodbaction-rolearn
ittrddbaRoleArn :: Lens' IoTTopicRuleDynamoDBAction (Val Text)
ittrddbaRoleArn = lens _ioTTopicRuleDynamoDBActionRoleArn (\s a -> s { _ioTTopicRuleDynamoDBActionRoleArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-dynamodbaction.html#cfn-iot-topicrule-dynamodbaction-tablename
ittrddbaTableName :: Lens' IoTTopicRuleDynamoDBAction (Val Text)
ittrddbaTableName = lens _ioTTopicRuleDynamoDBActionTableName (\s a -> s { _ioTTopicRuleDynamoDBActionTableName = a })
