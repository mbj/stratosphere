{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-dynamodb.html

module Stratosphere.ResourceProperties.IoTTopicRuleDynamoDBAction where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for IoTTopicRuleDynamoDBAction. See
-- | 'ioTTopicRuleDynamoDBAction' for a more convenient constructor.
data IoTTopicRuleDynamoDBAction =
  IoTTopicRuleDynamoDBAction
  { _ioTTopicRuleDynamoDBActionHashKeyField :: Val Text
  , _ioTTopicRuleDynamoDBActionHashKeyValue :: Val Text
  , _ioTTopicRuleDynamoDBActionPayloadField :: Maybe (Val Text)
  , _ioTTopicRuleDynamoDBActionRangeKeyField :: Val Text
  , _ioTTopicRuleDynamoDBActionRangeKeyValue :: Val Text
  , _ioTTopicRuleDynamoDBActionRoleArn :: Val Text
  , _ioTTopicRuleDynamoDBActionTableName :: Val Text
  } deriving (Show, Eq, Generic)

instance ToJSON IoTTopicRuleDynamoDBAction where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 27, omitNothingFields = True }

instance FromJSON IoTTopicRuleDynamoDBAction where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 27, omitNothingFields = True }

-- | Constructor for 'IoTTopicRuleDynamoDBAction' containing required fields
-- | as arguments.
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
  , _ioTTopicRuleDynamoDBActionHashKeyValue = hashKeyValuearg
  , _ioTTopicRuleDynamoDBActionPayloadField = Nothing
  , _ioTTopicRuleDynamoDBActionRangeKeyField = rangeKeyFieldarg
  , _ioTTopicRuleDynamoDBActionRangeKeyValue = rangeKeyValuearg
  , _ioTTopicRuleDynamoDBActionRoleArn = roleArnarg
  , _ioTTopicRuleDynamoDBActionTableName = tableNamearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-dynamodb.html#cfn-iot-dynamodb-hashkeyfield
ittrddbaHashKeyField :: Lens' IoTTopicRuleDynamoDBAction (Val Text)
ittrddbaHashKeyField = lens _ioTTopicRuleDynamoDBActionHashKeyField (\s a -> s { _ioTTopicRuleDynamoDBActionHashKeyField = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-dynamodb.html#cfn-iot-dynamodb-hashkeyvalue
ittrddbaHashKeyValue :: Lens' IoTTopicRuleDynamoDBAction (Val Text)
ittrddbaHashKeyValue = lens _ioTTopicRuleDynamoDBActionHashKeyValue (\s a -> s { _ioTTopicRuleDynamoDBActionHashKeyValue = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-dynamodb.html#cfn-iot-dynamodb-payloadfield
ittrddbaPayloadField :: Lens' IoTTopicRuleDynamoDBAction (Maybe (Val Text))
ittrddbaPayloadField = lens _ioTTopicRuleDynamoDBActionPayloadField (\s a -> s { _ioTTopicRuleDynamoDBActionPayloadField = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-dynamodb.html#cfn-iot-dynamodb-rangekeyfield
ittrddbaRangeKeyField :: Lens' IoTTopicRuleDynamoDBAction (Val Text)
ittrddbaRangeKeyField = lens _ioTTopicRuleDynamoDBActionRangeKeyField (\s a -> s { _ioTTopicRuleDynamoDBActionRangeKeyField = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-dynamodb.html#cfn-iot-dynamodb-rangekeyvalue
ittrddbaRangeKeyValue :: Lens' IoTTopicRuleDynamoDBAction (Val Text)
ittrddbaRangeKeyValue = lens _ioTTopicRuleDynamoDBActionRangeKeyValue (\s a -> s { _ioTTopicRuleDynamoDBActionRangeKeyValue = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-dynamodb.html#cfn-iot-dynamodb-rolearn
ittrddbaRoleArn :: Lens' IoTTopicRuleDynamoDBAction (Val Text)
ittrddbaRoleArn = lens _ioTTopicRuleDynamoDBActionRoleArn (\s a -> s { _ioTTopicRuleDynamoDBActionRoleArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-dynamodb.html#cfn-iot-dynamodb-tablename
ittrddbaTableName :: Lens' IoTTopicRuleDynamoDBAction (Val Text)
ittrddbaTableName = lens _ioTTopicRuleDynamoDBActionTableName (\s a -> s { _ioTTopicRuleDynamoDBActionTableName = a })
