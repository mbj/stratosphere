
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-kinesisaction.html

module Stratosphere.ResourceProperties.IoTTopicRuleKinesisAction where

import Stratosphere.ResourceImports


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
    [ fmap (("PartitionKey",) . toJSON) _ioTTopicRuleKinesisActionPartitionKey
    , (Just . ("RoleArn",) . toJSON) _ioTTopicRuleKinesisActionRoleArn
    , (Just . ("StreamName",) . toJSON) _ioTTopicRuleKinesisActionStreamName
    ]

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

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-kinesisaction.html#cfn-iot-topicrule-kinesisaction-partitionkey
ittrkaPartitionKey :: Lens' IoTTopicRuleKinesisAction (Maybe (Val Text))
ittrkaPartitionKey = lens _ioTTopicRuleKinesisActionPartitionKey (\s a -> s { _ioTTopicRuleKinesisActionPartitionKey = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-kinesisaction.html#cfn-iot-topicrule-kinesisaction-rolearn
ittrkaRoleArn :: Lens' IoTTopicRuleKinesisAction (Val Text)
ittrkaRoleArn = lens _ioTTopicRuleKinesisActionRoleArn (\s a -> s { _ioTTopicRuleKinesisActionRoleArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-kinesisaction.html#cfn-iot-topicrule-kinesisaction-streamname
ittrkaStreamName :: Lens' IoTTopicRuleKinesisAction (Val Text)
ittrkaStreamName = lens _ioTTopicRuleKinesisActionStreamName (\s a -> s { _ioTTopicRuleKinesisActionStreamName = a })
