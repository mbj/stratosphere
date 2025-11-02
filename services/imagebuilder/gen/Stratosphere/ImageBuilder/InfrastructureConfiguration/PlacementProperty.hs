module Stratosphere.ImageBuilder.InfrastructureConfiguration.PlacementProperty (
        PlacementProperty(..), mkPlacementProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PlacementProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-infrastructureconfiguration-placement.html>
    PlacementProperty {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-infrastructureconfiguration-placement.html#cfn-imagebuilder-infrastructureconfiguration-placement-availabilityzone>
                       availabilityZone :: (Prelude.Maybe (Value Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-infrastructureconfiguration-placement.html#cfn-imagebuilder-infrastructureconfiguration-placement-hostid>
                       hostId :: (Prelude.Maybe (Value Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-infrastructureconfiguration-placement.html#cfn-imagebuilder-infrastructureconfiguration-placement-hostresourcegrouparn>
                       hostResourceGroupArn :: (Prelude.Maybe (Value Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-infrastructureconfiguration-placement.html#cfn-imagebuilder-infrastructureconfiguration-placement-tenancy>
                       tenancy :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPlacementProperty :: PlacementProperty
mkPlacementProperty
  = PlacementProperty
      {haddock_workaround_ = (), availabilityZone = Prelude.Nothing,
       hostId = Prelude.Nothing, hostResourceGroupArn = Prelude.Nothing,
       tenancy = Prelude.Nothing}
instance ToResourceProperties PlacementProperty where
  toResourceProperties PlacementProperty {..}
    = ResourceProperties
        {awsType = "AWS::ImageBuilder::InfrastructureConfiguration.Placement",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AvailabilityZone" Prelude.<$> availabilityZone,
                            (JSON..=) "HostId" Prelude.<$> hostId,
                            (JSON..=) "HostResourceGroupArn" Prelude.<$> hostResourceGroupArn,
                            (JSON..=) "Tenancy" Prelude.<$> tenancy])}
instance JSON.ToJSON PlacementProperty where
  toJSON PlacementProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AvailabilityZone" Prelude.<$> availabilityZone,
               (JSON..=) "HostId" Prelude.<$> hostId,
               (JSON..=) "HostResourceGroupArn" Prelude.<$> hostResourceGroupArn,
               (JSON..=) "Tenancy" Prelude.<$> tenancy]))
instance Property "AvailabilityZone" PlacementProperty where
  type PropertyType "AvailabilityZone" PlacementProperty = Value Prelude.Text
  set newValue PlacementProperty {..}
    = PlacementProperty {availabilityZone = Prelude.pure newValue, ..}
instance Property "HostId" PlacementProperty where
  type PropertyType "HostId" PlacementProperty = Value Prelude.Text
  set newValue PlacementProperty {..}
    = PlacementProperty {hostId = Prelude.pure newValue, ..}
instance Property "HostResourceGroupArn" PlacementProperty where
  type PropertyType "HostResourceGroupArn" PlacementProperty = Value Prelude.Text
  set newValue PlacementProperty {..}
    = PlacementProperty
        {hostResourceGroupArn = Prelude.pure newValue, ..}
instance Property "Tenancy" PlacementProperty where
  type PropertyType "Tenancy" PlacementProperty = Value Prelude.Text
  set newValue PlacementProperty {..}
    = PlacementProperty {tenancy = Prelude.pure newValue, ..}