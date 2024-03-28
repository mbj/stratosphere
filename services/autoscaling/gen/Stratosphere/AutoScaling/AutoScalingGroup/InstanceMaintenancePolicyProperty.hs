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
  = InstanceMaintenancePolicyProperty {maxHealthyPercentage :: (Prelude.Maybe (Value Prelude.Integer)),
                                       minHealthyPercentage :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInstanceMaintenancePolicyProperty ::
  InstanceMaintenancePolicyProperty
mkInstanceMaintenancePolicyProperty
  = InstanceMaintenancePolicyProperty
      {maxHealthyPercentage = Prelude.Nothing,
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