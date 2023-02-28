module Stratosphere.EC2.SpotFleet.SpotPlacementProperty (
        SpotPlacementProperty(..), mkSpotPlacementProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SpotPlacementProperty
  = SpotPlacementProperty {availabilityZone :: (Prelude.Maybe (Value Prelude.Text)),
                           groupName :: (Prelude.Maybe (Value Prelude.Text)),
                           tenancy :: (Prelude.Maybe (Value Prelude.Text))}
mkSpotPlacementProperty :: SpotPlacementProperty
mkSpotPlacementProperty
  = SpotPlacementProperty
      {availabilityZone = Prelude.Nothing, groupName = Prelude.Nothing,
       tenancy = Prelude.Nothing}
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