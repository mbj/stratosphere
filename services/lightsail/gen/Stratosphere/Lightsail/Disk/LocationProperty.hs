module Stratosphere.Lightsail.Disk.LocationProperty (
        LocationProperty(..), mkLocationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LocationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-disk-location.html>
    LocationProperty {haddock_workaround_ :: (),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-disk-location.html#cfn-lightsail-disk-location-availabilityzone>
                      availabilityZone :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-disk-location.html#cfn-lightsail-disk-location-regionname>
                      regionName :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLocationProperty :: LocationProperty
mkLocationProperty
  = LocationProperty
      {haddock_workaround_ = (), availabilityZone = Prelude.Nothing,
       regionName = Prelude.Nothing}
instance ToResourceProperties LocationProperty where
  toResourceProperties LocationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lightsail::Disk.Location",
         supportsTags = Prelude.False,
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