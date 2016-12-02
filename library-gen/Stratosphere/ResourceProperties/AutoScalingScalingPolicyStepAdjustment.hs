{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-scalingpolicy-stepadjustments.html

module Stratosphere.ResourceProperties.AutoScalingScalingPolicyStepAdjustment where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for AutoScalingScalingPolicyStepAdjustment. See
-- | 'autoScalingScalingPolicyStepAdjustment' for a more convenient
-- | constructor.
data AutoScalingScalingPolicyStepAdjustment =
  AutoScalingScalingPolicyStepAdjustment
  { _autoScalingScalingPolicyStepAdjustmentMetricIntervalLowerBound :: Maybe (Val Double')
  , _autoScalingScalingPolicyStepAdjustmentMetricIntervalUpperBound :: Maybe (Val Double')
  , _autoScalingScalingPolicyStepAdjustmentScalingAdjustment :: Val Integer'
  } deriving (Show, Generic)

instance ToJSON AutoScalingScalingPolicyStepAdjustment where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 39, omitNothingFields = True }

instance FromJSON AutoScalingScalingPolicyStepAdjustment where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 39, omitNothingFields = True }

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
