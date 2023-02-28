module Stratosphere.Pinpoint.Segment.LocationProperty (
        module Exports, LocationProperty(..), mkLocationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Pinpoint.Segment.GPSPointProperty as Exports
import {-# SOURCE #-} Stratosphere.Pinpoint.Segment.SetDimensionProperty as Exports
import Stratosphere.ResourceProperties
data LocationProperty
  = LocationProperty {country :: (Prelude.Maybe SetDimensionProperty),
                      gPSPoint :: (Prelude.Maybe GPSPointProperty)}
mkLocationProperty :: LocationProperty
mkLocationProperty
  = LocationProperty
      {country = Prelude.Nothing, gPSPoint = Prelude.Nothing}
instance ToResourceProperties LocationProperty where
  toResourceProperties LocationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Pinpoint::Segment.Location",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Country" Prelude.<$> country,
                            (JSON..=) "GPSPoint" Prelude.<$> gPSPoint])}
instance JSON.ToJSON LocationProperty where
  toJSON LocationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Country" Prelude.<$> country,
               (JSON..=) "GPSPoint" Prelude.<$> gPSPoint]))
instance Property "Country" LocationProperty where
  type PropertyType "Country" LocationProperty = SetDimensionProperty
  set newValue LocationProperty {..}
    = LocationProperty {country = Prelude.pure newValue, ..}
instance Property "GPSPoint" LocationProperty where
  type PropertyType "GPSPoint" LocationProperty = GPSPointProperty
  set newValue LocationProperty {..}
    = LocationProperty {gPSPoint = Prelude.pure newValue, ..}