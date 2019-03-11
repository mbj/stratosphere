{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-targettrackingscalingpolicyconfiguration.html

module Stratosphere.ResourceProperties.ApplicationAutoScalingScalingPolicyTargetTrackingScalingPolicyConfiguration where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.ApplicationAutoScalingScalingPolicyCustomizedMetricSpecification
import Stratosphere.ResourceProperties.ApplicationAutoScalingScalingPolicyPredefinedMetricSpecification

-- | Full data type definition for
-- ApplicationAutoScalingScalingPolicyTargetTrackingScalingPolicyConfiguration.
-- See
-- 'applicationAutoScalingScalingPolicyTargetTrackingScalingPolicyConfiguration'
-- for a more convenient constructor.
data ApplicationAutoScalingScalingPolicyTargetTrackingScalingPolicyConfiguration =
  ApplicationAutoScalingScalingPolicyTargetTrackingScalingPolicyConfiguration
  { _applicationAutoScalingScalingPolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecification :: Maybe ApplicationAutoScalingScalingPolicyCustomizedMetricSpecification
  , _applicationAutoScalingScalingPolicyTargetTrackingScalingPolicyConfigurationDisableScaleIn :: Maybe (Val Bool)
  , _applicationAutoScalingScalingPolicyTargetTrackingScalingPolicyConfigurationPredefinedMetricSpecification :: Maybe ApplicationAutoScalingScalingPolicyPredefinedMetricSpecification
  , _applicationAutoScalingScalingPolicyTargetTrackingScalingPolicyConfigurationScaleInCooldown :: Maybe (Val Integer)
  , _applicationAutoScalingScalingPolicyTargetTrackingScalingPolicyConfigurationScaleOutCooldown :: Maybe (Val Integer)
  , _applicationAutoScalingScalingPolicyTargetTrackingScalingPolicyConfigurationTargetValue :: Val Double
  } deriving (Show, Eq)

instance ToJSON ApplicationAutoScalingScalingPolicyTargetTrackingScalingPolicyConfiguration where
  toJSON ApplicationAutoScalingScalingPolicyTargetTrackingScalingPolicyConfiguration{..} =
    object $
    catMaybes
    [ fmap (("CustomizedMetricSpecification",) . toJSON) _applicationAutoScalingScalingPolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecification
    , fmap (("DisableScaleIn",) . toJSON . fmap Bool') _applicationAutoScalingScalingPolicyTargetTrackingScalingPolicyConfigurationDisableScaleIn
    , fmap (("PredefinedMetricSpecification",) . toJSON) _applicationAutoScalingScalingPolicyTargetTrackingScalingPolicyConfigurationPredefinedMetricSpecification
    , fmap (("ScaleInCooldown",) . toJSON . fmap Integer') _applicationAutoScalingScalingPolicyTargetTrackingScalingPolicyConfigurationScaleInCooldown
    , fmap (("ScaleOutCooldown",) . toJSON . fmap Integer') _applicationAutoScalingScalingPolicyTargetTrackingScalingPolicyConfigurationScaleOutCooldown
    , (Just . ("TargetValue",) . toJSON . fmap Double') _applicationAutoScalingScalingPolicyTargetTrackingScalingPolicyConfigurationTargetValue
    ]

-- | Constructor for
-- 'ApplicationAutoScalingScalingPolicyTargetTrackingScalingPolicyConfiguration'
-- containing required fields as arguments.
applicationAutoScalingScalingPolicyTargetTrackingScalingPolicyConfiguration
  :: Val Double -- ^ 'aasspttspcTargetValue'
  -> ApplicationAutoScalingScalingPolicyTargetTrackingScalingPolicyConfiguration
applicationAutoScalingScalingPolicyTargetTrackingScalingPolicyConfiguration targetValuearg =
  ApplicationAutoScalingScalingPolicyTargetTrackingScalingPolicyConfiguration
  { _applicationAutoScalingScalingPolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecification = Nothing
  , _applicationAutoScalingScalingPolicyTargetTrackingScalingPolicyConfigurationDisableScaleIn = Nothing
  , _applicationAutoScalingScalingPolicyTargetTrackingScalingPolicyConfigurationPredefinedMetricSpecification = Nothing
  , _applicationAutoScalingScalingPolicyTargetTrackingScalingPolicyConfigurationScaleInCooldown = Nothing
  , _applicationAutoScalingScalingPolicyTargetTrackingScalingPolicyConfigurationScaleOutCooldown = Nothing
  , _applicationAutoScalingScalingPolicyTargetTrackingScalingPolicyConfigurationTargetValue = targetValuearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-targettrackingscalingpolicyconfiguration.html#cfn-applicationautoscaling-scalingpolicy-targettrackingscalingpolicyconfiguration-customizedmetricspecification
aasspttspcCustomizedMetricSpecification :: Lens' ApplicationAutoScalingScalingPolicyTargetTrackingScalingPolicyConfiguration (Maybe ApplicationAutoScalingScalingPolicyCustomizedMetricSpecification)
aasspttspcCustomizedMetricSpecification = lens _applicationAutoScalingScalingPolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecification (\s a -> s { _applicationAutoScalingScalingPolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecification = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-targettrackingscalingpolicyconfiguration.html#cfn-applicationautoscaling-scalingpolicy-targettrackingscalingpolicyconfiguration-disablescalein
aasspttspcDisableScaleIn :: Lens' ApplicationAutoScalingScalingPolicyTargetTrackingScalingPolicyConfiguration (Maybe (Val Bool))
aasspttspcDisableScaleIn = lens _applicationAutoScalingScalingPolicyTargetTrackingScalingPolicyConfigurationDisableScaleIn (\s a -> s { _applicationAutoScalingScalingPolicyTargetTrackingScalingPolicyConfigurationDisableScaleIn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-targettrackingscalingpolicyconfiguration.html#cfn-applicationautoscaling-scalingpolicy-targettrackingscalingpolicyconfiguration-predefinedmetricspecification
aasspttspcPredefinedMetricSpecification :: Lens' ApplicationAutoScalingScalingPolicyTargetTrackingScalingPolicyConfiguration (Maybe ApplicationAutoScalingScalingPolicyPredefinedMetricSpecification)
aasspttspcPredefinedMetricSpecification = lens _applicationAutoScalingScalingPolicyTargetTrackingScalingPolicyConfigurationPredefinedMetricSpecification (\s a -> s { _applicationAutoScalingScalingPolicyTargetTrackingScalingPolicyConfigurationPredefinedMetricSpecification = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-targettrackingscalingpolicyconfiguration.html#cfn-applicationautoscaling-scalingpolicy-targettrackingscalingpolicyconfiguration-scaleincooldown
aasspttspcScaleInCooldown :: Lens' ApplicationAutoScalingScalingPolicyTargetTrackingScalingPolicyConfiguration (Maybe (Val Integer))
aasspttspcScaleInCooldown = lens _applicationAutoScalingScalingPolicyTargetTrackingScalingPolicyConfigurationScaleInCooldown (\s a -> s { _applicationAutoScalingScalingPolicyTargetTrackingScalingPolicyConfigurationScaleInCooldown = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-targettrackingscalingpolicyconfiguration.html#cfn-applicationautoscaling-scalingpolicy-targettrackingscalingpolicyconfiguration-scaleoutcooldown
aasspttspcScaleOutCooldown :: Lens' ApplicationAutoScalingScalingPolicyTargetTrackingScalingPolicyConfiguration (Maybe (Val Integer))
aasspttspcScaleOutCooldown = lens _applicationAutoScalingScalingPolicyTargetTrackingScalingPolicyConfigurationScaleOutCooldown (\s a -> s { _applicationAutoScalingScalingPolicyTargetTrackingScalingPolicyConfigurationScaleOutCooldown = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-targettrackingscalingpolicyconfiguration.html#cfn-applicationautoscaling-scalingpolicy-targettrackingscalingpolicyconfiguration-targetvalue
aasspttspcTargetValue :: Lens' ApplicationAutoScalingScalingPolicyTargetTrackingScalingPolicyConfiguration (Val Double)
aasspttspcTargetValue = lens _applicationAutoScalingScalingPolicyTargetTrackingScalingPolicyConfigurationTargetValue (\s a -> s { _applicationAutoScalingScalingPolicyTargetTrackingScalingPolicyConfigurationTargetValue = a })
