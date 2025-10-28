module Stratosphere.AutoScalingPlans.ScalingPlan.TargetTrackingConfigurationProperty (
        module Exports, TargetTrackingConfigurationProperty(..),
        mkTargetTrackingConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AutoScalingPlans.ScalingPlan.CustomizedScalingMetricSpecificationProperty as Exports
import {-# SOURCE #-} Stratosphere.AutoScalingPlans.ScalingPlan.PredefinedScalingMetricSpecificationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TargetTrackingConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-targettrackingconfiguration.html>
    TargetTrackingConfigurationProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-targettrackingconfiguration.html#cfn-autoscalingplans-scalingplan-targettrackingconfiguration-customizedscalingmetricspecification>
                                         customizedScalingMetricSpecification :: (Prelude.Maybe CustomizedScalingMetricSpecificationProperty),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-targettrackingconfiguration.html#cfn-autoscalingplans-scalingplan-targettrackingconfiguration-disablescalein>
                                         disableScaleIn :: (Prelude.Maybe (Value Prelude.Bool)),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-targettrackingconfiguration.html#cfn-autoscalingplans-scalingplan-targettrackingconfiguration-estimatedinstancewarmup>
                                         estimatedInstanceWarmup :: (Prelude.Maybe (Value Prelude.Integer)),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-targettrackingconfiguration.html#cfn-autoscalingplans-scalingplan-targettrackingconfiguration-predefinedscalingmetricspecification>
                                         predefinedScalingMetricSpecification :: (Prelude.Maybe PredefinedScalingMetricSpecificationProperty),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-targettrackingconfiguration.html#cfn-autoscalingplans-scalingplan-targettrackingconfiguration-scaleincooldown>
                                         scaleInCooldown :: (Prelude.Maybe (Value Prelude.Integer)),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-targettrackingconfiguration.html#cfn-autoscalingplans-scalingplan-targettrackingconfiguration-scaleoutcooldown>
                                         scaleOutCooldown :: (Prelude.Maybe (Value Prelude.Integer)),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-targettrackingconfiguration.html#cfn-autoscalingplans-scalingplan-targettrackingconfiguration-targetvalue>
                                         targetValue :: (Value Prelude.Double)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTargetTrackingConfigurationProperty ::
  Value Prelude.Double -> TargetTrackingConfigurationProperty
mkTargetTrackingConfigurationProperty targetValue
  = TargetTrackingConfigurationProperty
      {haddock_workaround_ = (), targetValue = targetValue,
       customizedScalingMetricSpecification = Prelude.Nothing,
       disableScaleIn = Prelude.Nothing,
       estimatedInstanceWarmup = Prelude.Nothing,
       predefinedScalingMetricSpecification = Prelude.Nothing,
       scaleInCooldown = Prelude.Nothing,
       scaleOutCooldown = Prelude.Nothing}
instance ToResourceProperties TargetTrackingConfigurationProperty where
  toResourceProperties TargetTrackingConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::AutoScalingPlans::ScalingPlan.TargetTrackingConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["TargetValue" JSON..= targetValue]
                           (Prelude.catMaybes
                              [(JSON..=) "CustomizedScalingMetricSpecification"
                                 Prelude.<$> customizedScalingMetricSpecification,
                               (JSON..=) "DisableScaleIn" Prelude.<$> disableScaleIn,
                               (JSON..=) "EstimatedInstanceWarmup"
                                 Prelude.<$> estimatedInstanceWarmup,
                               (JSON..=) "PredefinedScalingMetricSpecification"
                                 Prelude.<$> predefinedScalingMetricSpecification,
                               (JSON..=) "ScaleInCooldown" Prelude.<$> scaleInCooldown,
                               (JSON..=) "ScaleOutCooldown" Prelude.<$> scaleOutCooldown]))}
instance JSON.ToJSON TargetTrackingConfigurationProperty where
  toJSON TargetTrackingConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["TargetValue" JSON..= targetValue]
              (Prelude.catMaybes
                 [(JSON..=) "CustomizedScalingMetricSpecification"
                    Prelude.<$> customizedScalingMetricSpecification,
                  (JSON..=) "DisableScaleIn" Prelude.<$> disableScaleIn,
                  (JSON..=) "EstimatedInstanceWarmup"
                    Prelude.<$> estimatedInstanceWarmup,
                  (JSON..=) "PredefinedScalingMetricSpecification"
                    Prelude.<$> predefinedScalingMetricSpecification,
                  (JSON..=) "ScaleInCooldown" Prelude.<$> scaleInCooldown,
                  (JSON..=) "ScaleOutCooldown" Prelude.<$> scaleOutCooldown])))
instance Property "CustomizedScalingMetricSpecification" TargetTrackingConfigurationProperty where
  type PropertyType "CustomizedScalingMetricSpecification" TargetTrackingConfigurationProperty = CustomizedScalingMetricSpecificationProperty
  set newValue TargetTrackingConfigurationProperty {..}
    = TargetTrackingConfigurationProperty
        {customizedScalingMetricSpecification = Prelude.pure newValue, ..}
instance Property "DisableScaleIn" TargetTrackingConfigurationProperty where
  type PropertyType "DisableScaleIn" TargetTrackingConfigurationProperty = Value Prelude.Bool
  set newValue TargetTrackingConfigurationProperty {..}
    = TargetTrackingConfigurationProperty
        {disableScaleIn = Prelude.pure newValue, ..}
instance Property "EstimatedInstanceWarmup" TargetTrackingConfigurationProperty where
  type PropertyType "EstimatedInstanceWarmup" TargetTrackingConfigurationProperty = Value Prelude.Integer
  set newValue TargetTrackingConfigurationProperty {..}
    = TargetTrackingConfigurationProperty
        {estimatedInstanceWarmup = Prelude.pure newValue, ..}
instance Property "PredefinedScalingMetricSpecification" TargetTrackingConfigurationProperty where
  type PropertyType "PredefinedScalingMetricSpecification" TargetTrackingConfigurationProperty = PredefinedScalingMetricSpecificationProperty
  set newValue TargetTrackingConfigurationProperty {..}
    = TargetTrackingConfigurationProperty
        {predefinedScalingMetricSpecification = Prelude.pure newValue, ..}
instance Property "ScaleInCooldown" TargetTrackingConfigurationProperty where
  type PropertyType "ScaleInCooldown" TargetTrackingConfigurationProperty = Value Prelude.Integer
  set newValue TargetTrackingConfigurationProperty {..}
    = TargetTrackingConfigurationProperty
        {scaleInCooldown = Prelude.pure newValue, ..}
instance Property "ScaleOutCooldown" TargetTrackingConfigurationProperty where
  type PropertyType "ScaleOutCooldown" TargetTrackingConfigurationProperty = Value Prelude.Integer
  set newValue TargetTrackingConfigurationProperty {..}
    = TargetTrackingConfigurationProperty
        {scaleOutCooldown = Prelude.pure newValue, ..}
instance Property "TargetValue" TargetTrackingConfigurationProperty where
  type PropertyType "TargetValue" TargetTrackingConfigurationProperty = Value Prelude.Double
  set newValue TargetTrackingConfigurationProperty {..}
    = TargetTrackingConfigurationProperty {targetValue = newValue, ..}