
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-iotanalyticsaction.html

module Stratosphere.ResourceProperties.IoTTopicRuleIotAnalyticsAction where

import Stratosphere.ResourceImports


-- | Full data type definition for IoTTopicRuleIotAnalyticsAction. See
-- 'ioTTopicRuleIotAnalyticsAction' for a more convenient constructor.
data IoTTopicRuleIotAnalyticsAction =
  IoTTopicRuleIotAnalyticsAction
  { _ioTTopicRuleIotAnalyticsActionChannelName :: Val Text
  , _ioTTopicRuleIotAnalyticsActionRoleArn :: Val Text
  } deriving (Show, Eq)

instance ToJSON IoTTopicRuleIotAnalyticsAction where
  toJSON IoTTopicRuleIotAnalyticsAction{..} =
    object $
    catMaybes
    [ (Just . ("ChannelName",) . toJSON) _ioTTopicRuleIotAnalyticsActionChannelName
    , (Just . ("RoleArn",) . toJSON) _ioTTopicRuleIotAnalyticsActionRoleArn
    ]

-- | Constructor for 'IoTTopicRuleIotAnalyticsAction' containing required
-- fields as arguments.
ioTTopicRuleIotAnalyticsAction
  :: Val Text -- ^ 'ittriaaChannelName'
  -> Val Text -- ^ 'ittriaaRoleArn'
  -> IoTTopicRuleIotAnalyticsAction
ioTTopicRuleIotAnalyticsAction channelNamearg roleArnarg =
  IoTTopicRuleIotAnalyticsAction
  { _ioTTopicRuleIotAnalyticsActionChannelName = channelNamearg
  , _ioTTopicRuleIotAnalyticsActionRoleArn = roleArnarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-iotanalyticsaction.html#cfn-iot-topicrule-iotanalyticsaction-channelname
ittriaaChannelName :: Lens' IoTTopicRuleIotAnalyticsAction (Val Text)
ittriaaChannelName = lens _ioTTopicRuleIotAnalyticsActionChannelName (\s a -> s { _ioTTopicRuleIotAnalyticsActionChannelName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-iotanalyticsaction.html#cfn-iot-topicrule-iotanalyticsaction-rolearn
ittriaaRoleArn :: Lens' IoTTopicRuleIotAnalyticsAction (Val Text)
ittriaaRoleArn = lens _ioTTopicRuleIotAnalyticsActionRoleArn (\s a -> s { _ioTTopicRuleIotAnalyticsActionRoleArn = a })
