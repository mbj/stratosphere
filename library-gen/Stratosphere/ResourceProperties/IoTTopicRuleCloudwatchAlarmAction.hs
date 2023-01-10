
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-cloudwatchalarmaction.html

module Stratosphere.ResourceProperties.IoTTopicRuleCloudwatchAlarmAction where

import Stratosphere.ResourceImports


-- | Full data type definition for IoTTopicRuleCloudwatchAlarmAction. See
-- 'ioTTopicRuleCloudwatchAlarmAction' for a more convenient constructor.
data IoTTopicRuleCloudwatchAlarmAction =
  IoTTopicRuleCloudwatchAlarmAction
  { _ioTTopicRuleCloudwatchAlarmActionAlarmName :: Val Text
  , _ioTTopicRuleCloudwatchAlarmActionRoleArn :: Val Text
  , _ioTTopicRuleCloudwatchAlarmActionStateReason :: Val Text
  , _ioTTopicRuleCloudwatchAlarmActionStateValue :: Val Text
  } deriving (Show, Eq)

instance ToJSON IoTTopicRuleCloudwatchAlarmAction where
  toJSON IoTTopicRuleCloudwatchAlarmAction{..} =
    object $
    catMaybes
    [ (Just . ("AlarmName",) . toJSON) _ioTTopicRuleCloudwatchAlarmActionAlarmName
    , (Just . ("RoleArn",) . toJSON) _ioTTopicRuleCloudwatchAlarmActionRoleArn
    , (Just . ("StateReason",) . toJSON) _ioTTopicRuleCloudwatchAlarmActionStateReason
    , (Just . ("StateValue",) . toJSON) _ioTTopicRuleCloudwatchAlarmActionStateValue
    ]

-- | Constructor for 'IoTTopicRuleCloudwatchAlarmAction' containing required
-- fields as arguments.
ioTTopicRuleCloudwatchAlarmAction
  :: Val Text -- ^ 'ittrcaaAlarmName'
  -> Val Text -- ^ 'ittrcaaRoleArn'
  -> Val Text -- ^ 'ittrcaaStateReason'
  -> Val Text -- ^ 'ittrcaaStateValue'
  -> IoTTopicRuleCloudwatchAlarmAction
ioTTopicRuleCloudwatchAlarmAction alarmNamearg roleArnarg stateReasonarg stateValuearg =
  IoTTopicRuleCloudwatchAlarmAction
  { _ioTTopicRuleCloudwatchAlarmActionAlarmName = alarmNamearg
  , _ioTTopicRuleCloudwatchAlarmActionRoleArn = roleArnarg
  , _ioTTopicRuleCloudwatchAlarmActionStateReason = stateReasonarg
  , _ioTTopicRuleCloudwatchAlarmActionStateValue = stateValuearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-cloudwatchalarmaction.html#cfn-iot-topicrule-cloudwatchalarmaction-alarmname
ittrcaaAlarmName :: Lens' IoTTopicRuleCloudwatchAlarmAction (Val Text)
ittrcaaAlarmName = lens _ioTTopicRuleCloudwatchAlarmActionAlarmName (\s a -> s { _ioTTopicRuleCloudwatchAlarmActionAlarmName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-cloudwatchalarmaction.html#cfn-iot-topicrule-cloudwatchalarmaction-rolearn
ittrcaaRoleArn :: Lens' IoTTopicRuleCloudwatchAlarmAction (Val Text)
ittrcaaRoleArn = lens _ioTTopicRuleCloudwatchAlarmActionRoleArn (\s a -> s { _ioTTopicRuleCloudwatchAlarmActionRoleArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-cloudwatchalarmaction.html#cfn-iot-topicrule-cloudwatchalarmaction-statereason
ittrcaaStateReason :: Lens' IoTTopicRuleCloudwatchAlarmAction (Val Text)
ittrcaaStateReason = lens _ioTTopicRuleCloudwatchAlarmActionStateReason (\s a -> s { _ioTTopicRuleCloudwatchAlarmActionStateReason = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-cloudwatchalarmaction.html#cfn-iot-topicrule-cloudwatchalarmaction-statevalue
ittrcaaStateValue :: Lens' IoTTopicRuleCloudwatchAlarmAction (Val Text)
ittrcaaStateValue = lens _ioTTopicRuleCloudwatchAlarmActionStateValue (\s a -> s { _ioTTopicRuleCloudwatchAlarmActionStateValue = a })
