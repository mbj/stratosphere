{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-policy.html

module Stratosphere.Resources.AutoScalingScalingPolicy where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AutoScalingScalingPolicyStepAdjustment
import Stratosphere.ResourceProperties.AutoScalingScalingPolicyTargetTrackingConfiguration

-- | Full data type definition for AutoScalingScalingPolicy. See
-- 'autoScalingScalingPolicy' for a more convenient constructor.
data AutoScalingScalingPolicy =
  AutoScalingScalingPolicy
  { _autoScalingScalingPolicyAdjustmentType :: Maybe (Val Text)
  , _autoScalingScalingPolicyAutoScalingGroupName :: Val Text
  , _autoScalingScalingPolicyCooldown :: Maybe (Val Text)
  , _autoScalingScalingPolicyEstimatedInstanceWarmup :: Maybe (Val Integer)
  , _autoScalingScalingPolicyMetricAggregationType :: Maybe (Val Text)
  , _autoScalingScalingPolicyMinAdjustmentMagnitude :: Maybe (Val Integer)
  , _autoScalingScalingPolicyPolicyType :: Maybe (Val Text)
  , _autoScalingScalingPolicyScalingAdjustment :: Maybe (Val Integer)
  , _autoScalingScalingPolicyStepAdjustments :: Maybe [AutoScalingScalingPolicyStepAdjustment]
  , _autoScalingScalingPolicyTargetTrackingConfiguration :: Maybe AutoScalingScalingPolicyTargetTrackingConfiguration
  } deriving (Show, Eq)

instance ToResourceProperties AutoScalingScalingPolicy where
  toResourceProperties AutoScalingScalingPolicy{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::AutoScaling::ScalingPolicy"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("AdjustmentType",) . toJSON) _autoScalingScalingPolicyAdjustmentType
        , (Just . ("AutoScalingGroupName",) . toJSON) _autoScalingScalingPolicyAutoScalingGroupName
        , fmap (("Cooldown",) . toJSON) _autoScalingScalingPolicyCooldown
        , fmap (("EstimatedInstanceWarmup",) . toJSON) _autoScalingScalingPolicyEstimatedInstanceWarmup
        , fmap (("MetricAggregationType",) . toJSON) _autoScalingScalingPolicyMetricAggregationType
        , fmap (("MinAdjustmentMagnitude",) . toJSON) _autoScalingScalingPolicyMinAdjustmentMagnitude
        , fmap (("PolicyType",) . toJSON) _autoScalingScalingPolicyPolicyType
        , fmap (("ScalingAdjustment",) . toJSON) _autoScalingScalingPolicyScalingAdjustment
        , fmap (("StepAdjustments",) . toJSON) _autoScalingScalingPolicyStepAdjustments
        , fmap (("TargetTrackingConfiguration",) . toJSON) _autoScalingScalingPolicyTargetTrackingConfiguration
        ]
    }

-- | Constructor for 'AutoScalingScalingPolicy' containing required fields as
-- arguments.
autoScalingScalingPolicy
  :: Val Text -- ^ 'asspAutoScalingGroupName'
  -> AutoScalingScalingPolicy
autoScalingScalingPolicy autoScalingGroupNamearg =
  AutoScalingScalingPolicy
  { _autoScalingScalingPolicyAdjustmentType = Nothing
  , _autoScalingScalingPolicyAutoScalingGroupName = autoScalingGroupNamearg
  , _autoScalingScalingPolicyCooldown = Nothing
  , _autoScalingScalingPolicyEstimatedInstanceWarmup = Nothing
  , _autoScalingScalingPolicyMetricAggregationType = Nothing
  , _autoScalingScalingPolicyMinAdjustmentMagnitude = Nothing
  , _autoScalingScalingPolicyPolicyType = Nothing
  , _autoScalingScalingPolicyScalingAdjustment = Nothing
  , _autoScalingScalingPolicyStepAdjustments = Nothing
  , _autoScalingScalingPolicyTargetTrackingConfiguration = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-policy.html#cfn-as-scalingpolicy-adjustmenttype
asspAdjustmentType :: Lens' AutoScalingScalingPolicy (Maybe (Val Text))
asspAdjustmentType = lens _autoScalingScalingPolicyAdjustmentType (\s a -> s { _autoScalingScalingPolicyAdjustmentType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-policy.html#cfn-as-scalingpolicy-autoscalinggroupname
asspAutoScalingGroupName :: Lens' AutoScalingScalingPolicy (Val Text)
asspAutoScalingGroupName = lens _autoScalingScalingPolicyAutoScalingGroupName (\s a -> s { _autoScalingScalingPolicyAutoScalingGroupName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-policy.html#cfn-as-scalingpolicy-cooldown
asspCooldown :: Lens' AutoScalingScalingPolicy (Maybe (Val Text))
asspCooldown = lens _autoScalingScalingPolicyCooldown (\s a -> s { _autoScalingScalingPolicyCooldown = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-policy.html#cfn-as-scalingpolicy-estimatedinstancewarmup
asspEstimatedInstanceWarmup :: Lens' AutoScalingScalingPolicy (Maybe (Val Integer))
asspEstimatedInstanceWarmup = lens _autoScalingScalingPolicyEstimatedInstanceWarmup (\s a -> s { _autoScalingScalingPolicyEstimatedInstanceWarmup = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-policy.html#cfn-as-scalingpolicy-metricaggregationtype
asspMetricAggregationType :: Lens' AutoScalingScalingPolicy (Maybe (Val Text))
asspMetricAggregationType = lens _autoScalingScalingPolicyMetricAggregationType (\s a -> s { _autoScalingScalingPolicyMetricAggregationType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-policy.html#cfn-as-scalingpolicy-minadjustmentmagnitude
asspMinAdjustmentMagnitude :: Lens' AutoScalingScalingPolicy (Maybe (Val Integer))
asspMinAdjustmentMagnitude = lens _autoScalingScalingPolicyMinAdjustmentMagnitude (\s a -> s { _autoScalingScalingPolicyMinAdjustmentMagnitude = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-policy.html#cfn-as-scalingpolicy-policytype
asspPolicyType :: Lens' AutoScalingScalingPolicy (Maybe (Val Text))
asspPolicyType = lens _autoScalingScalingPolicyPolicyType (\s a -> s { _autoScalingScalingPolicyPolicyType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-policy.html#cfn-as-scalingpolicy-scalingadjustment
asspScalingAdjustment :: Lens' AutoScalingScalingPolicy (Maybe (Val Integer))
asspScalingAdjustment = lens _autoScalingScalingPolicyScalingAdjustment (\s a -> s { _autoScalingScalingPolicyScalingAdjustment = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-policy.html#cfn-as-scalingpolicy-stepadjustments
asspStepAdjustments :: Lens' AutoScalingScalingPolicy (Maybe [AutoScalingScalingPolicyStepAdjustment])
asspStepAdjustments = lens _autoScalingScalingPolicyStepAdjustments (\s a -> s { _autoScalingScalingPolicyStepAdjustments = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-policy.html#cfn-autoscaling-scalingpolicy-targettrackingconfiguration
asspTargetTrackingConfiguration :: Lens' AutoScalingScalingPolicy (Maybe AutoScalingScalingPolicyTargetTrackingConfiguration)
asspTargetTrackingConfiguration = lens _autoScalingScalingPolicyTargetTrackingConfiguration (\s a -> s { _autoScalingScalingPolicyTargetTrackingConfiguration = a })
