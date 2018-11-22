{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/cfn-as-mixedinstancespolicy-launchtemplateoverrides.html

module Stratosphere.ResourceProperties.AutoScalingAutoScalingGroupLaunchTemplateOverrides where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- AutoScalingAutoScalingGroupLaunchTemplateOverrides. See
-- 'autoScalingAutoScalingGroupLaunchTemplateOverrides' for a more
-- convenient constructor.
data AutoScalingAutoScalingGroupLaunchTemplateOverrides =
  AutoScalingAutoScalingGroupLaunchTemplateOverrides
  { _autoScalingAutoScalingGroupLaunchTemplateOverridesInstanceType :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON AutoScalingAutoScalingGroupLaunchTemplateOverrides where
  toJSON AutoScalingAutoScalingGroupLaunchTemplateOverrides{..} =
    object $
    catMaybes
    [ fmap (("InstanceType",) . toJSON) _autoScalingAutoScalingGroupLaunchTemplateOverridesInstanceType
    ]

instance FromJSON AutoScalingAutoScalingGroupLaunchTemplateOverrides where
  parseJSON (Object obj) =
    AutoScalingAutoScalingGroupLaunchTemplateOverrides <$>
      (obj .:? "InstanceType")
  parseJSON _ = mempty

-- | Constructor for 'AutoScalingAutoScalingGroupLaunchTemplateOverrides'
-- containing required fields as arguments.
autoScalingAutoScalingGroupLaunchTemplateOverrides
  :: AutoScalingAutoScalingGroupLaunchTemplateOverrides
autoScalingAutoScalingGroupLaunchTemplateOverrides  =
  AutoScalingAutoScalingGroupLaunchTemplateOverrides
  { _autoScalingAutoScalingGroupLaunchTemplateOverridesInstanceType = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/cfn-as-mixedinstancespolicy-launchtemplateoverrides.html#cfn-autoscaling-autoscalinggroup-launchtemplateoverrides-instancetype
asasgltoInstanceType :: Lens' AutoScalingAutoScalingGroupLaunchTemplateOverrides (Maybe (Val Text))
asasgltoInstanceType = lens _autoScalingAutoScalingGroupLaunchTemplateOverridesInstanceType (\s a -> s { _autoScalingAutoScalingGroupLaunchTemplateOverridesInstanceType = a })
