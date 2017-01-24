{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-notificationconfigurations.html

module Stratosphere.ResourceProperties.AutoScalingAutoScalingGroupNotificationConfigurations where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for
-- | AutoScalingAutoScalingGroupNotificationConfigurations. See
-- | 'autoScalingAutoScalingGroupNotificationConfigurations' for a more
-- | convenient constructor.
data AutoScalingAutoScalingGroupNotificationConfigurations =
  AutoScalingAutoScalingGroupNotificationConfigurations
  { _autoScalingAutoScalingGroupNotificationConfigurationsNotificationTypes :: Maybe [Val Text]
  , _autoScalingAutoScalingGroupNotificationConfigurationsTopicARN :: Val Text
  } deriving (Show, Eq)

instance ToJSON AutoScalingAutoScalingGroupNotificationConfigurations where
  toJSON AutoScalingAutoScalingGroupNotificationConfigurations{..} =
    object
    [ "NotificationTypes" .= _autoScalingAutoScalingGroupNotificationConfigurationsNotificationTypes
    , "TopicARN" .= _autoScalingAutoScalingGroupNotificationConfigurationsTopicARN
    ]

instance FromJSON AutoScalingAutoScalingGroupNotificationConfigurations where
  parseJSON (Object obj) =
    AutoScalingAutoScalingGroupNotificationConfigurations <$>
      obj .: "NotificationTypes" <*>
      obj .: "TopicARN"
  parseJSON _ = mempty

-- | Constructor for 'AutoScalingAutoScalingGroupNotificationConfigurations'
-- | containing required fields as arguments.
autoScalingAutoScalingGroupNotificationConfigurations
  :: Val Text -- ^ 'asasgncTopicARN'
  -> AutoScalingAutoScalingGroupNotificationConfigurations
autoScalingAutoScalingGroupNotificationConfigurations topicARNarg =
  AutoScalingAutoScalingGroupNotificationConfigurations
  { _autoScalingAutoScalingGroupNotificationConfigurationsNotificationTypes = Nothing
  , _autoScalingAutoScalingGroupNotificationConfigurationsTopicARN = topicARNarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-notificationconfigurations.html#cfn-as-group-notificationconfigurations-notificationtypes
asasgncNotificationTypes :: Lens' AutoScalingAutoScalingGroupNotificationConfigurations (Maybe [Val Text])
asasgncNotificationTypes = lens _autoScalingAutoScalingGroupNotificationConfigurationsNotificationTypes (\s a -> s { _autoScalingAutoScalingGroupNotificationConfigurationsNotificationTypes = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-notificationconfigurations.html#cfn-autoscaling-autoscalinggroup-notificationconfigurations-topicarn
asasgncTopicARN :: Lens' AutoScalingAutoScalingGroupNotificationConfigurations (Val Text)
asasgncTopicARN = lens _autoScalingAutoScalingGroupNotificationConfigurationsTopicARN (\s a -> s { _autoScalingAutoScalingGroupNotificationConfigurationsTopicARN = a })
