module Stratosphere.AutoScaling.AutoScalingGroup.InstanceMaintenancePolicyProperty (
        InstanceMaintenancePolicyProperty(..),
        mkInstanceMaintenancePolicyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data InstanceMaintenancePolicyProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-instancemaintenancepolicy.html>
    InstanceMaintenancePolicyProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-instancemaintenancepolicy.html#cfn-autoscaling-autoscalinggroup-instancemaintenancepolicy-maxhealthypercentage>
                                       maxHealthyPercentage :: (Prelude.Maybe (Value Prelude.Integer)),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-instancemaintenancepolicy.html#cfn-autoscaling-autoscalinggroup-instancemaintenancepolicy-minhealthypercentage>
                                       minHealthyPercentage :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInstanceMaintenancePolicyProperty ::
  InstanceMaintenancePolicyProperty
mkInstanceMaintenancePolicyProperty
  = InstanceMaintenancePolicyProperty
      {haddock_workaround_ = (), maxHealthyPercentage = Prelude.Nothing,
       minHealthyPercentage = Prelude.Nothing}
instance ToResourceProperties InstanceMaintenancePolicyProperty where
  toResourceProperties InstanceMaintenancePolicyProperty {..}
    = ResourceProperties
        {awsType = "AWS::AutoScaling::AutoScalingGroup.InstanceMaintenancePolicy",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "MaxHealthyPercentage" Prelude.<$> maxHealthyPercentage,
                            (JSON..=) "MinHealthyPercentage"
                              Prelude.<$> minHealthyPercentage])}
instance JSON.ToJSON InstanceMaintenancePolicyProperty where
  toJSON InstanceMaintenancePolicyProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "MaxHealthyPercentage" Prelude.<$> maxHealthyPercentage,
               (JSON..=) "MinHealthyPercentage"
                 Prelude.<$> minHealthyPercentage]))
instance Property "MaxHealthyPercentage" InstanceMaintenancePolicyProperty where
  type PropertyType "MaxHealthyPercentage" InstanceMaintenancePolicyProperty = Value Prelude.Integer
  set newValue InstanceMaintenancePolicyProperty {..}
    = InstanceMaintenancePolicyProperty
        {maxHealthyPercentage = Prelude.pure newValue, ..}
instance Property "MinHealthyPercentage" InstanceMaintenancePolicyProperty where
  type PropertyType "MinHealthyPercentage" InstanceMaintenancePolicyProperty = Value Prelude.Integer
  set newValue InstanceMaintenancePolicyProperty {..}
    = InstanceMaintenancePolicyProperty
        {minHealthyPercentage = Prelude.pure newValue, ..}