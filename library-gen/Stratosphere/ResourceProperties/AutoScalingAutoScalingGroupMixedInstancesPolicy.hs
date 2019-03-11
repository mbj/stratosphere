{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/cfn-as-group-mixedinstancespolicy.html

module Stratosphere.ResourceProperties.AutoScalingAutoScalingGroupMixedInstancesPolicy where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AutoScalingAutoScalingGroupInstancesDistribution
import Stratosphere.ResourceProperties.AutoScalingAutoScalingGroupLaunchTemplate

-- | Full data type definition for
-- AutoScalingAutoScalingGroupMixedInstancesPolicy. See
-- 'autoScalingAutoScalingGroupMixedInstancesPolicy' for a more convenient
-- constructor.
data AutoScalingAutoScalingGroupMixedInstancesPolicy =
  AutoScalingAutoScalingGroupMixedInstancesPolicy
  { _autoScalingAutoScalingGroupMixedInstancesPolicyInstancesDistribution :: Maybe AutoScalingAutoScalingGroupInstancesDistribution
  , _autoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplate :: AutoScalingAutoScalingGroupLaunchTemplate
  } deriving (Show, Eq)

instance ToJSON AutoScalingAutoScalingGroupMixedInstancesPolicy where
  toJSON AutoScalingAutoScalingGroupMixedInstancesPolicy{..} =
    object $
    catMaybes
    [ fmap (("InstancesDistribution",) . toJSON) _autoScalingAutoScalingGroupMixedInstancesPolicyInstancesDistribution
    , (Just . ("LaunchTemplate",) . toJSON) _autoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplate
    ]

-- | Constructor for 'AutoScalingAutoScalingGroupMixedInstancesPolicy'
-- containing required fields as arguments.
autoScalingAutoScalingGroupMixedInstancesPolicy
  :: AutoScalingAutoScalingGroupLaunchTemplate -- ^ 'asasgmipLaunchTemplate'
  -> AutoScalingAutoScalingGroupMixedInstancesPolicy
autoScalingAutoScalingGroupMixedInstancesPolicy launchTemplatearg =
  AutoScalingAutoScalingGroupMixedInstancesPolicy
  { _autoScalingAutoScalingGroupMixedInstancesPolicyInstancesDistribution = Nothing
  , _autoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplate = launchTemplatearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/cfn-as-group-mixedinstancespolicy.html#cfn-as-mixedinstancespolicy-instancesdistribution
asasgmipInstancesDistribution :: Lens' AutoScalingAutoScalingGroupMixedInstancesPolicy (Maybe AutoScalingAutoScalingGroupInstancesDistribution)
asasgmipInstancesDistribution = lens _autoScalingAutoScalingGroupMixedInstancesPolicyInstancesDistribution (\s a -> s { _autoScalingAutoScalingGroupMixedInstancesPolicyInstancesDistribution = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/cfn-as-group-mixedinstancespolicy.html#cfn-as-mixedinstancespolicy-launchtemplate
asasgmipLaunchTemplate :: Lens' AutoScalingAutoScalingGroupMixedInstancesPolicy AutoScalingAutoScalingGroupLaunchTemplate
asasgmipLaunchTemplate = lens _autoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplate (\s a -> s { _autoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplate = a })
