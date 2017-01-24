{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-scalingpolicy-stepadjustments.html

module Stratosphere.ResourceProperties.AutoScalingScalingPolicyStepAdjustment where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for AutoScalingScalingPolicyStepAdjustment. See
-- | 'autoScalingScalingPolicyStepAdjustment' for a more convenient
-- | constructor.
data AutoScalingScalingPolicyStepAdjustment =
  AutoScalingScalingPolicyStepAdjustment
  { _autoScalingScalingPolicyStepAdjustmentMetricIntervalLowerBound :: Maybe (Val Double')
  , _autoScalingScalingPolicyStepAdjustmentMetricIntervalUpperBound :: Maybe (Val Double')
  , _autoScalingScalingPolicyStepAdjustmentScalingAdjustment :: Val Integer'
  } deriving (Show, Eq)

instance ToJSON AutoScalingScalingPolicyStepAdjustment where
  toJSON AutoScalingScalingPolicyStepAdjustment{..} =
    object
    [ "MetricIntervalLowerBound" .= _autoScalingScalingPolicyStepAdjustmentMetricIntervalLowerBound
    , "MetricIntervalUpperBound" .= _autoScalingScalingPolicyStepAdjustmentMetricIntervalUpperBound
    , "ScalingAdjustment" .= _autoScalingScalingPolicyStepAdjustmentScalingAdjustment
    ]

instance FromJSON AutoScalingScalingPolicyStepAdjustment where
  parseJSON (Object obj) =
    AutoScalingScalingPolicyStepAdjustment <$>
      obj .: "MetricIntervalLowerBound" <*>
      obj .: "MetricIntervalUpperBound" <*>
      obj .: "ScalingAdjustment"
  parseJSON _ = mempty

-- | Constructor for 'AutoScalingScalingPolicyStepAdjustment' containing
-- | required fields as arguments.
autoScalingScalingPolicyStepAdjustment
  :: Val Integer' -- ^ 'asspsaScalingAdjustment'
  -> AutoScalingScalingPolicyStepAdjustment
autoScalingScalingPolicyStepAdjustment scalingAdjustmentarg =
  AutoScalingScalingPolicyStepAdjustment
  { _autoScalingScalingPolicyStepAdjustmentMetricIntervalLowerBound = Nothing
  , _autoScalingScalingPolicyStepAdjustmentMetricIntervalUpperBound = Nothing
  , _autoScalingScalingPolicyStepAdjustmentScalingAdjustment = scalingAdjustmentarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-scalingpolicy-stepadjustments.html#cfn-autoscaling-scalingpolicy-stepadjustment-metricintervallowerbound
asspsaMetricIntervalLowerBound :: Lens' AutoScalingScalingPolicyStepAdjustment (Maybe (Val Double'))
asspsaMetricIntervalLowerBound = lens _autoScalingScalingPolicyStepAdjustmentMetricIntervalLowerBound (\s a -> s { _autoScalingScalingPolicyStepAdjustmentMetricIntervalLowerBound = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-scalingpolicy-stepadjustments.html#cfn-autoscaling-scalingpolicy-stepadjustment-metricintervalupperbound
asspsaMetricIntervalUpperBound :: Lens' AutoScalingScalingPolicyStepAdjustment (Maybe (Val Double'))
asspsaMetricIntervalUpperBound = lens _autoScalingScalingPolicyStepAdjustmentMetricIntervalUpperBound (\s a -> s { _autoScalingScalingPolicyStepAdjustmentMetricIntervalUpperBound = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-scalingpolicy-stepadjustments.html#cfn-autoscaling-scalingpolicy-stepadjustment-scalingadjustment
asspsaScalingAdjustment :: Lens' AutoScalingScalingPolicyStepAdjustment (Val Integer')
asspsaScalingAdjustment = lens _autoScalingScalingPolicyStepAdjustmentScalingAdjustment (\s a -> s { _autoScalingScalingPolicyStepAdjustmentScalingAdjustment = a })
