{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-as-lifecyclehook.html

module Stratosphere.Resources.AutoScalingLifecycleHook where

import Stratosphere.ResourceImports


-- | Full data type definition for AutoScalingLifecycleHook. See
-- 'autoScalingLifecycleHook' for a more convenient constructor.
data AutoScalingLifecycleHook =
  AutoScalingLifecycleHook
  { _autoScalingLifecycleHookAutoScalingGroupName :: Val Text
  , _autoScalingLifecycleHookDefaultResult :: Maybe (Val Text)
  , _autoScalingLifecycleHookHeartbeatTimeout :: Maybe (Val Integer)
  , _autoScalingLifecycleHookLifecycleHookName :: Maybe (Val Text)
  , _autoScalingLifecycleHookLifecycleTransition :: Val Text
  , _autoScalingLifecycleHookNotificationMetadata :: Maybe (Val Text)
  , _autoScalingLifecycleHookNotificationTargetARN :: Maybe (Val Text)
  , _autoScalingLifecycleHookRoleARN :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToResourceProperties AutoScalingLifecycleHook where
  toResourceProperties AutoScalingLifecycleHook{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::AutoScaling::LifecycleHook"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("AutoScalingGroupName",) . toJSON) _autoScalingLifecycleHookAutoScalingGroupName
        , fmap (("DefaultResult",) . toJSON) _autoScalingLifecycleHookDefaultResult
        , fmap (("HeartbeatTimeout",) . toJSON) _autoScalingLifecycleHookHeartbeatTimeout
        , fmap (("LifecycleHookName",) . toJSON) _autoScalingLifecycleHookLifecycleHookName
        , (Just . ("LifecycleTransition",) . toJSON) _autoScalingLifecycleHookLifecycleTransition
        , fmap (("NotificationMetadata",) . toJSON) _autoScalingLifecycleHookNotificationMetadata
        , fmap (("NotificationTargetARN",) . toJSON) _autoScalingLifecycleHookNotificationTargetARN
        , fmap (("RoleARN",) . toJSON) _autoScalingLifecycleHookRoleARN
        ]
    }

-- | Constructor for 'AutoScalingLifecycleHook' containing required fields as
-- arguments.
autoScalingLifecycleHook
  :: Val Text -- ^ 'aslhAutoScalingGroupName'
  -> Val Text -- ^ 'aslhLifecycleTransition'
  -> AutoScalingLifecycleHook
autoScalingLifecycleHook autoScalingGroupNamearg lifecycleTransitionarg =
  AutoScalingLifecycleHook
  { _autoScalingLifecycleHookAutoScalingGroupName = autoScalingGroupNamearg
  , _autoScalingLifecycleHookDefaultResult = Nothing
  , _autoScalingLifecycleHookHeartbeatTimeout = Nothing
  , _autoScalingLifecycleHookLifecycleHookName = Nothing
  , _autoScalingLifecycleHookLifecycleTransition = lifecycleTransitionarg
  , _autoScalingLifecycleHookNotificationMetadata = Nothing
  , _autoScalingLifecycleHookNotificationTargetARN = Nothing
  , _autoScalingLifecycleHookRoleARN = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-as-lifecyclehook.html#cfn-as-lifecyclehook-autoscalinggroupname
aslhAutoScalingGroupName :: Lens' AutoScalingLifecycleHook (Val Text)
aslhAutoScalingGroupName = lens _autoScalingLifecycleHookAutoScalingGroupName (\s a -> s { _autoScalingLifecycleHookAutoScalingGroupName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-as-lifecyclehook.html#cfn-as-lifecyclehook-defaultresult
aslhDefaultResult :: Lens' AutoScalingLifecycleHook (Maybe (Val Text))
aslhDefaultResult = lens _autoScalingLifecycleHookDefaultResult (\s a -> s { _autoScalingLifecycleHookDefaultResult = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-as-lifecyclehook.html#cfn-as-lifecyclehook-heartbeattimeout
aslhHeartbeatTimeout :: Lens' AutoScalingLifecycleHook (Maybe (Val Integer))
aslhHeartbeatTimeout = lens _autoScalingLifecycleHookHeartbeatTimeout (\s a -> s { _autoScalingLifecycleHookHeartbeatTimeout = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-as-lifecyclehook.html#cfn-autoscaling-lifecyclehook-lifecyclehookname
aslhLifecycleHookName :: Lens' AutoScalingLifecycleHook (Maybe (Val Text))
aslhLifecycleHookName = lens _autoScalingLifecycleHookLifecycleHookName (\s a -> s { _autoScalingLifecycleHookLifecycleHookName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-as-lifecyclehook.html#cfn-as-lifecyclehook-lifecycletransition
aslhLifecycleTransition :: Lens' AutoScalingLifecycleHook (Val Text)
aslhLifecycleTransition = lens _autoScalingLifecycleHookLifecycleTransition (\s a -> s { _autoScalingLifecycleHookLifecycleTransition = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-as-lifecyclehook.html#cfn-as-lifecyclehook-notificationmetadata
aslhNotificationMetadata :: Lens' AutoScalingLifecycleHook (Maybe (Val Text))
aslhNotificationMetadata = lens _autoScalingLifecycleHookNotificationMetadata (\s a -> s { _autoScalingLifecycleHookNotificationMetadata = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-as-lifecyclehook.html#cfn-as-lifecyclehook-notificationtargetarn
aslhNotificationTargetARN :: Lens' AutoScalingLifecycleHook (Maybe (Val Text))
aslhNotificationTargetARN = lens _autoScalingLifecycleHookNotificationTargetARN (\s a -> s { _autoScalingLifecycleHookNotificationTargetARN = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-as-lifecyclehook.html#cfn-as-lifecyclehook-rolearn
aslhRoleARN :: Lens' AutoScalingLifecycleHook (Maybe (Val Text))
aslhRoleARN = lens _autoScalingLifecycleHookRoleARN (\s a -> s { _autoScalingLifecycleHookRoleARN = a })
