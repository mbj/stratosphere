{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancegroupconfig-simplescalingpolicyconfiguration.html

module Stratosphere.ResourceProperties.EMRInstanceGroupConfigSimpleScalingPolicyConfiguration where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- EMRInstanceGroupConfigSimpleScalingPolicyConfiguration. See
-- 'emrInstanceGroupConfigSimpleScalingPolicyConfiguration' for a more
-- convenient constructor.
data EMRInstanceGroupConfigSimpleScalingPolicyConfiguration =
  EMRInstanceGroupConfigSimpleScalingPolicyConfiguration
  { _eMRInstanceGroupConfigSimpleScalingPolicyConfigurationAdjustmentType :: Maybe (Val Text)
  , _eMRInstanceGroupConfigSimpleScalingPolicyConfigurationCoolDown :: Maybe (Val Integer)
  , _eMRInstanceGroupConfigSimpleScalingPolicyConfigurationScalingAdjustment :: Val Integer
  } deriving (Show, Eq)

instance ToJSON EMRInstanceGroupConfigSimpleScalingPolicyConfiguration where
  toJSON EMRInstanceGroupConfigSimpleScalingPolicyConfiguration{..} =
    object $
    catMaybes
    [ fmap (("AdjustmentType",) . toJSON) _eMRInstanceGroupConfigSimpleScalingPolicyConfigurationAdjustmentType
    , fmap (("CoolDown",) . toJSON) _eMRInstanceGroupConfigSimpleScalingPolicyConfigurationCoolDown
    , (Just . ("ScalingAdjustment",) . toJSON) _eMRInstanceGroupConfigSimpleScalingPolicyConfigurationScalingAdjustment
    ]

-- | Constructor for 'EMRInstanceGroupConfigSimpleScalingPolicyConfiguration'
-- containing required fields as arguments.
emrInstanceGroupConfigSimpleScalingPolicyConfiguration
  :: Val Integer -- ^ 'emrigcsspcScalingAdjustment'
  -> EMRInstanceGroupConfigSimpleScalingPolicyConfiguration
emrInstanceGroupConfigSimpleScalingPolicyConfiguration scalingAdjustmentarg =
  EMRInstanceGroupConfigSimpleScalingPolicyConfiguration
  { _eMRInstanceGroupConfigSimpleScalingPolicyConfigurationAdjustmentType = Nothing
  , _eMRInstanceGroupConfigSimpleScalingPolicyConfigurationCoolDown = Nothing
  , _eMRInstanceGroupConfigSimpleScalingPolicyConfigurationScalingAdjustment = scalingAdjustmentarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancegroupconfig-simplescalingpolicyconfiguration.html#cfn-elasticmapreduce-instancegroupconfig-simplescalingpolicyconfiguration-adjustmenttype
emrigcsspcAdjustmentType :: Lens' EMRInstanceGroupConfigSimpleScalingPolicyConfiguration (Maybe (Val Text))
emrigcsspcAdjustmentType = lens _eMRInstanceGroupConfigSimpleScalingPolicyConfigurationAdjustmentType (\s a -> s { _eMRInstanceGroupConfigSimpleScalingPolicyConfigurationAdjustmentType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancegroupconfig-simplescalingpolicyconfiguration.html#cfn-elasticmapreduce-instancegroupconfig-simplescalingpolicyconfiguration-cooldown
emrigcsspcCoolDown :: Lens' EMRInstanceGroupConfigSimpleScalingPolicyConfiguration (Maybe (Val Integer))
emrigcsspcCoolDown = lens _eMRInstanceGroupConfigSimpleScalingPolicyConfigurationCoolDown (\s a -> s { _eMRInstanceGroupConfigSimpleScalingPolicyConfigurationCoolDown = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancegroupconfig-simplescalingpolicyconfiguration.html#cfn-elasticmapreduce-instancegroupconfig-simplescalingpolicyconfiguration-scalingadjustment
emrigcsspcScalingAdjustment :: Lens' EMRInstanceGroupConfigSimpleScalingPolicyConfiguration (Val Integer)
emrigcsspcScalingAdjustment = lens _eMRInstanceGroupConfigSimpleScalingPolicyConfigurationScalingAdjustment (\s a -> s { _eMRInstanceGroupConfigSimpleScalingPolicyConfigurationScalingAdjustment = a })
