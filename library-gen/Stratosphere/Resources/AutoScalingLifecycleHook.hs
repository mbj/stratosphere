{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-as-lifecyclehook.html

module Stratosphere.Resources.AutoScalingLifecycleHook where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for AutoScalingLifecycleHook. See
-- | 'autoScalingLifecycleHook' for a more convenient constructor.
data AutoScalingLifecycleHook =
  AutoScalingLifecycleHook
  { _autoScalingLifecycleHookAutoScalingGroupName :: Val Text
  , _autoScalingLifecycleHookDefaultResult :: Maybe (Val Text)
  , _autoScalingLifecycleHookHeartbeatTimeout :: Maybe (Val Integer')
  , _autoScalingLifecycleHookLifecycleTransition :: Val Text
  , _autoScalingLifecycleHookNotificationMetadata :: Maybe (Val Text)
  , _autoScalingLifecycleHookNotificationTargetARN :: Val Text
  , _autoScalingLifecycleHookRoleARN :: Val Text
  } deriving (Show, Generic)

instance ToJSON AutoScalingLifecycleHook where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 25, omitNothingFields = True }

instance FromJSON AutoScalingLifecycleHook where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 25, omitNothingFields = True }

-- | Constructor for 'AutoScalingLifecycleHook' containing required fields as
-- | arguments.
autoScalingLifecycleHook
  :: Val Text -- ^ 'aslhAutoScalingGroupName'
  -> Val Text -- ^ 'aslhLifecycleTransition'
  -> Val Text -- ^ 'aslhNotificationTargetARN'
  -> Val Text -- ^ 'aslhRoleARN'
  -> AutoScalingLifecycleHook
autoScalingLifecycleHook autoScalingGroupNamearg lifecycleTransitionarg notificationTargetARNarg roleARNarg =
  AutoScalingLifecycleHook
  { _autoScalingLifecycleHookAutoScalingGroupName = autoScalingGroupNamearg
  , _autoScalingLifecycleHookDefaultResult = Nothing
  , _autoScalingLifecycleHookHeartbeatTimeout = Nothing
  , _autoScalingLifecycleHookLifecycleTransition = lifecycleTransitionarg
  , _autoScalingLifecycleHookNotificationMetadata = Nothing
  , _autoScalingLifecycleHookNotificationTargetARN = notificationTargetARNarg
  , _autoScalingLifecycleHookRoleARN = roleARNarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-as-lifecyclehook.html#cfn-as-lifecyclehook-autoscalinggroupname
aslhAutoScalingGroupName :: Lens' AutoScalingLifecycleHook (Val Text)
aslhAutoScalingGroupName = lens _autoScalingLifecycleHookAutoScalingGroupName (\s a -> s { _autoScalingLifecycleHookAutoScalingGroupName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-as-lifecyclehook.html#cfn-as-lifecyclehook-defaultresult
aslhDefaultResult :: Lens' AutoScalingLifecycleHook (Maybe (Val Text))
aslhDefaultResult = lens _autoScalingLifecycleHookDefaultResult (\s a -> s { _autoScalingLifecycleHookDefaultResult = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-as-lifecyclehook.html#cfn-as-lifecyclehook-heartbeattimeout
aslhHeartbeatTimeout :: Lens' AutoScalingLifecycleHook (Maybe (Val Integer'))
aslhHeartbeatTimeout = lens _autoScalingLifecycleHookHeartbeatTimeout (\s a -> s { _autoScalingLifecycleHookHeartbeatTimeout = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-as-lifecyclehook.html#cfn-as-lifecyclehook-lifecycletransition
aslhLifecycleTransition :: Lens' AutoScalingLifecycleHook (Val Text)
aslhLifecycleTransition = lens _autoScalingLifecycleHookLifecycleTransition (\s a -> s { _autoScalingLifecycleHookLifecycleTransition = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-as-lifecyclehook.html#cfn-as-lifecyclehook-notificationmetadata
aslhNotificationMetadata :: Lens' AutoScalingLifecycleHook (Maybe (Val Text))
aslhNotificationMetadata = lens _autoScalingLifecycleHookNotificationMetadata (\s a -> s { _autoScalingLifecycleHookNotificationMetadata = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-as-lifecyclehook.html#cfn-as-lifecyclehook-notificationtargetarn
aslhNotificationTargetARN :: Lens' AutoScalingLifecycleHook (Val Text)
aslhNotificationTargetARN = lens _autoScalingLifecycleHookNotificationTargetARN (\s a -> s { _autoScalingLifecycleHookNotificationTargetARN = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-as-lifecyclehook.html#cfn-as-lifecyclehook-rolearn
aslhRoleARN :: Lens' AutoScalingLifecycleHook (Val Text)
aslhRoleARN = lens _autoScalingLifecycleHookRoleARN (\s a -> s { _autoScalingLifecycleHookRoleARN = a })
