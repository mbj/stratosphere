{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-stepscalingpolicyconfiguration-stepadjustment.html

module Stratosphere.ResourceProperties.ApplicationAutoScalingScalingPolicyStepAdjustment where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- ApplicationAutoScalingScalingPolicyStepAdjustment. See
-- 'applicationAutoScalingScalingPolicyStepAdjustment' for a more convenient
-- constructor.
data ApplicationAutoScalingScalingPolicyStepAdjustment =
  ApplicationAutoScalingScalingPolicyStepAdjustment
  { _applicationAutoScalingScalingPolicyStepAdjustmentMetricIntervalLowerBound :: Maybe (Val Double)
  , _applicationAutoScalingScalingPolicyStepAdjustmentMetricIntervalUpperBound :: Maybe (Val Double)
  , _applicationAutoScalingScalingPolicyStepAdjustmentScalingAdjustment :: Val Integer
  } deriving (Show, Eq)

instance ToJSON ApplicationAutoScalingScalingPolicyStepAdjustment where
  toJSON ApplicationAutoScalingScalingPolicyStepAdjustment{..} =
    object $
    catMaybes
    [ fmap (("MetricIntervalLowerBound",) . toJSON . fmap Double') _applicationAutoScalingScalingPolicyStepAdjustmentMetricIntervalLowerBound
    , fmap (("MetricIntervalUpperBound",) . toJSON . fmap Double') _applicationAutoScalingScalingPolicyStepAdjustmentMetricIntervalUpperBound
    , (Just . ("ScalingAdjustment",) . toJSON . fmap Integer') _applicationAutoScalingScalingPolicyStepAdjustmentScalingAdjustment
    ]

-- | Constructor for 'ApplicationAutoScalingScalingPolicyStepAdjustment'
-- containing required fields as arguments.
applicationAutoScalingScalingPolicyStepAdjustment
  :: Val Integer -- ^ 'aasspsaScalingAdjustment'
  -> ApplicationAutoScalingScalingPolicyStepAdjustment
applicationAutoScalingScalingPolicyStepAdjustment scalingAdjustmentarg =
  ApplicationAutoScalingScalingPolicyStepAdjustment
  { _applicationAutoScalingScalingPolicyStepAdjustmentMetricIntervalLowerBound = Nothing
  , _applicationAutoScalingScalingPolicyStepAdjustmentMetricIntervalUpperBound = Nothing
  , _applicationAutoScalingScalingPolicyStepAdjustmentScalingAdjustment = scalingAdjustmentarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-stepscalingpolicyconfiguration-stepadjustment.html#cfn-applicationautoscaling-scalingpolicy-stepscalingpolicyconfiguration-stepadjustment-metricintervallowerbound
aasspsaMetricIntervalLowerBound :: Lens' ApplicationAutoScalingScalingPolicyStepAdjustment (Maybe (Val Double))
aasspsaMetricIntervalLowerBound = lens _applicationAutoScalingScalingPolicyStepAdjustmentMetricIntervalLowerBound (\s a -> s { _applicationAutoScalingScalingPolicyStepAdjustmentMetricIntervalLowerBound = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-stepscalingpolicyconfiguration-stepadjustment.html#cfn-applicationautoscaling-scalingpolicy-stepscalingpolicyconfiguration-stepadjustment-metricintervalupperbound
aasspsaMetricIntervalUpperBound :: Lens' ApplicationAutoScalingScalingPolicyStepAdjustment (Maybe (Val Double))
aasspsaMetricIntervalUpperBound = lens _applicationAutoScalingScalingPolicyStepAdjustmentMetricIntervalUpperBound (\s a -> s { _applicationAutoScalingScalingPolicyStepAdjustmentMetricIntervalUpperBound = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-stepscalingpolicyconfiguration-stepadjustment.html#cfn-applicationautoscaling-scalingpolicy-stepscalingpolicyconfiguration-stepadjustment-scalingadjustment
aasspsaScalingAdjustment :: Lens' ApplicationAutoScalingScalingPolicyStepAdjustment (Val Integer)
aasspsaScalingAdjustment = lens _applicationAutoScalingScalingPolicyStepAdjustmentScalingAdjustment (\s a -> s { _applicationAutoScalingScalingPolicyStepAdjustmentScalingAdjustment = a })
