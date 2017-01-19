{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-stepscalingpolicyconfiguration.html

module Stratosphere.ResourceProperties.ApplicationAutoScalingScalingPolicyStepScalingPolicyConfiguration where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.ApplicationAutoScalingScalingPolicyStepAdjustment

-- | Full data type definition for
-- | ApplicationAutoScalingScalingPolicyStepScalingPolicyConfiguration. See
-- | 'applicationAutoScalingScalingPolicyStepScalingPolicyConfiguration' for a
-- | more convenient constructor.
data ApplicationAutoScalingScalingPolicyStepScalingPolicyConfiguration =
  ApplicationAutoScalingScalingPolicyStepScalingPolicyConfiguration
  { _applicationAutoScalingScalingPolicyStepScalingPolicyConfigurationAdjustmentType :: Maybe (Val Text)
  , _applicationAutoScalingScalingPolicyStepScalingPolicyConfigurationCooldown :: Maybe (Val Integer')
  , _applicationAutoScalingScalingPolicyStepScalingPolicyConfigurationMetricAggregationType :: Maybe (Val Text)
  , _applicationAutoScalingScalingPolicyStepScalingPolicyConfigurationMinAdjustmentMagnitude :: Maybe (Val Integer')
  , _applicationAutoScalingScalingPolicyStepScalingPolicyConfigurationStepAdjustments :: Maybe [ApplicationAutoScalingScalingPolicyStepAdjustment]
  } deriving (Show, Eq, Generic)

instance ToJSON ApplicationAutoScalingScalingPolicyStepScalingPolicyConfiguration where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 66, omitNothingFields = True }

instance FromJSON ApplicationAutoScalingScalingPolicyStepScalingPolicyConfiguration where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 66, omitNothingFields = True }

-- | Constructor for
-- | 'ApplicationAutoScalingScalingPolicyStepScalingPolicyConfiguration'
-- | containing required fields as arguments.
applicationAutoScalingScalingPolicyStepScalingPolicyConfiguration
  :: ApplicationAutoScalingScalingPolicyStepScalingPolicyConfiguration
applicationAutoScalingScalingPolicyStepScalingPolicyConfiguration  =
  ApplicationAutoScalingScalingPolicyStepScalingPolicyConfiguration
  { _applicationAutoScalingScalingPolicyStepScalingPolicyConfigurationAdjustmentType = Nothing
  , _applicationAutoScalingScalingPolicyStepScalingPolicyConfigurationCooldown = Nothing
  , _applicationAutoScalingScalingPolicyStepScalingPolicyConfigurationMetricAggregationType = Nothing
  , _applicationAutoScalingScalingPolicyStepScalingPolicyConfigurationMinAdjustmentMagnitude = Nothing
  , _applicationAutoScalingScalingPolicyStepScalingPolicyConfigurationStepAdjustments = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-stepscalingpolicyconfiguration.html#cfn-applicationautoscaling-scalingpolicy-stepscalingpolicyconfiguration-adjustmenttype
aasspsspcAdjustmentType :: Lens' ApplicationAutoScalingScalingPolicyStepScalingPolicyConfiguration (Maybe (Val Text))
aasspsspcAdjustmentType = lens _applicationAutoScalingScalingPolicyStepScalingPolicyConfigurationAdjustmentType (\s a -> s { _applicationAutoScalingScalingPolicyStepScalingPolicyConfigurationAdjustmentType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-stepscalingpolicyconfiguration.html#cfn-applicationautoscaling-scalingpolicy-stepscalingpolicyconfiguration-cooldown
aasspsspcCooldown :: Lens' ApplicationAutoScalingScalingPolicyStepScalingPolicyConfiguration (Maybe (Val Integer'))
aasspsspcCooldown = lens _applicationAutoScalingScalingPolicyStepScalingPolicyConfigurationCooldown (\s a -> s { _applicationAutoScalingScalingPolicyStepScalingPolicyConfigurationCooldown = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-stepscalingpolicyconfiguration.html#cfn-applicationautoscaling-scalingpolicy-stepscalingpolicyconfiguration-metricaggregationtype
aasspsspcMetricAggregationType :: Lens' ApplicationAutoScalingScalingPolicyStepScalingPolicyConfiguration (Maybe (Val Text))
aasspsspcMetricAggregationType = lens _applicationAutoScalingScalingPolicyStepScalingPolicyConfigurationMetricAggregationType (\s a -> s { _applicationAutoScalingScalingPolicyStepScalingPolicyConfigurationMetricAggregationType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-stepscalingpolicyconfiguration.html#cfn-applicationautoscaling-scalingpolicy-stepscalingpolicyconfiguration-minadjustmentmagnitude
aasspsspcMinAdjustmentMagnitude :: Lens' ApplicationAutoScalingScalingPolicyStepScalingPolicyConfiguration (Maybe (Val Integer'))
aasspsspcMinAdjustmentMagnitude = lens _applicationAutoScalingScalingPolicyStepScalingPolicyConfigurationMinAdjustmentMagnitude (\s a -> s { _applicationAutoScalingScalingPolicyStepScalingPolicyConfigurationMinAdjustmentMagnitude = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-stepscalingpolicyconfiguration.html#cfn-applicationautoscaling-scalingpolicy-stepscalingpolicyconfiguration-stepadjustments
aasspsspcStepAdjustments :: Lens' ApplicationAutoScalingScalingPolicyStepScalingPolicyConfiguration (Maybe [ApplicationAutoScalingScalingPolicyStepAdjustment])
aasspsspcStepAdjustments = lens _applicationAutoScalingScalingPolicyStepScalingPolicyConfigurationStepAdjustments (\s a -> s { _applicationAutoScalingScalingPolicyStepScalingPolicyConfigurationStepAdjustments = a })