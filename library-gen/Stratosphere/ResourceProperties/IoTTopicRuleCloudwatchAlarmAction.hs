{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-cloudwatchalarm.html

module Stratosphere.ResourceProperties.IoTTopicRuleCloudwatchAlarmAction where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for IoTTopicRuleCloudwatchAlarmAction. See
-- | 'ioTTopicRuleCloudwatchAlarmAction' for a more convenient constructor.
data IoTTopicRuleCloudwatchAlarmAction =
  IoTTopicRuleCloudwatchAlarmAction
  { _ioTTopicRuleCloudwatchAlarmActionAlarmName :: Val Text
  , _ioTTopicRuleCloudwatchAlarmActionRoleArn :: Val Text
  , _ioTTopicRuleCloudwatchAlarmActionStateReason :: Val Text
  , _ioTTopicRuleCloudwatchAlarmActionStateValue :: Val Text
  } deriving (Show, Generic)

instance ToJSON IoTTopicRuleCloudwatchAlarmAction where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 34, omitNothingFields = True }

instance FromJSON IoTTopicRuleCloudwatchAlarmAction where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 34, omitNothingFields = True }

-- | Constructor for 'IoTTopicRuleCloudwatchAlarmAction' containing required
-- | fields as arguments.
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

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-cloudwatchalarm.html#cfn-iot-cloudwatchalarm-alarmname
ittrcaaAlarmName :: Lens' IoTTopicRuleCloudwatchAlarmAction (Val Text)
ittrcaaAlarmName = lens _ioTTopicRuleCloudwatchAlarmActionAlarmName (\s a -> s { _ioTTopicRuleCloudwatchAlarmActionAlarmName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-cloudwatchalarm.html#cfn-iot-cloudwatchalarm-rolearn
ittrcaaRoleArn :: Lens' IoTTopicRuleCloudwatchAlarmAction (Val Text)
ittrcaaRoleArn = lens _ioTTopicRuleCloudwatchAlarmActionRoleArn (\s a -> s { _ioTTopicRuleCloudwatchAlarmActionRoleArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-cloudwatchalarm.html#cfn-iot-cloudwatchalarm-statereason
ittrcaaStateReason :: Lens' IoTTopicRuleCloudwatchAlarmAction (Val Text)
ittrcaaStateReason = lens _ioTTopicRuleCloudwatchAlarmActionStateReason (\s a -> s { _ioTTopicRuleCloudwatchAlarmActionStateReason = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-cloudwatchalarm.html#cfn-iot-cloudwatchalarm-statevalue
ittrcaaStateValue :: Lens' IoTTopicRuleCloudwatchAlarmAction (Val Text)
ittrcaaStateValue = lens _ioTTopicRuleCloudwatchAlarmActionStateValue (\s a -> s { _ioTTopicRuleCloudwatchAlarmActionStateValue = a })
