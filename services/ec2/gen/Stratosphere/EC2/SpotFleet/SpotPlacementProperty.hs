module Stratosphere.EC2.SpotFleet.SpotPlacementProperty (
        SpotPlacementProperty(..), mkSpotPlacementProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SpotPlacementProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotplacement.html>
    SpotPlacementProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotplacement.html#cfn-ec2-spotfleet-spotplacement-availabilityzone>
                           availabilityZone :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotplacement.html#cfn-ec2-spotfleet-spotplacement-groupname>
                           groupName :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotplacement.html#cfn-ec2-spotfleet-spotplacement-tenancy>
                           tenancy :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSpotPlacementProperty :: SpotPlacementProperty
mkSpotPlacementProperty
  = SpotPlacementProperty
      {haddock_workaround_ = (), availabilityZone = Prelude.Nothing,
       groupName = Prelude.Nothing, tenancy = Prelude.Nothing}
instance ToResourceProperties SpotPlacementProperty where
  toResourceProperties SpotPlacementProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::SpotFleet.SpotPlacement",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AvailabilityZone" Prelude.<$> availabilityZone,
                            (JSON..=) "GroupName" Prelude.<$> groupName,
                            (JSON..=) "Tenancy" Prelude.<$> tenancy])}
instance JSON.ToJSON SpotPlacementProperty where
  toJSON SpotPlacementProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AvailabilityZone" Prelude.<$> availabilityZone,
               (JSON..=) "GroupName" Prelude.<$> groupName,
               (JSON..=) "Tenancy" Prelude.<$> tenancy]))
instance Property "AvailabilityZone" SpotPlacementProperty where
  type PropertyType "AvailabilityZone" SpotPlacementProperty = Value Prelude.Text
  set newValue SpotPlacementProperty {..}
    = SpotPlacementProperty
        {availabilityZone = Prelude.pure newValue, ..}
instance Property "GroupName" SpotPlacementProperty where
  type PropertyType "GroupName" SpotPlacementProperty = Value Prelude.Text
  set newValue SpotPlacementProperty {..}
    = SpotPlacementProperty {groupName = Prelude.pure newValue, ..}
instance Property "Tenancy" SpotPlacementProperty where
  type PropertyType "Tenancy" SpotPlacementProperty = Value Prelude.Text
  set newValue SpotPlacementProperty {..}
    = SpotPlacementProperty {tenancy = Prelude.pure newValue, ..}