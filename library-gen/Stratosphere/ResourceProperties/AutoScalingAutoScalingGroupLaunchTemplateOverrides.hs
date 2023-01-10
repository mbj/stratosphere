
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/cfn-as-mixedinstancespolicy-launchtemplateoverrides.html

module Stratosphere.ResourceProperties.AutoScalingAutoScalingGroupLaunchTemplateOverrides where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for
-- AutoScalingAutoScalingGroupLaunchTemplateOverrides. See
-- 'autoScalingAutoScalingGroupLaunchTemplateOverrides' for a more
-- convenient constructor.
data AutoScalingAutoScalingGroupLaunchTemplateOverrides =
  AutoScalingAutoScalingGroupLaunchTemplateOverrides
  { _autoScalingAutoScalingGroupLaunchTemplateOverridesInstanceType :: Maybe (Val Text)
  , _autoScalingAutoScalingGroupLaunchTemplateOverridesWeightedCapacity :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON AutoScalingAutoScalingGroupLaunchTemplateOverrides where
  toJSON AutoScalingAutoScalingGroupLaunchTemplateOverrides{..} =
    object $
    catMaybes
    [ fmap (("InstanceType",) . toJSON) _autoScalingAutoScalingGroupLaunchTemplateOverridesInstanceType
    , fmap (("WeightedCapacity",) . toJSON) _autoScalingAutoScalingGroupLaunchTemplateOverridesWeightedCapacity
    ]

-- | Constructor for 'AutoScalingAutoScalingGroupLaunchTemplateOverrides'
-- containing required fields as arguments.
autoScalingAutoScalingGroupLaunchTemplateOverrides
  :: AutoScalingAutoScalingGroupLaunchTemplateOverrides
autoScalingAutoScalingGroupLaunchTemplateOverrides  =
  AutoScalingAutoScalingGroupLaunchTemplateOverrides
  { _autoScalingAutoScalingGroupLaunchTemplateOverridesInstanceType = Nothing
  , _autoScalingAutoScalingGroupLaunchTemplateOverridesWeightedCapacity = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/cfn-as-mixedinstancespolicy-launchtemplateoverrides.html#cfn-autoscaling-autoscalinggroup-launchtemplateoverrides-instancetype
asasgltoInstanceType :: Lens' AutoScalingAutoScalingGroupLaunchTemplateOverrides (Maybe (Val Text))
asasgltoInstanceType = lens _autoScalingAutoScalingGroupLaunchTemplateOverridesInstanceType (\s a -> s { _autoScalingAutoScalingGroupLaunchTemplateOverridesInstanceType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/cfn-as-mixedinstancespolicy-launchtemplateoverrides.html#cfn-autoscaling-autoscalinggroup-launchtemplateoverrides-weightedcapacity
asasgltoWeightedCapacity :: Lens' AutoScalingAutoScalingGroupLaunchTemplateOverrides (Maybe (Val Text))
asasgltoWeightedCapacity = lens _autoScalingAutoScalingGroupLaunchTemplateOverridesWeightedCapacity (\s a -> s { _autoScalingAutoScalingGroupLaunchTemplateOverridesWeightedCapacity = a })
