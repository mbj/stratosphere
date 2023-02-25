module Stratosphere.AutoScaling.AutoScalingGroup.MixedInstancesPolicyProperty (
        module Exports, MixedInstancesPolicyProperty(..),
        mkMixedInstancesPolicyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AutoScaling.AutoScalingGroup.InstancesDistributionProperty as Exports
import {-# SOURCE #-} Stratosphere.AutoScaling.AutoScalingGroup.LaunchTemplateProperty as Exports
import Stratosphere.ResourceProperties
data MixedInstancesPolicyProperty
  = MixedInstancesPolicyProperty {instancesDistribution :: (Prelude.Maybe InstancesDistributionProperty),
                                  launchTemplate :: LaunchTemplateProperty}
mkMixedInstancesPolicyProperty ::
  LaunchTemplateProperty -> MixedInstancesPolicyProperty
mkMixedInstancesPolicyProperty launchTemplate
  = MixedInstancesPolicyProperty
      {launchTemplate = launchTemplate,
       instancesDistribution = Prelude.Nothing}
instance ToResourceProperties MixedInstancesPolicyProperty where
  toResourceProperties MixedInstancesPolicyProperty {..}
    = ResourceProperties
        {awsType = "AWS::AutoScaling::AutoScalingGroup.MixedInstancesPolicy",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["LaunchTemplate" JSON..= launchTemplate]
                           (Prelude.catMaybes
                              [(JSON..=) "InstancesDistribution"
                                 Prelude.<$> instancesDistribution]))}
instance JSON.ToJSON MixedInstancesPolicyProperty where
  toJSON MixedInstancesPolicyProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["LaunchTemplate" JSON..= launchTemplate]
              (Prelude.catMaybes
                 [(JSON..=) "InstancesDistribution"
                    Prelude.<$> instancesDistribution])))
instance Property "InstancesDistribution" MixedInstancesPolicyProperty where
  type PropertyType "InstancesDistribution" MixedInstancesPolicyProperty = InstancesDistributionProperty
  set newValue MixedInstancesPolicyProperty {..}
    = MixedInstancesPolicyProperty
        {instancesDistribution = Prelude.pure newValue, ..}
instance Property "LaunchTemplate" MixedInstancesPolicyProperty where
  type PropertyType "LaunchTemplate" MixedInstancesPolicyProperty = LaunchTemplateProperty
  set newValue MixedInstancesPolicyProperty {..}
    = MixedInstancesPolicyProperty {launchTemplate = newValue, ..}