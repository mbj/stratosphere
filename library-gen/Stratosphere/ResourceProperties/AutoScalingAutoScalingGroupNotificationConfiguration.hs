{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-notificationconfigurations.html

module Stratosphere.ResourceProperties.AutoScalingAutoScalingGroupNotificationConfiguration where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- AutoScalingAutoScalingGroupNotificationConfiguration. See
-- 'autoScalingAutoScalingGroupNotificationConfiguration' for a more
-- convenient constructor.
data AutoScalingAutoScalingGroupNotificationConfiguration =
  AutoScalingAutoScalingGroupNotificationConfiguration
  { _autoScalingAutoScalingGroupNotificationConfigurationNotificationTypes :: Maybe (ValList Text)
  , _autoScalingAutoScalingGroupNotificationConfigurationTopicARN :: Val Text
  } deriving (Show, Eq)

instance ToJSON AutoScalingAutoScalingGroupNotificationConfiguration where
  toJSON AutoScalingAutoScalingGroupNotificationConfiguration{..} =
    object $
    catMaybes
    [ fmap (("NotificationTypes",) . toJSON) _autoScalingAutoScalingGroupNotificationConfigurationNotificationTypes
    , (Just . ("TopicARN",) . toJSON) _autoScalingAutoScalingGroupNotificationConfigurationTopicARN
    ]

instance FromJSON AutoScalingAutoScalingGroupNotificationConfiguration where
  parseJSON (Object obj) =
    AutoScalingAutoScalingGroupNotificationConfiguration <$>
      (obj .:? "NotificationTypes") <*>
      (obj .: "TopicARN")
  parseJSON _ = mempty

-- | Constructor for 'AutoScalingAutoScalingGroupNotificationConfiguration'
-- containing required fields as arguments.
autoScalingAutoScalingGroupNotificationConfiguration
  :: Val Text -- ^ 'asasgncTopicARN'
  -> AutoScalingAutoScalingGroupNotificationConfiguration
autoScalingAutoScalingGroupNotificationConfiguration topicARNarg =
  AutoScalingAutoScalingGroupNotificationConfiguration
  { _autoScalingAutoScalingGroupNotificationConfigurationNotificationTypes = Nothing
  , _autoScalingAutoScalingGroupNotificationConfigurationTopicARN = topicARNarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-notificationconfigurations.html#cfn-as-group-notificationconfigurations-notificationtypes
asasgncNotificationTypes :: Lens' AutoScalingAutoScalingGroupNotificationConfiguration (Maybe (ValList Text))
asasgncNotificationTypes = lens _autoScalingAutoScalingGroupNotificationConfigurationNotificationTypes (\s a -> s { _autoScalingAutoScalingGroupNotificationConfigurationNotificationTypes = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-notificationconfigurations.html#cfn-autoscaling-autoscalinggroup-notificationconfigurations-topicarn
asasgncTopicARN :: Lens' AutoScalingAutoScalingGroupNotificationConfiguration (Val Text)
asasgncTopicARN = lens _autoScalingAutoScalingGroupNotificationConfigurationTopicARN (\s a -> s { _autoScalingAutoScalingGroupNotificationConfigurationTopicARN = a })
