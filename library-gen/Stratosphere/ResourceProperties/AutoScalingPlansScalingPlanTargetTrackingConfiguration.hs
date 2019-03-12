{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-targettrackingconfiguration.html

module Stratosphere.ResourceProperties.AutoScalingPlansScalingPlanTargetTrackingConfiguration where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AutoScalingPlansScalingPlanCustomizedScalingMetricSpecification
import Stratosphere.ResourceProperties.AutoScalingPlansScalingPlanPredefinedScalingMetricSpecification

-- | Full data type definition for
-- AutoScalingPlansScalingPlanTargetTrackingConfiguration. See
-- 'autoScalingPlansScalingPlanTargetTrackingConfiguration' for a more
-- convenient constructor.
data AutoScalingPlansScalingPlanTargetTrackingConfiguration =
  AutoScalingPlansScalingPlanTargetTrackingConfiguration
  { _autoScalingPlansScalingPlanTargetTrackingConfigurationCustomizedScalingMetricSpecification :: Maybe AutoScalingPlansScalingPlanCustomizedScalingMetricSpecification
  , _autoScalingPlansScalingPlanTargetTrackingConfigurationDisableScaleIn :: Maybe (Val Bool)
  , _autoScalingPlansScalingPlanTargetTrackingConfigurationEstimatedInstanceWarmup :: Maybe (Val Integer)
  , _autoScalingPlansScalingPlanTargetTrackingConfigurationPredefinedScalingMetricSpecification :: Maybe AutoScalingPlansScalingPlanPredefinedScalingMetricSpecification
  , _autoScalingPlansScalingPlanTargetTrackingConfigurationScaleInCooldown :: Maybe (Val Integer)
  , _autoScalingPlansScalingPlanTargetTrackingConfigurationScaleOutCooldown :: Maybe (Val Integer)
  , _autoScalingPlansScalingPlanTargetTrackingConfigurationTargetValue :: Val Double
  } deriving (Show, Eq)

instance ToJSON AutoScalingPlansScalingPlanTargetTrackingConfiguration where
  toJSON AutoScalingPlansScalingPlanTargetTrackingConfiguration{..} =
    object $
    catMaybes
    [ fmap (("CustomizedScalingMetricSpecification",) . toJSON) _autoScalingPlansScalingPlanTargetTrackingConfigurationCustomizedScalingMetricSpecification
    , fmap (("DisableScaleIn",) . toJSON . fmap Bool') _autoScalingPlansScalingPlanTargetTrackingConfigurationDisableScaleIn
    , fmap (("EstimatedInstanceWarmup",) . toJSON . fmap Integer') _autoScalingPlansScalingPlanTargetTrackingConfigurationEstimatedInstanceWarmup
    , fmap (("PredefinedScalingMetricSpecification",) . toJSON) _autoScalingPlansScalingPlanTargetTrackingConfigurationPredefinedScalingMetricSpecification
    , fmap (("ScaleInCooldown",) . toJSON . fmap Integer') _autoScalingPlansScalingPlanTargetTrackingConfigurationScaleInCooldown
    , fmap (("ScaleOutCooldown",) . toJSON . fmap Integer') _autoScalingPlansScalingPlanTargetTrackingConfigurationScaleOutCooldown
    , (Just . ("TargetValue",) . toJSON . fmap Double') _autoScalingPlansScalingPlanTargetTrackingConfigurationTargetValue
    ]

-- | Constructor for 'AutoScalingPlansScalingPlanTargetTrackingConfiguration'
-- containing required fields as arguments.
autoScalingPlansScalingPlanTargetTrackingConfiguration
  :: Val Double -- ^ 'aspspttcTargetValue'
  -> AutoScalingPlansScalingPlanTargetTrackingConfiguration
autoScalingPlansScalingPlanTargetTrackingConfiguration targetValuearg =
  AutoScalingPlansScalingPlanTargetTrackingConfiguration
  { _autoScalingPlansScalingPlanTargetTrackingConfigurationCustomizedScalingMetricSpecification = Nothing
  , _autoScalingPlansScalingPlanTargetTrackingConfigurationDisableScaleIn = Nothing
  , _autoScalingPlansScalingPlanTargetTrackingConfigurationEstimatedInstanceWarmup = Nothing
  , _autoScalingPlansScalingPlanTargetTrackingConfigurationPredefinedScalingMetricSpecification = Nothing
  , _autoScalingPlansScalingPlanTargetTrackingConfigurationScaleInCooldown = Nothing
  , _autoScalingPlansScalingPlanTargetTrackingConfigurationScaleOutCooldown = Nothing
  , _autoScalingPlansScalingPlanTargetTrackingConfigurationTargetValue = targetValuearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-targettrackingconfiguration.html#cfn-autoscalingplans-scalingplan-targettrackingconfiguration-customizedscalingmetricspecification
aspspttcCustomizedScalingMetricSpecification :: Lens' AutoScalingPlansScalingPlanTargetTrackingConfiguration (Maybe AutoScalingPlansScalingPlanCustomizedScalingMetricSpecification)
aspspttcCustomizedScalingMetricSpecification = lens _autoScalingPlansScalingPlanTargetTrackingConfigurationCustomizedScalingMetricSpecification (\s a -> s { _autoScalingPlansScalingPlanTargetTrackingConfigurationCustomizedScalingMetricSpecification = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-targettrackingconfiguration.html#cfn-autoscalingplans-scalingplan-targettrackingconfiguration-disablescalein
aspspttcDisableScaleIn :: Lens' AutoScalingPlansScalingPlanTargetTrackingConfiguration (Maybe (Val Bool))
aspspttcDisableScaleIn = lens _autoScalingPlansScalingPlanTargetTrackingConfigurationDisableScaleIn (\s a -> s { _autoScalingPlansScalingPlanTargetTrackingConfigurationDisableScaleIn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-targettrackingconfiguration.html#cfn-autoscalingplans-scalingplan-targettrackingconfiguration-estimatedinstancewarmup
aspspttcEstimatedInstanceWarmup :: Lens' AutoScalingPlansScalingPlanTargetTrackingConfiguration (Maybe (Val Integer))
aspspttcEstimatedInstanceWarmup = lens _autoScalingPlansScalingPlanTargetTrackingConfigurationEstimatedInstanceWarmup (\s a -> s { _autoScalingPlansScalingPlanTargetTrackingConfigurationEstimatedInstanceWarmup = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-targettrackingconfiguration.html#cfn-autoscalingplans-scalingplan-targettrackingconfiguration-predefinedscalingmetricspecification
aspspttcPredefinedScalingMetricSpecification :: Lens' AutoScalingPlansScalingPlanTargetTrackingConfiguration (Maybe AutoScalingPlansScalingPlanPredefinedScalingMetricSpecification)
aspspttcPredefinedScalingMetricSpecification = lens _autoScalingPlansScalingPlanTargetTrackingConfigurationPredefinedScalingMetricSpecification (\s a -> s { _autoScalingPlansScalingPlanTargetTrackingConfigurationPredefinedScalingMetricSpecification = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-targettrackingconfiguration.html#cfn-autoscalingplans-scalingplan-targettrackingconfiguration-scaleincooldown
aspspttcScaleInCooldown :: Lens' AutoScalingPlansScalingPlanTargetTrackingConfiguration (Maybe (Val Integer))
aspspttcScaleInCooldown = lens _autoScalingPlansScalingPlanTargetTrackingConfigurationScaleInCooldown (\s a -> s { _autoScalingPlansScalingPlanTargetTrackingConfigurationScaleInCooldown = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-targettrackingconfiguration.html#cfn-autoscalingplans-scalingplan-targettrackingconfiguration-scaleoutcooldown
aspspttcScaleOutCooldown :: Lens' AutoScalingPlansScalingPlanTargetTrackingConfiguration (Maybe (Val Integer))
aspspttcScaleOutCooldown = lens _autoScalingPlansScalingPlanTargetTrackingConfigurationScaleOutCooldown (\s a -> s { _autoScalingPlansScalingPlanTargetTrackingConfigurationScaleOutCooldown = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-targettrackingconfiguration.html#cfn-autoscalingplans-scalingplan-targettrackingconfiguration-targetvalue
aspspttcTargetValue :: Lens' AutoScalingPlansScalingPlanTargetTrackingConfiguration (Val Double)
aspspttcTargetValue = lens _autoScalingPlansScalingPlanTargetTrackingConfigurationTargetValue (\s a -> s { _autoScalingPlansScalingPlanTargetTrackingConfigurationTargetValue = a })
