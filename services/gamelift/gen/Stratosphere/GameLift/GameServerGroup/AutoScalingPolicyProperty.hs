module Stratosphere.GameLift.GameServerGroup.AutoScalingPolicyProperty (
        module Exports, AutoScalingPolicyProperty(..),
        mkAutoScalingPolicyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.GameLift.GameServerGroup.TargetTrackingConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AutoScalingPolicyProperty
  = AutoScalingPolicyProperty {estimatedInstanceWarmup :: (Prelude.Maybe (Value Prelude.Double)),
                               targetTrackingConfiguration :: TargetTrackingConfigurationProperty}
mkAutoScalingPolicyProperty ::
  TargetTrackingConfigurationProperty -> AutoScalingPolicyProperty
mkAutoScalingPolicyProperty targetTrackingConfiguration
  = AutoScalingPolicyProperty
      {targetTrackingConfiguration = targetTrackingConfiguration,
       estimatedInstanceWarmup = Prelude.Nothing}
instance ToResourceProperties AutoScalingPolicyProperty where
  toResourceProperties AutoScalingPolicyProperty {..}
    = ResourceProperties
        {awsType = "AWS::GameLift::GameServerGroup.AutoScalingPolicy",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["TargetTrackingConfiguration" JSON..= targetTrackingConfiguration]
                           (Prelude.catMaybes
                              [(JSON..=) "EstimatedInstanceWarmup"
                                 Prelude.<$> estimatedInstanceWarmup]))}
instance JSON.ToJSON AutoScalingPolicyProperty where
  toJSON AutoScalingPolicyProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["TargetTrackingConfiguration" JSON..= targetTrackingConfiguration]
              (Prelude.catMaybes
                 [(JSON..=) "EstimatedInstanceWarmup"
                    Prelude.<$> estimatedInstanceWarmup])))
instance Property "EstimatedInstanceWarmup" AutoScalingPolicyProperty where
  type PropertyType "EstimatedInstanceWarmup" AutoScalingPolicyProperty = Value Prelude.Double
  set newValue AutoScalingPolicyProperty {..}
    = AutoScalingPolicyProperty
        {estimatedInstanceWarmup = Prelude.pure newValue, ..}
instance Property "TargetTrackingConfiguration" AutoScalingPolicyProperty where
  type PropertyType "TargetTrackingConfiguration" AutoScalingPolicyProperty = TargetTrackingConfigurationProperty
  set newValue AutoScalingPolicyProperty {..}
    = AutoScalingPolicyProperty
        {targetTrackingConfiguration = newValue, ..}