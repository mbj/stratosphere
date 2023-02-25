module Stratosphere.Lightsail.Disk.LocationProperty (
        LocationProperty(..), mkLocationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LocationProperty
  = LocationProperty {availabilityZone :: (Prelude.Maybe (Value Prelude.Text)),
                      regionName :: (Prelude.Maybe (Value Prelude.Text))}
mkLocationProperty :: LocationProperty
mkLocationProperty
  = LocationProperty
      {availabilityZone = Prelude.Nothing, regionName = Prelude.Nothing}
instance ToResourceProperties LocationProperty where
  toResourceProperties LocationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lightsail::Disk.Location",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AvailabilityZone" Prelude.<$> availabilityZone,
                            (JSON..=) "RegionName" Prelude.<$> regionName])}
instance JSON.ToJSON LocationProperty where
  toJSON LocationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AvailabilityZone" Prelude.<$> availabilityZone,
               (JSON..=) "RegionName" Prelude.<$> regionName]))
instance Property "AvailabilityZone" LocationProperty where
  type PropertyType "AvailabilityZone" LocationProperty = Value Prelude.Text
  set newValue LocationProperty {..}
    = LocationProperty {availabilityZone = Prelude.pure newValue, ..}
instance Property "RegionName" LocationProperty where
  type PropertyType "RegionName" LocationProperty = Value Prelude.Text
  set newValue LocationProperty {..}
    = LocationProperty {regionName = Prelude.pure newValue, ..}