module Stratosphere.CodeBuild.Fleet.ScalingConfigurationInputProperty (
        module Exports, ScalingConfigurationInputProperty(..),
        mkScalingConfigurationInputProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CodeBuild.Fleet.TargetTrackingScalingConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ScalingConfigurationInputProperty
  = ScalingConfigurationInputProperty {maxCapacity :: (Prelude.Maybe (Value Prelude.Integer)),
                                       scalingType :: (Prelude.Maybe (Value Prelude.Text)),
                                       targetTrackingScalingConfigs :: (Prelude.Maybe [TargetTrackingScalingConfigurationProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkScalingConfigurationInputProperty ::
  ScalingConfigurationInputProperty
mkScalingConfigurationInputProperty
  = ScalingConfigurationInputProperty
      {maxCapacity = Prelude.Nothing, scalingType = Prelude.Nothing,
       targetTrackingScalingConfigs = Prelude.Nothing}
instance ToResourceProperties ScalingConfigurationInputProperty where
  toResourceProperties ScalingConfigurationInputProperty {..}
    = ResourceProperties
        {awsType = "AWS::CodeBuild::Fleet.ScalingConfigurationInput",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "MaxCapacity" Prelude.<$> maxCapacity,
                            (JSON..=) "ScalingType" Prelude.<$> scalingType,
                            (JSON..=) "TargetTrackingScalingConfigs"
                              Prelude.<$> targetTrackingScalingConfigs])}
instance JSON.ToJSON ScalingConfigurationInputProperty where
  toJSON ScalingConfigurationInputProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "MaxCapacity" Prelude.<$> maxCapacity,
               (JSON..=) "ScalingType" Prelude.<$> scalingType,
               (JSON..=) "TargetTrackingScalingConfigs"
                 Prelude.<$> targetTrackingScalingConfigs]))
instance Property "MaxCapacity" ScalingConfigurationInputProperty where
  type PropertyType "MaxCapacity" ScalingConfigurationInputProperty = Value Prelude.Integer
  set newValue ScalingConfigurationInputProperty {..}
    = ScalingConfigurationInputProperty
        {maxCapacity = Prelude.pure newValue, ..}
instance Property "ScalingType" ScalingConfigurationInputProperty where
  type PropertyType "ScalingType" ScalingConfigurationInputProperty = Value Prelude.Text
  set newValue ScalingConfigurationInputProperty {..}
    = ScalingConfigurationInputProperty
        {scalingType = Prelude.pure newValue, ..}
instance Property "TargetTrackingScalingConfigs" ScalingConfigurationInputProperty where
  type PropertyType "TargetTrackingScalingConfigs" ScalingConfigurationInputProperty = [TargetTrackingScalingConfigurationProperty]
  set newValue ScalingConfigurationInputProperty {..}
    = ScalingConfigurationInputProperty
        {targetTrackingScalingConfigs = Prelude.pure newValue, ..}