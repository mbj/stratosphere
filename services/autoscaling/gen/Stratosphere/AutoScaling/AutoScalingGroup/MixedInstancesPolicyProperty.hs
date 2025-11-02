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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-mixedinstancespolicy.html>
    MixedInstancesPolicyProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-mixedinstancespolicy.html#cfn-autoscaling-autoscalinggroup-mixedinstancespolicy-instancesdistribution>
                                  instancesDistribution :: (Prelude.Maybe InstancesDistributionProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-mixedinstancespolicy.html#cfn-autoscaling-autoscalinggroup-mixedinstancespolicy-launchtemplate>
                                  launchTemplate :: LaunchTemplateProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMixedInstancesPolicyProperty ::
  LaunchTemplateProperty -> MixedInstancesPolicyProperty
mkMixedInstancesPolicyProperty launchTemplate
  = MixedInstancesPolicyProperty
      {haddock_workaround_ = (), launchTemplate = launchTemplate,
       instancesDistribution = Prelude.Nothing}
instance ToResourceProperties MixedInstancesPolicyProperty where
  toResourceProperties MixedInstancesPolicyProperty {..}
    = ResourceProperties
        {awsType = "AWS::AutoScaling::AutoScalingGroup.MixedInstancesPolicy",
         supportsTags = Prelude.False,
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