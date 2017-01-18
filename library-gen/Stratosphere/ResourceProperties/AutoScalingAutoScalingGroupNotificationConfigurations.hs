{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-notificationconfigurations.html

module Stratosphere.ResourceProperties.AutoScalingAutoScalingGroupNotificationConfigurations where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for
-- | AutoScalingAutoScalingGroupNotificationConfigurations. See
-- | 'autoScalingAutoScalingGroupNotificationConfigurations' for a more
-- | convenient constructor.
data AutoScalingAutoScalingGroupNotificationConfigurations =
  AutoScalingAutoScalingGroupNotificationConfigurations
  { _autoScalingAutoScalingGroupNotificationConfigurationsNotificationTypes :: Maybe [Val Text]
  , _autoScalingAutoScalingGroupNotificationConfigurationsTopicARN :: Val Text
  } deriving (Show, Eq, Generic)

instance ToJSON AutoScalingAutoScalingGroupNotificationConfigurations where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 54, omitNothingFields = True }

instance FromJSON AutoScalingAutoScalingGroupNotificationConfigurations where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 54, omitNothingFields = True }

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
