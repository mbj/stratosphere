module Stratosphere.WorkspacesInstances.WorkspaceInstance.PlacementProperty (
        PlacementProperty(..), mkPlacementProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PlacementProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesinstances-workspaceinstance-placement.html>
    PlacementProperty {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesinstances-workspaceinstance-placement.html#cfn-workspacesinstances-workspaceinstance-placement-availabilityzone>
                       availabilityZone :: (Prelude.Maybe (Value Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesinstances-workspaceinstance-placement.html#cfn-workspacesinstances-workspaceinstance-placement-groupid>
                       groupId :: (Prelude.Maybe (Value Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesinstances-workspaceinstance-placement.html#cfn-workspacesinstances-workspaceinstance-placement-groupname>
                       groupName :: (Prelude.Maybe (Value Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesinstances-workspaceinstance-placement.html#cfn-workspacesinstances-workspaceinstance-placement-partitionnumber>
                       partitionNumber :: (Prelude.Maybe (Value Prelude.Integer)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesinstances-workspaceinstance-placement.html#cfn-workspacesinstances-workspaceinstance-placement-tenancy>
                       tenancy :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPlacementProperty :: PlacementProperty
mkPlacementProperty
  = PlacementProperty
      {haddock_workaround_ = (), availabilityZone = Prelude.Nothing,
       groupId = Prelude.Nothing, groupName = Prelude.Nothing,
       partitionNumber = Prelude.Nothing, tenancy = Prelude.Nothing}
instance ToResourceProperties PlacementProperty where
  toResourceProperties PlacementProperty {..}
    = ResourceProperties
        {awsType = "AWS::WorkspacesInstances::WorkspaceInstance.Placement",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AvailabilityZone" Prelude.<$> availabilityZone,
                            (JSON..=) "GroupId" Prelude.<$> groupId,
                            (JSON..=) "GroupName" Prelude.<$> groupName,
                            (JSON..=) "PartitionNumber" Prelude.<$> partitionNumber,
                            (JSON..=) "Tenancy" Prelude.<$> tenancy])}
instance JSON.ToJSON PlacementProperty where
  toJSON PlacementProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AvailabilityZone" Prelude.<$> availabilityZone,
               (JSON..=) "GroupId" Prelude.<$> groupId,
               (JSON..=) "GroupName" Prelude.<$> groupName,
               (JSON..=) "PartitionNumber" Prelude.<$> partitionNumber,
               (JSON..=) "Tenancy" Prelude.<$> tenancy]))
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
instance Property "PartitionNumber" PlacementProperty where
  type PropertyType "PartitionNumber" PlacementProperty = Value Prelude.Integer
  set newValue PlacementProperty {..}
    = PlacementProperty {partitionNumber = Prelude.pure newValue, ..}
instance Property "Tenancy" PlacementProperty where
  type PropertyType "Tenancy" PlacementProperty = Value Prelude.Text
  set newValue PlacementProperty {..}
    = PlacementProperty {tenancy = Prelude.pure newValue, ..}