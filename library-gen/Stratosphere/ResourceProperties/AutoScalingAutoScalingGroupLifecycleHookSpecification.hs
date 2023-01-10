
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-lifecyclehookspecification.html

module Stratosphere.ResourceProperties.AutoScalingAutoScalingGroupLifecycleHookSpecification where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- AutoScalingAutoScalingGroupLifecycleHookSpecification. See
-- 'autoScalingAutoScalingGroupLifecycleHookSpecification' for a more
-- convenient constructor.
data AutoScalingAutoScalingGroupLifecycleHookSpecification =
  AutoScalingAutoScalingGroupLifecycleHookSpecification
  { _autoScalingAutoScalingGroupLifecycleHookSpecificationDefaultResult :: Maybe (Val Text)
  , _autoScalingAutoScalingGroupLifecycleHookSpecificationHeartbeatTimeout :: Maybe (Val Integer)
  , _autoScalingAutoScalingGroupLifecycleHookSpecificationLifecycleHookName :: Val Text
  , _autoScalingAutoScalingGroupLifecycleHookSpecificationLifecycleTransition :: Val Text
  , _autoScalingAutoScalingGroupLifecycleHookSpecificationNotificationMetadata :: Maybe (Val Text)
  , _autoScalingAutoScalingGroupLifecycleHookSpecificationNotificationTargetARN :: Maybe (Val Text)
  , _autoScalingAutoScalingGroupLifecycleHookSpecificationRoleARN :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON AutoScalingAutoScalingGroupLifecycleHookSpecification where
  toJSON AutoScalingAutoScalingGroupLifecycleHookSpecification{..} =
    object $
    catMaybes
    [ fmap (("DefaultResult",) . toJSON) _autoScalingAutoScalingGroupLifecycleHookSpecificationDefaultResult
    , fmap (("HeartbeatTimeout",) . toJSON) _autoScalingAutoScalingGroupLifecycleHookSpecificationHeartbeatTimeout
    , (Just . ("LifecycleHookName",) . toJSON) _autoScalingAutoScalingGroupLifecycleHookSpecificationLifecycleHookName
    , (Just . ("LifecycleTransition",) . toJSON) _autoScalingAutoScalingGroupLifecycleHookSpecificationLifecycleTransition
    , fmap (("NotificationMetadata",) . toJSON) _autoScalingAutoScalingGroupLifecycleHookSpecificationNotificationMetadata
    , fmap (("NotificationTargetARN",) . toJSON) _autoScalingAutoScalingGroupLifecycleHookSpecificationNotificationTargetARN
    , fmap (("RoleARN",) . toJSON) _autoScalingAutoScalingGroupLifecycleHookSpecificationRoleARN
    ]

-- | Constructor for 'AutoScalingAutoScalingGroupLifecycleHookSpecification'
-- containing required fields as arguments.
autoScalingAutoScalingGroupLifecycleHookSpecification
  :: Val Text -- ^ 'asasglhsLifecycleHookName'
  -> Val Text -- ^ 'asasglhsLifecycleTransition'
  -> AutoScalingAutoScalingGroupLifecycleHookSpecification
autoScalingAutoScalingGroupLifecycleHookSpecification lifecycleHookNamearg lifecycleTransitionarg =
  AutoScalingAutoScalingGroupLifecycleHookSpecification
  { _autoScalingAutoScalingGroupLifecycleHookSpecificationDefaultResult = Nothing
  , _autoScalingAutoScalingGroupLifecycleHookSpecificationHeartbeatTimeout = Nothing
  , _autoScalingAutoScalingGroupLifecycleHookSpecificationLifecycleHookName = lifecycleHookNamearg
  , _autoScalingAutoScalingGroupLifecycleHookSpecificationLifecycleTransition = lifecycleTransitionarg
  , _autoScalingAutoScalingGroupLifecycleHookSpecificationNotificationMetadata = Nothing
  , _autoScalingAutoScalingGroupLifecycleHookSpecificationNotificationTargetARN = Nothing
  , _autoScalingAutoScalingGroupLifecycleHookSpecificationRoleARN = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-lifecyclehookspecification.html#cfn-autoscaling-autoscalinggroup-lifecyclehookspecification-defaultresult
asasglhsDefaultResult :: Lens' AutoScalingAutoScalingGroupLifecycleHookSpecification (Maybe (Val Text))
asasglhsDefaultResult = lens _autoScalingAutoScalingGroupLifecycleHookSpecificationDefaultResult (\s a -> s { _autoScalingAutoScalingGroupLifecycleHookSpecificationDefaultResult = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-lifecyclehookspecification.html#cfn-autoscaling-autoscalinggroup-lifecyclehookspecification-heartbeattimeout
asasglhsHeartbeatTimeout :: Lens' AutoScalingAutoScalingGroupLifecycleHookSpecification (Maybe (Val Integer))
asasglhsHeartbeatTimeout = lens _autoScalingAutoScalingGroupLifecycleHookSpecificationHeartbeatTimeout (\s a -> s { _autoScalingAutoScalingGroupLifecycleHookSpecificationHeartbeatTimeout = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-lifecyclehookspecification.html#cfn-autoscaling-autoscalinggroup-lifecyclehookspecification-lifecyclehookname
asasglhsLifecycleHookName :: Lens' AutoScalingAutoScalingGroupLifecycleHookSpecification (Val Text)
asasglhsLifecycleHookName = lens _autoScalingAutoScalingGroupLifecycleHookSpecificationLifecycleHookName (\s a -> s { _autoScalingAutoScalingGroupLifecycleHookSpecificationLifecycleHookName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-lifecyclehookspecification.html#cfn-autoscaling-autoscalinggroup-lifecyclehookspecification-lifecycletransition
asasglhsLifecycleTransition :: Lens' AutoScalingAutoScalingGroupLifecycleHookSpecification (Val Text)
asasglhsLifecycleTransition = lens _autoScalingAutoScalingGroupLifecycleHookSpecificationLifecycleTransition (\s a -> s { _autoScalingAutoScalingGroupLifecycleHookSpecificationLifecycleTransition = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-lifecyclehookspecification.html#cfn-autoscaling-autoscalinggroup-lifecyclehookspecification-notificationmetadata
asasglhsNotificationMetadata :: Lens' AutoScalingAutoScalingGroupLifecycleHookSpecification (Maybe (Val Text))
asasglhsNotificationMetadata = lens _autoScalingAutoScalingGroupLifecycleHookSpecificationNotificationMetadata (\s a -> s { _autoScalingAutoScalingGroupLifecycleHookSpecificationNotificationMetadata = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-lifecyclehookspecification.html#cfn-autoscaling-autoscalinggroup-lifecyclehookspecification-notificationtargetarn
asasglhsNotificationTargetARN :: Lens' AutoScalingAutoScalingGroupLifecycleHookSpecification (Maybe (Val Text))
asasglhsNotificationTargetARN = lens _autoScalingAutoScalingGroupLifecycleHookSpecificationNotificationTargetARN (\s a -> s { _autoScalingAutoScalingGroupLifecycleHookSpecificationNotificationTargetARN = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-lifecyclehookspecification.html#cfn-autoscaling-autoscalinggroup-lifecyclehookspecification-rolearn
asasglhsRoleARN :: Lens' AutoScalingAutoScalingGroupLifecycleHookSpecification (Maybe (Val Text))
asasglhsRoleARN = lens _autoScalingAutoScalingGroupLifecycleHookSpecificationRoleARN (\s a -> s { _autoScalingAutoScalingGroupLifecycleHookSpecificationRoleARN = a })
