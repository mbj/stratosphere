{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | Use AWS::AutoScaling::LifecycleHook to control the state of an instance
-- in an Auto Scaling group after it is launched or terminated. When you use a
-- lifecycle hook, the Auto Scaling group either pauses the instance after it
-- is launched (before it is put into service) or pauses the instance as it is
-- terminated (before it is fully terminated). For more information, see
-- Examples of How to Use Lifecycle Hooks in the Auto Scaling User Guide.

module Stratosphere.Resources.LifecycleHook where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for LifecycleHook. See 'lifecycleHook' for a
-- more convenient constructor.
data LifecycleHook =
  LifecycleHook
  { _lifecycleHookAutoScalingGroupName :: Val Text
  , _lifecycleHookDefaultResult :: Maybe (Val Text)
  , _lifecycleHookHeartbeatTimeout :: Maybe (Val Integer')
  , _lifecycleHookLifecycleTransition :: Val Text
  , _lifecycleHookNotificationMetadata :: Maybe (Val Text)
  , _lifecycleHookNotificationTargetARN :: Val Text
  , _lifecycleHookRoleARN :: Val Text
  } deriving (Show, Generic)

instance ToJSON LifecycleHook where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 14, omitNothingFields = True }

instance FromJSON LifecycleHook where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 14, omitNothingFields = True }

-- | Constructor for 'LifecycleHook' containing required fields as arguments.
lifecycleHook
  :: Val Text -- ^ 'lhAutoScalingGroupName'
  -> Val Text -- ^ 'lhLifecycleTransition'
  -> Val Text -- ^ 'lhNotificationTargetARN'
  -> Val Text -- ^ 'lhRoleARN'
  -> LifecycleHook
lifecycleHook autoScalingGroupNamearg lifecycleTransitionarg notificationTargetARNarg roleARNarg =
  LifecycleHook
  { _lifecycleHookAutoScalingGroupName = autoScalingGroupNamearg
  , _lifecycleHookDefaultResult = Nothing
  , _lifecycleHookHeartbeatTimeout = Nothing
  , _lifecycleHookLifecycleTransition = lifecycleTransitionarg
  , _lifecycleHookNotificationMetadata = Nothing
  , _lifecycleHookNotificationTargetARN = notificationTargetARNarg
  , _lifecycleHookRoleARN = roleARNarg
  }

-- | The name of the Auto Scaling group for the lifecycle hook.
lhAutoScalingGroupName :: Lens' LifecycleHook (Val Text)
lhAutoScalingGroupName = lens _lifecycleHookAutoScalingGroupName (\s a -> s { _lifecycleHookAutoScalingGroupName = a })

-- | The action the Auto Scaling group takes when the lifecycle hook timeout
-- elapses or if an unexpected failure occurs.
lhDefaultResult :: Lens' LifecycleHook (Maybe (Val Text))
lhDefaultResult = lens _lifecycleHookDefaultResult (\s a -> s { _lifecycleHookDefaultResult = a })

-- | The amount of time that can elapse before the lifecycle hook times out.
-- When the lifecycle hook times out, Auto Scaling performs the action that
-- you specified in the DefaultResult property.
lhHeartbeatTimeout :: Lens' LifecycleHook (Maybe (Val Integer'))
lhHeartbeatTimeout = lens _lifecycleHookHeartbeatTimeout (\s a -> s { _lifecycleHookHeartbeatTimeout = a })

-- | The state of the Amazon EC2 instance to which you want to attach the
-- lifecycle hook.
lhLifecycleTransition :: Lens' LifecycleHook (Val Text)
lhLifecycleTransition = lens _lifecycleHookLifecycleTransition (\s a -> s { _lifecycleHookLifecycleTransition = a })

-- | Additional information that you want to include when Auto Scaling sends a
-- message to the notification target.
lhNotificationMetadata :: Lens' LifecycleHook (Maybe (Val Text))
lhNotificationMetadata = lens _lifecycleHookNotificationMetadata (\s a -> s { _lifecycleHookNotificationMetadata = a })

-- | The Amazon resource name (ARN) of the notification target that Auto
-- Scaling uses to notify you when an instance is in the transition state for
-- the lifecycle hook. You can specify an Amazon SQS queue or an Amazon SNS
-- topic. The notification message includes the following information:
-- lifecycle action token, user account ID, Auto Scaling group name, lifecycle
-- hook name, instance ID, lifecycle transition, and notification metadata.
lhNotificationTargetARN :: Lens' LifecycleHook (Val Text)
lhNotificationTargetARN = lens _lifecycleHookNotificationTargetARN (\s a -> s { _lifecycleHookNotificationTargetARN = a })

-- | The ARN of the IAM role that allows the Auto Scaling group to publish to
-- the specified notification target. The role requires permissions to Amazon
-- SNS and Amazon SQS.
lhRoleARN :: Lens' LifecycleHook (Val Text)
lhRoleARN = lens _lifecycleHookRoleARN (\s a -> s { _lifecycleHookRoleARN = a })