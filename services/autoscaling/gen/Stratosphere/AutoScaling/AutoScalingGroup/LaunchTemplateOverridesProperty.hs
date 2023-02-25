module Stratosphere.AutoScaling.AutoScalingGroup.LaunchTemplateOverridesProperty (
        module Exports, LaunchTemplateOverridesProperty(..),
        mkLaunchTemplateOverridesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AutoScaling.AutoScalingGroup.InstanceRequirementsProperty as Exports
import {-# SOURCE #-} Stratosphere.AutoScaling.AutoScalingGroup.LaunchTemplateSpecificationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LaunchTemplateOverridesProperty
  = LaunchTemplateOverridesProperty {instanceRequirements :: (Prelude.Maybe InstanceRequirementsProperty),
                                     instanceType :: (Prelude.Maybe (Value Prelude.Text)),
                                     launchTemplateSpecification :: (Prelude.Maybe LaunchTemplateSpecificationProperty),
                                     weightedCapacity :: (Prelude.Maybe (Value Prelude.Text))}
mkLaunchTemplateOverridesProperty ::
  LaunchTemplateOverridesProperty
mkLaunchTemplateOverridesProperty
  = LaunchTemplateOverridesProperty
      {instanceRequirements = Prelude.Nothing,
       instanceType = Prelude.Nothing,
       launchTemplateSpecification = Prelude.Nothing,
       weightedCapacity = Prelude.Nothing}
instance ToResourceProperties LaunchTemplateOverridesProperty where
  toResourceProperties LaunchTemplateOverridesProperty {..}
    = ResourceProperties
        {awsType = "AWS::AutoScaling::AutoScalingGroup.LaunchTemplateOverrides",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "InstanceRequirements" Prelude.<$> instanceRequirements,
                            (JSON..=) "InstanceType" Prelude.<$> instanceType,
                            (JSON..=) "LaunchTemplateSpecification"
                              Prelude.<$> launchTemplateSpecification,
                            (JSON..=) "WeightedCapacity" Prelude.<$> weightedCapacity])}
instance JSON.ToJSON LaunchTemplateOverridesProperty where
  toJSON LaunchTemplateOverridesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "InstanceRequirements" Prelude.<$> instanceRequirements,
               (JSON..=) "InstanceType" Prelude.<$> instanceType,
               (JSON..=) "LaunchTemplateSpecification"
                 Prelude.<$> launchTemplateSpecification,
               (JSON..=) "WeightedCapacity" Prelude.<$> weightedCapacity]))
instance Property "InstanceRequirements" LaunchTemplateOverridesProperty where
  type PropertyType "InstanceRequirements" LaunchTemplateOverridesProperty = InstanceRequirementsProperty
  set newValue LaunchTemplateOverridesProperty {..}
    = LaunchTemplateOverridesProperty
        {instanceRequirements = Prelude.pure newValue, ..}
instance Property "InstanceType" LaunchTemplateOverridesProperty where
  type PropertyType "InstanceType" LaunchTemplateOverridesProperty = Value Prelude.Text
  set newValue LaunchTemplateOverridesProperty {..}
    = LaunchTemplateOverridesProperty
        {instanceType = Prelude.pure newValue, ..}
instance Property "LaunchTemplateSpecification" LaunchTemplateOverridesProperty where
  type PropertyType "LaunchTemplateSpecification" LaunchTemplateOverridesProperty = LaunchTemplateSpecificationProperty
  set newValue LaunchTemplateOverridesProperty {..}
    = LaunchTemplateOverridesProperty
        {launchTemplateSpecification = Prelude.pure newValue, ..}
instance Property "WeightedCapacity" LaunchTemplateOverridesProperty where
  type PropertyType "WeightedCapacity" LaunchTemplateOverridesProperty = Value Prelude.Text
  set newValue LaunchTemplateOverridesProperty {..}
    = LaunchTemplateOverridesProperty
        {weightedCapacity = Prelude.pure newValue, ..}