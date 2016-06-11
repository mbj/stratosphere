{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | The NotificationConfigurations property is an embedded property of the
-- AWS::AutoScaling::AutoScalingGroup resource that specifies the events for
-- which the Auto Scaling group sends notifications.

module Stratosphere.ResourceProperties.AutoScalingNotificationConfigurations where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for AutoScalingNotificationConfigurations. See
-- 'autoScalingNotificationConfigurations' for a more convenient constructor.
data AutoScalingNotificationConfigurations =
  AutoScalingNotificationConfigurations
  { _autoScalingNotificationConfigurationsNotificationTypes :: [Val Text]
  , _autoScalingNotificationConfigurationsTopicARN :: Val Text
  } deriving (Show, Generic)

instance ToJSON AutoScalingNotificationConfigurations where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 38, omitNothingFields = True }

instance FromJSON AutoScalingNotificationConfigurations where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 38, omitNothingFields = True }

-- | Constructor for 'AutoScalingNotificationConfigurations' containing
-- required fields as arguments.
autoScalingNotificationConfigurations
  :: [Val Text] -- ^ 'asncNotificationTypes'
  -> Val Text -- ^ 'asncTopicARN'
  -> AutoScalingNotificationConfigurations
autoScalingNotificationConfigurations notificationTypesarg topicARNarg =
  AutoScalingNotificationConfigurations
  { _autoScalingNotificationConfigurationsNotificationTypes = notificationTypesarg
  , _autoScalingNotificationConfigurationsTopicARN = topicARNarg
  }

-- | A list of event types that trigger a notification. Event types can
-- include any of the following types: autoscaling:EC2_INSTANCE_LAUNCH,
-- autoscaling:EC2_INSTANCE_LAUNCH_ERROR, autoscaling:EC2_INSTANCE_TERMINATE,
-- autoscaling:EC2_INSTANCE_TERMINATE_ERROR, and
-- autoscaling:TEST_NOTIFICATION. For more information about event types, see
-- DescribeAutoScalingNotificationTypes in the Auto Scaling API Reference.
asncNotificationTypes :: Lens' AutoScalingNotificationConfigurations [Val Text]
asncNotificationTypes = lens _autoScalingNotificationConfigurationsNotificationTypes (\s a -> s { _autoScalingNotificationConfigurationsNotificationTypes = a })

-- | The Amazon Resource Name (ARN) of the Amazon Simple Notification Service
-- (SNS) topic.
asncTopicARN :: Lens' AutoScalingNotificationConfigurations (Val Text)
asncTopicARN = lens _autoScalingNotificationConfigurationsTopicARN (\s a -> s { _autoScalingNotificationConfigurationsTopicARN = a })