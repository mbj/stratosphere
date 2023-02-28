module Stratosphere.EC2.LaunchTemplate.PlacementProperty (
        PlacementProperty(..), mkPlacementProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PlacementProperty
  = PlacementProperty {affinity :: (Prelude.Maybe (Value Prelude.Text)),
                       availabilityZone :: (Prelude.Maybe (Value Prelude.Text)),
                       groupId :: (Prelude.Maybe (Value Prelude.Text)),
                       groupName :: (Prelude.Maybe (Value Prelude.Text)),
                       hostId :: (Prelude.Maybe (Value Prelude.Text)),
                       hostResourceGroupArn :: (Prelude.Maybe (Value Prelude.Text)),
                       partitionNumber :: (Prelude.Maybe (Value Prelude.Integer)),
                       spreadDomain :: (Prelude.Maybe (Value Prelude.Text)),
                       tenancy :: (Prelude.Maybe (Value Prelude.Text))}
mkPlacementProperty :: PlacementProperty
mkPlacementProperty
  = PlacementProperty
      {affinity = Prelude.Nothing, availabilityZone = Prelude.Nothing,
       groupId = Prelude.Nothing, groupName = Prelude.Nothing,
       hostId = Prelude.Nothing, hostResourceGroupArn = Prelude.Nothing,
       partitionNumber = Prelude.Nothing, spreadDomain = Prelude.Nothing,
       tenancy = Prelude.Nothing}
instance ToResourceProperties PlacementProperty where
  toResourceProperties PlacementProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::LaunchTemplate.Placement",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Affinity" Prelude.<$> affinity,
                            (JSON..=) "AvailabilityZone" Prelude.<$> availabilityZone,
                            (JSON..=) "GroupId" Prelude.<$> groupId,
                            (JSON..=) "GroupName" Prelude.<$> groupName,
                            (JSON..=) "HostId" Prelude.<$> hostId,
                            (JSON..=) "HostResourceGroupArn" Prelude.<$> hostResourceGroupArn,
                            (JSON..=) "PartitionNumber" Prelude.<$> partitionNumber,
                            (JSON..=) "SpreadDomain" Prelude.<$> spreadDomain,
                            (JSON..=) "Tenancy" Prelude.<$> tenancy])}
instance JSON.ToJSON PlacementProperty where
  toJSON PlacementProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Affinity" Prelude.<$> affinity,
               (JSON..=) "AvailabilityZone" Prelude.<$> availabilityZone,
               (JSON..=) "GroupId" Prelude.<$> groupId,
               (JSON..=) "GroupName" Prelude.<$> groupName,
               (JSON..=) "HostId" Prelude.<$> hostId,
               (JSON..=) "HostResourceGroupArn" Prelude.<$> hostResourceGroupArn,
               (JSON..=) "PartitionNumber" Prelude.<$> partitionNumber,
               (JSON..=) "SpreadDomain" Prelude.<$> spreadDomain,
               (JSON..=) "Tenancy" Prelude.<$> tenancy]))
instance Property "Affinity" PlacementProperty where
  type PropertyType "Affinity" PlacementProperty = Value Prelude.Text
  set newValue PlacementProperty {..}
    = PlacementProperty {affinity = Prelude.pure newValue, ..}
instance Property "AvailabilityZone" PlacementProperty where
  type PropertyType "AvailabilityZone" PlacementProperty = Value Prelude.Text
  set newValue PlacementProperty {..}
    = PlacementProperty {availabilityZone = Prelude.pure newValue, ..}
instance Property "GroupId" PlacementProperty where
  type PropertyType "GroupId" PlacementProperty = Value Prelude.Text
  set newValue PlacementProperty {..}
    = PlacementProperty {groupId = Prelude.pure newValue, ..}
instance Property "GroupName" PlacementProperty where
  type PropertyType "GroupName" PlacementProperty = Value Prelude.Text
  set newValue PlacementProperty {..}
    = PlacementProperty {groupName = Prelude.pure newValue, ..}
instance Property "HostId" PlacementProperty where
  type PropertyType "HostId" PlacementProperty = Value Prelude.Text
  set newValue PlacementProperty {..}
    = PlacementProperty {hostId = Prelude.pure newValue, ..}
instance Property "HostResourceGroupArn" PlacementProperty where
  type PropertyType "HostResourceGroupArn" PlacementProperty = Value Prelude.Text
  set newValue PlacementProperty {..}
    = PlacementProperty
        {hostResourceGroupArn = Prelude.pure newValue, ..}
instance Property "PartitionNumber" PlacementProperty where
  type PropertyType "PartitionNumber" PlacementProperty = Value Prelude.Integer
  set newValue PlacementProperty {..}
    = PlacementProperty {partitionNumber = Prelude.pure newValue, ..}
instance Property "SpreadDomain" PlacementProperty where
  type PropertyType "SpreadDomain" PlacementProperty = Value Prelude.Text
  set newValue PlacementProperty {..}
    = PlacementProperty {spreadDomain = Prelude.pure newValue, ..}
instance Property "Tenancy" PlacementProperty where
  type PropertyType "Tenancy" PlacementProperty = Value Prelude.Text
  set newValue PlacementProperty {..}
    = PlacementProperty {tenancy = Prelude.pure newValue, ..}