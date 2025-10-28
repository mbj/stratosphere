module Stratosphere.Pinpoint.Segment.CoordinatesProperty (
        CoordinatesProperty(..), mkCoordinatesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CoordinatesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentdimensions-location-gpspoint-coordinates.html>
    CoordinatesProperty {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentdimensions-location-gpspoint-coordinates.html#cfn-pinpoint-segment-segmentdimensions-location-gpspoint-coordinates-latitude>
                         latitude :: (Value Prelude.Double),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentdimensions-location-gpspoint-coordinates.html#cfn-pinpoint-segment-segmentdimensions-location-gpspoint-coordinates-longitude>
                         longitude :: (Value Prelude.Double)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCoordinatesProperty ::
  Value Prelude.Double -> Value Prelude.Double -> CoordinatesProperty
mkCoordinatesProperty latitude longitude
  = CoordinatesProperty
      {haddock_workaround_ = (), latitude = latitude,
       longitude = longitude}
instance ToResourceProperties CoordinatesProperty where
  toResourceProperties CoordinatesProperty {..}
    = ResourceProperties
        {awsType = "AWS::Pinpoint::Segment.Coordinates",
         supportsTags = Prelude.False,
         properties = ["Latitude" JSON..= latitude,
                       "Longitude" JSON..= longitude]}
instance JSON.ToJSON CoordinatesProperty where
  toJSON CoordinatesProperty {..}
    = JSON.object
        ["Latitude" JSON..= latitude, "Longitude" JSON..= longitude]
instance Property "Latitude" CoordinatesProperty where
  type PropertyType "Latitude" CoordinatesProperty = Value Prelude.Double
  set newValue CoordinatesProperty {..}
    = CoordinatesProperty {latitude = newValue, ..}
instance Property "Longitude" CoordinatesProperty where
  type PropertyType "Longitude" CoordinatesProperty = Value Prelude.Double
  set newValue CoordinatesProperty {..}
    = CoordinatesProperty {longitude = newValue, ..}