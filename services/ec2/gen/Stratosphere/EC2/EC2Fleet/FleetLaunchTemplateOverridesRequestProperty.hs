module Stratosphere.EC2.EC2Fleet.FleetLaunchTemplateOverridesRequestProperty (
        module Exports, FleetLaunchTemplateOverridesRequestProperty(..),
        mkFleetLaunchTemplateOverridesRequestProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EC2.EC2Fleet.InstanceRequirementsRequestProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.EC2Fleet.PlacementProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FleetLaunchTemplateOverridesRequestProperty
  = FleetLaunchTemplateOverridesRequestProperty {availabilityZone :: (Prelude.Maybe (Value Prelude.Text)),
                                                 instanceRequirements :: (Prelude.Maybe InstanceRequirementsRequestProperty),
                                                 instanceType :: (Prelude.Maybe (Value Prelude.Text)),
                                                 maxPrice :: (Prelude.Maybe (Value Prelude.Text)),
                                                 placement :: (Prelude.Maybe PlacementProperty),
                                                 priority :: (Prelude.Maybe (Value Prelude.Double)),
                                                 subnetId :: (Prelude.Maybe (Value Prelude.Text)),
                                                 weightedCapacity :: (Prelude.Maybe (Value Prelude.Double))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFleetLaunchTemplateOverridesRequestProperty ::
  FleetLaunchTemplateOverridesRequestProperty
mkFleetLaunchTemplateOverridesRequestProperty
  = FleetLaunchTemplateOverridesRequestProperty
      {availabilityZone = Prelude.Nothing,
       instanceRequirements = Prelude.Nothing,
       instanceType = Prelude.Nothing, maxPrice = Prelude.Nothing,
       placement = Prelude.Nothing, priority = Prelude.Nothing,
       subnetId = Prelude.Nothing, weightedCapacity = Prelude.Nothing}
instance ToResourceProperties FleetLaunchTemplateOverridesRequestProperty where
  toResourceProperties
    FleetLaunchTemplateOverridesRequestProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::EC2Fleet.FleetLaunchTemplateOverridesRequest",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AvailabilityZone" Prelude.<$> availabilityZone,
                            (JSON..=) "InstanceRequirements" Prelude.<$> instanceRequirements,
                            (JSON..=) "InstanceType" Prelude.<$> instanceType,
                            (JSON..=) "MaxPrice" Prelude.<$> maxPrice,
                            (JSON..=) "Placement" Prelude.<$> placement,
                            (JSON..=) "Priority" Prelude.<$> priority,
                            (JSON..=) "SubnetId" Prelude.<$> subnetId,
                            (JSON..=) "WeightedCapacity" Prelude.<$> weightedCapacity])}
instance JSON.ToJSON FleetLaunchTemplateOverridesRequestProperty where
  toJSON FleetLaunchTemplateOverridesRequestProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AvailabilityZone" Prelude.<$> availabilityZone,
               (JSON..=) "InstanceRequirements" Prelude.<$> instanceRequirements,
               (JSON..=) "InstanceType" Prelude.<$> instanceType,
               (JSON..=) "MaxPrice" Prelude.<$> maxPrice,
               (JSON..=) "Placement" Prelude.<$> placement,
               (JSON..=) "Priority" Prelude.<$> priority,
               (JSON..=) "SubnetId" Prelude.<$> subnetId,
               (JSON..=) "WeightedCapacity" Prelude.<$> weightedCapacity]))
instance Property "AvailabilityZone" FleetLaunchTemplateOverridesRequestProperty where
  type PropertyType "AvailabilityZone" FleetLaunchTemplateOverridesRequestProperty = Value Prelude.Text
  set newValue FleetLaunchTemplateOverridesRequestProperty {..}
    = FleetLaunchTemplateOverridesRequestProperty
        {availabilityZone = Prelude.pure newValue, ..}
instance Property "InstanceRequirements" FleetLaunchTemplateOverridesRequestProperty where
  type PropertyType "InstanceRequirements" FleetLaunchTemplateOverridesRequestProperty = InstanceRequirementsRequestProperty
  set newValue FleetLaunchTemplateOverridesRequestProperty {..}
    = FleetLaunchTemplateOverridesRequestProperty
        {instanceRequirements = Prelude.pure newValue, ..}
instance Property "InstanceType" FleetLaunchTemplateOverridesRequestProperty where
  type PropertyType "InstanceType" FleetLaunchTemplateOverridesRequestProperty = Value Prelude.Text
  set newValue FleetLaunchTemplateOverridesRequestProperty {..}
    = FleetLaunchTemplateOverridesRequestProperty
        {instanceType = Prelude.pure newValue, ..}
instance Property "MaxPrice" FleetLaunchTemplateOverridesRequestProperty where
  type PropertyType "MaxPrice" FleetLaunchTemplateOverridesRequestProperty = Value Prelude.Text
  set newValue FleetLaunchTemplateOverridesRequestProperty {..}
    = FleetLaunchTemplateOverridesRequestProperty
        {maxPrice = Prelude.pure newValue, ..}
instance Property "Placement" FleetLaunchTemplateOverridesRequestProperty where
  type PropertyType "Placement" FleetLaunchTemplateOverridesRequestProperty = PlacementProperty
  set newValue FleetLaunchTemplateOverridesRequestProperty {..}
    = FleetLaunchTemplateOverridesRequestProperty
        {placement = Prelude.pure newValue, ..}
instance Property "Priority" FleetLaunchTemplateOverridesRequestProperty where
  type PropertyType "Priority" FleetLaunchTemplateOverridesRequestProperty = Value Prelude.Double
  set newValue FleetLaunchTemplateOverridesRequestProperty {..}
    = FleetLaunchTemplateOverridesRequestProperty
        {priority = Prelude.pure newValue, ..}
instance Property "SubnetId" FleetLaunchTemplateOverridesRequestProperty where
  type PropertyType "SubnetId" FleetLaunchTemplateOverridesRequestProperty = Value Prelude.Text
  set newValue FleetLaunchTemplateOverridesRequestProperty {..}
    = FleetLaunchTemplateOverridesRequestProperty
        {subnetId = Prelude.pure newValue, ..}
instance Property "WeightedCapacity" FleetLaunchTemplateOverridesRequestProperty where
  type PropertyType "WeightedCapacity" FleetLaunchTemplateOverridesRequestProperty = Value Prelude.Double
  set newValue FleetLaunchTemplateOverridesRequestProperty {..}
    = FleetLaunchTemplateOverridesRequestProperty
        {weightedCapacity = Prelude.pure newValue, ..}