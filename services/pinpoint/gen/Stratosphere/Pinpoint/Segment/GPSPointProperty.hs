module Stratosphere.Pinpoint.Segment.GPSPointProperty (
        module Exports, GPSPointProperty(..), mkGPSPointProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Pinpoint.Segment.CoordinatesProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GPSPointProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentdimensions-location-gpspoint.html>
    GPSPointProperty {haddock_workaround_ :: (),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentdimensions-location-gpspoint.html#cfn-pinpoint-segment-segmentdimensions-location-gpspoint-coordinates>
                      coordinates :: CoordinatesProperty,
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentdimensions-location-gpspoint.html#cfn-pinpoint-segment-segmentdimensions-location-gpspoint-rangeinkilometers>
                      rangeInKilometers :: (Value Prelude.Double)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGPSPointProperty ::
  CoordinatesProperty -> Value Prelude.Double -> GPSPointProperty
mkGPSPointProperty coordinates rangeInKilometers
  = GPSPointProperty
      {haddock_workaround_ = (), coordinates = coordinates,
       rangeInKilometers = rangeInKilometers}
instance ToResourceProperties GPSPointProperty where
  toResourceProperties GPSPointProperty {..}
    = ResourceProperties
        {awsType = "AWS::Pinpoint::Segment.GPSPoint",
         supportsTags = Prelude.False,
         properties = ["Coordinates" JSON..= coordinates,
                       "RangeInKilometers" JSON..= rangeInKilometers]}
instance JSON.ToJSON GPSPointProperty where
  toJSON GPSPointProperty {..}
    = JSON.object
        ["Coordinates" JSON..= coordinates,
         "RangeInKilometers" JSON..= rangeInKilometers]
instance Property "Coordinates" GPSPointProperty where
  type PropertyType "Coordinates" GPSPointProperty = CoordinatesProperty
  set newValue GPSPointProperty {..}
    = GPSPointProperty {coordinates = newValue, ..}
instance Property "RangeInKilometers" GPSPointProperty where
  type PropertyType "RangeInKilometers" GPSPointProperty = Value Prelude.Double
  set newValue GPSPointProperty {..}
    = GPSPointProperty {rangeInKilometers = newValue, ..}