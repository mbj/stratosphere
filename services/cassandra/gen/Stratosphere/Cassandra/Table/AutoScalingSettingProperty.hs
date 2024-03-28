module Stratosphere.Cassandra.Table.AutoScalingSettingProperty (
        module Exports, AutoScalingSettingProperty(..),
        mkAutoScalingSettingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Cassandra.Table.ScalingPolicyProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AutoScalingSettingProperty
  = AutoScalingSettingProperty {autoScalingDisabled :: (Prelude.Maybe (Value Prelude.Bool)),
                                maximumUnits :: (Prelude.Maybe (Value Prelude.Integer)),
                                minimumUnits :: (Prelude.Maybe (Value Prelude.Integer)),
                                scalingPolicy :: (Prelude.Maybe ScalingPolicyProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAutoScalingSettingProperty :: AutoScalingSettingProperty
mkAutoScalingSettingProperty
  = AutoScalingSettingProperty
      {autoScalingDisabled = Prelude.Nothing,
       maximumUnits = Prelude.Nothing, minimumUnits = Prelude.Nothing,
       scalingPolicy = Prelude.Nothing}
instance ToResourceProperties AutoScalingSettingProperty where
  toResourceProperties AutoScalingSettingProperty {..}
    = ResourceProperties
        {awsType = "AWS::Cassandra::Table.AutoScalingSetting",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AutoScalingDisabled" Prelude.<$> autoScalingDisabled,
                            (JSON..=) "MaximumUnits" Prelude.<$> maximumUnits,
                            (JSON..=) "MinimumUnits" Prelude.<$> minimumUnits,
                            (JSON..=) "ScalingPolicy" Prelude.<$> scalingPolicy])}
instance JSON.ToJSON AutoScalingSettingProperty where
  toJSON AutoScalingSettingProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AutoScalingDisabled" Prelude.<$> autoScalingDisabled,
               (JSON..=) "MaximumUnits" Prelude.<$> maximumUnits,
               (JSON..=) "MinimumUnits" Prelude.<$> minimumUnits,
               (JSON..=) "ScalingPolicy" Prelude.<$> scalingPolicy]))
instance Property "AutoScalingDisabled" AutoScalingSettingProperty where
  type PropertyType "AutoScalingDisabled" AutoScalingSettingProperty = Value Prelude.Bool
  set newValue AutoScalingSettingProperty {..}
    = AutoScalingSettingProperty
        {autoScalingDisabled = Prelude.pure newValue, ..}
instance Property "MaximumUnits" AutoScalingSettingProperty where
  type PropertyType "MaximumUnits" AutoScalingSettingProperty = Value Prelude.Integer
  set newValue AutoScalingSettingProperty {..}
    = AutoScalingSettingProperty
        {maximumUnits = Prelude.pure newValue, ..}
instance Property "MinimumUnits" AutoScalingSettingProperty where
  type PropertyType "MinimumUnits" AutoScalingSettingProperty = Value Prelude.Integer
  set newValue AutoScalingSettingProperty {..}
    = AutoScalingSettingProperty
        {minimumUnits = Prelude.pure newValue, ..}
instance Property "ScalingPolicy" AutoScalingSettingProperty where
  type PropertyType "ScalingPolicy" AutoScalingSettingProperty = ScalingPolicyProperty
  set newValue AutoScalingSettingProperty {..}
    = AutoScalingSettingProperty
        {scalingPolicy = Prelude.pure newValue, ..}