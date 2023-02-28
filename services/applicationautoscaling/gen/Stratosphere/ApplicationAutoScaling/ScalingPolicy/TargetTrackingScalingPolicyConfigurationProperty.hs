module Stratosphere.ApplicationAutoScaling.ScalingPolicy.TargetTrackingScalingPolicyConfigurationProperty (
        module Exports,
        TargetTrackingScalingPolicyConfigurationProperty(..),
        mkTargetTrackingScalingPolicyConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ApplicationAutoScaling.ScalingPolicy.CustomizedMetricSpecificationProperty as Exports
import {-# SOURCE #-} Stratosphere.ApplicationAutoScaling.ScalingPolicy.PredefinedMetricSpecificationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TargetTrackingScalingPolicyConfigurationProperty
  = TargetTrackingScalingPolicyConfigurationProperty {customizedMetricSpecification :: (Prelude.Maybe CustomizedMetricSpecificationProperty),
                                                      disableScaleIn :: (Prelude.Maybe (Value Prelude.Bool)),
                                                      predefinedMetricSpecification :: (Prelude.Maybe PredefinedMetricSpecificationProperty),
                                                      scaleInCooldown :: (Prelude.Maybe (Value Prelude.Integer)),
                                                      scaleOutCooldown :: (Prelude.Maybe (Value Prelude.Integer)),
                                                      targetValue :: (Value Prelude.Double)}
mkTargetTrackingScalingPolicyConfigurationProperty ::
  Value Prelude.Double
  -> TargetTrackingScalingPolicyConfigurationProperty
mkTargetTrackingScalingPolicyConfigurationProperty targetValue
  = TargetTrackingScalingPolicyConfigurationProperty
      {targetValue = targetValue,
       customizedMetricSpecification = Prelude.Nothing,
       disableScaleIn = Prelude.Nothing,
       predefinedMetricSpecification = Prelude.Nothing,
       scaleInCooldown = Prelude.Nothing,
       scaleOutCooldown = Prelude.Nothing}
instance ToResourceProperties TargetTrackingScalingPolicyConfigurationProperty where
  toResourceProperties
    TargetTrackingScalingPolicyConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::ApplicationAutoScaling::ScalingPolicy.TargetTrackingScalingPolicyConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["TargetValue" JSON..= targetValue]
                           (Prelude.catMaybes
                              [(JSON..=) "CustomizedMetricSpecification"
                                 Prelude.<$> customizedMetricSpecification,
                               (JSON..=) "DisableScaleIn" Prelude.<$> disableScaleIn,
                               (JSON..=) "PredefinedMetricSpecification"
                                 Prelude.<$> predefinedMetricSpecification,
                               (JSON..=) "ScaleInCooldown" Prelude.<$> scaleInCooldown,
                               (JSON..=) "ScaleOutCooldown" Prelude.<$> scaleOutCooldown]))}
instance JSON.ToJSON TargetTrackingScalingPolicyConfigurationProperty where
  toJSON TargetTrackingScalingPolicyConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["TargetValue" JSON..= targetValue]
              (Prelude.catMaybes
                 [(JSON..=) "CustomizedMetricSpecification"
                    Prelude.<$> customizedMetricSpecification,
                  (JSON..=) "DisableScaleIn" Prelude.<$> disableScaleIn,
                  (JSON..=) "PredefinedMetricSpecification"
                    Prelude.<$> predefinedMetricSpecification,
                  (JSON..=) "ScaleInCooldown" Prelude.<$> scaleInCooldown,
                  (JSON..=) "ScaleOutCooldown" Prelude.<$> scaleOutCooldown])))
instance Property "CustomizedMetricSpecification" TargetTrackingScalingPolicyConfigurationProperty where
  type PropertyType "CustomizedMetricSpecification" TargetTrackingScalingPolicyConfigurationProperty = CustomizedMetricSpecificationProperty
  set newValue TargetTrackingScalingPolicyConfigurationProperty {..}
    = TargetTrackingScalingPolicyConfigurationProperty
        {customizedMetricSpecification = Prelude.pure newValue, ..}
instance Property "DisableScaleIn" TargetTrackingScalingPolicyConfigurationProperty where
  type PropertyType "DisableScaleIn" TargetTrackingScalingPolicyConfigurationProperty = Value Prelude.Bool
  set newValue TargetTrackingScalingPolicyConfigurationProperty {..}
    = TargetTrackingScalingPolicyConfigurationProperty
        {disableScaleIn = Prelude.pure newValue, ..}
instance Property "PredefinedMetricSpecification" TargetTrackingScalingPolicyConfigurationProperty where
  type PropertyType "PredefinedMetricSpecification" TargetTrackingScalingPolicyConfigurationProperty = PredefinedMetricSpecificationProperty
  set newValue TargetTrackingScalingPolicyConfigurationProperty {..}
    = TargetTrackingScalingPolicyConfigurationProperty
        {predefinedMetricSpecification = Prelude.pure newValue, ..}
instance Property "ScaleInCooldown" TargetTrackingScalingPolicyConfigurationProperty where
  type PropertyType "ScaleInCooldown" TargetTrackingScalingPolicyConfigurationProperty = Value Prelude.Integer
  set newValue TargetTrackingScalingPolicyConfigurationProperty {..}
    = TargetTrackingScalingPolicyConfigurationProperty
        {scaleInCooldown = Prelude.pure newValue, ..}
instance Property "ScaleOutCooldown" TargetTrackingScalingPolicyConfigurationProperty where
  type PropertyType "ScaleOutCooldown" TargetTrackingScalingPolicyConfigurationProperty = Value Prelude.Integer
  set newValue TargetTrackingScalingPolicyConfigurationProperty {..}
    = TargetTrackingScalingPolicyConfigurationProperty
        {scaleOutCooldown = Prelude.pure newValue, ..}
instance Property "TargetValue" TargetTrackingScalingPolicyConfigurationProperty where
  type PropertyType "TargetValue" TargetTrackingScalingPolicyConfigurationProperty = Value Prelude.Double
  set newValue TargetTrackingScalingPolicyConfigurationProperty {..}
    = TargetTrackingScalingPolicyConfigurationProperty
        {targetValue = newValue, ..}