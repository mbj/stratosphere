module Stratosphere.Cassandra.Table.TargetTrackingScalingPolicyConfigurationProperty (
        TargetTrackingScalingPolicyConfigurationProperty(..),
        mkTargetTrackingScalingPolicyConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TargetTrackingScalingPolicyConfigurationProperty
  = TargetTrackingScalingPolicyConfigurationProperty {disableScaleIn :: (Prelude.Maybe (Value Prelude.Bool)),
                                                      scaleInCooldown :: (Prelude.Maybe (Value Prelude.Integer)),
                                                      scaleOutCooldown :: (Prelude.Maybe (Value Prelude.Integer)),
                                                      targetValue :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTargetTrackingScalingPolicyConfigurationProperty ::
  Value Prelude.Integer
  -> TargetTrackingScalingPolicyConfigurationProperty
mkTargetTrackingScalingPolicyConfigurationProperty targetValue
  = TargetTrackingScalingPolicyConfigurationProperty
      {targetValue = targetValue, disableScaleIn = Prelude.Nothing,
       scaleInCooldown = Prelude.Nothing,
       scaleOutCooldown = Prelude.Nothing}
instance ToResourceProperties TargetTrackingScalingPolicyConfigurationProperty where
  toResourceProperties
    TargetTrackingScalingPolicyConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Cassandra::Table.TargetTrackingScalingPolicyConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["TargetValue" JSON..= targetValue]
                           (Prelude.catMaybes
                              [(JSON..=) "DisableScaleIn" Prelude.<$> disableScaleIn,
                               (JSON..=) "ScaleInCooldown" Prelude.<$> scaleInCooldown,
                               (JSON..=) "ScaleOutCooldown" Prelude.<$> scaleOutCooldown]))}
instance JSON.ToJSON TargetTrackingScalingPolicyConfigurationProperty where
  toJSON TargetTrackingScalingPolicyConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["TargetValue" JSON..= targetValue]
              (Prelude.catMaybes
                 [(JSON..=) "DisableScaleIn" Prelude.<$> disableScaleIn,
                  (JSON..=) "ScaleInCooldown" Prelude.<$> scaleInCooldown,
                  (JSON..=) "ScaleOutCooldown" Prelude.<$> scaleOutCooldown])))
instance Property "DisableScaleIn" TargetTrackingScalingPolicyConfigurationProperty where
  type PropertyType "DisableScaleIn" TargetTrackingScalingPolicyConfigurationProperty = Value Prelude.Bool
  set newValue TargetTrackingScalingPolicyConfigurationProperty {..}
    = TargetTrackingScalingPolicyConfigurationProperty
        {disableScaleIn = Prelude.pure newValue, ..}
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
  type PropertyType "TargetValue" TargetTrackingScalingPolicyConfigurationProperty = Value Prelude.Integer
  set newValue TargetTrackingScalingPolicyConfigurationProperty {..}
    = TargetTrackingScalingPolicyConfigurationProperty
        {targetValue = newValue, ..}