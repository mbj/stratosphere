{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-kinesis.html

module Stratosphere.ResourceProperties.IoTTopicRuleKinesisAction where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for IoTTopicRuleKinesisAction. See
-- 'ioTTopicRuleKinesisAction' for a more convenient constructor.
data IoTTopicRuleKinesisAction =
  IoTTopicRuleKinesisAction
  { _ioTTopicRuleKinesisActionPartitionKey :: Maybe (Val Text)
  , _ioTTopicRuleKinesisActionRoleArn :: Val Text
  , _ioTTopicRuleKinesisActionStreamName :: Val Text
  } deriving (Show, Eq)

instance ToJSON IoTTopicRuleKinesisAction where
  toJSON IoTTopicRuleKinesisAction{..} =
    object $
    catMaybes
    [ ("PartitionKey" .=) <$> _ioTTopicRuleKinesisActionPartitionKey
    , Just ("RoleArn" .= _ioTTopicRuleKinesisActionRoleArn)
    , Just ("StreamName" .= _ioTTopicRuleKinesisActionStreamName)
    ]

instance FromJSON IoTTopicRuleKinesisAction where
  parseJSON (Object obj) =
    IoTTopicRuleKinesisAction <$>
      obj .:? "PartitionKey" <*>
      obj .: "RoleArn" <*>
      obj .: "StreamName"
  parseJSON _ = mempty

-- | Constructor for 'IoTTopicRuleKinesisAction' containing required fields as
-- arguments.
ioTTopicRuleKinesisAction
  :: Val Text -- ^ 'ittrkaRoleArn'
  -> Val Text -- ^ 'ittrkaStreamName'
  -> IoTTopicRuleKinesisAction
ioTTopicRuleKinesisAction roleArnarg streamNamearg =
  IoTTopicRuleKinesisAction
  { _ioTTopicRuleKinesisActionPartitionKey = Nothing
  , _ioTTopicRuleKinesisActionRoleArn = roleArnarg
  , _ioTTopicRuleKinesisActionStreamName = streamNamearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-kinesis.html#cfn-iot-kinesis-partitionkey
ittrkaPartitionKey :: Lens' IoTTopicRuleKinesisAction (Maybe (Val Text))
ittrkaPartitionKey = lens _ioTTopicRuleKinesisActionPartitionKey (\s a -> s { _ioTTopicRuleKinesisActionPartitionKey = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-kinesis.html#cfn-iot-kinesis-rolearn
ittrkaRoleArn :: Lens' IoTTopicRuleKinesisAction (Val Text)
ittrkaRoleArn = lens _ioTTopicRuleKinesisActionRoleArn (\s a -> s { _ioTTopicRuleKinesisActionRoleArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-kinesis.html#cfn-iot-kinesis-streamname
ittrkaStreamName :: Lens' IoTTopicRuleKinesisAction (Val Text)
ittrkaStreamName = lens _ioTTopicRuleKinesisActionStreamName (\s a -> s { _ioTTopicRuleKinesisActionStreamName = a })
