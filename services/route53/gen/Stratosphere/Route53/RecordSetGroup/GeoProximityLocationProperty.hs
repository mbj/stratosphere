module Stratosphere.Route53.RecordSetGroup.GeoProximityLocationProperty (
        module Exports, GeoProximityLocationProperty(..),
        mkGeoProximityLocationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Route53.RecordSetGroup.CoordinatesProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GeoProximityLocationProperty
  = GeoProximityLocationProperty {aWSRegion :: (Prelude.Maybe (Value Prelude.Text)),
                                  bias :: (Prelude.Maybe (Value Prelude.Integer)),
                                  coordinates :: (Prelude.Maybe CoordinatesProperty),
                                  localZoneGroup :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGeoProximityLocationProperty :: GeoProximityLocationProperty
mkGeoProximityLocationProperty
  = GeoProximityLocationProperty
      {aWSRegion = Prelude.Nothing, bias = Prelude.Nothing,
       coordinates = Prelude.Nothing, localZoneGroup = Prelude.Nothing}
instance ToResourceProperties GeoProximityLocationProperty where
  toResourceProperties GeoProximityLocationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Route53::RecordSetGroup.GeoProximityLocation",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AWSRegion" Prelude.<$> aWSRegion,
                            (JSON..=) "Bias" Prelude.<$> bias,
                            (JSON..=) "Coordinates" Prelude.<$> coordinates,
                            (JSON..=) "LocalZoneGroup" Prelude.<$> localZoneGroup])}
instance JSON.ToJSON GeoProximityLocationProperty where
  toJSON GeoProximityLocationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AWSRegion" Prelude.<$> aWSRegion,
               (JSON..=) "Bias" Prelude.<$> bias,
               (JSON..=) "Coordinates" Prelude.<$> coordinates,
               (JSON..=) "LocalZoneGroup" Prelude.<$> localZoneGroup]))
instance Property "AWSRegion" GeoProximityLocationProperty where
  type PropertyType "AWSRegion" GeoProximityLocationProperty = Value Prelude.Text
  set newValue GeoProximityLocationProperty {..}
    = GeoProximityLocationProperty
        {aWSRegion = Prelude.pure newValue, ..}
instance Property "Bias" GeoProximityLocationProperty where
  type PropertyType "Bias" GeoProximityLocationProperty = Value Prelude.Integer
  set newValue GeoProximityLocationProperty {..}
    = GeoProximityLocationProperty {bias = Prelude.pure newValue, ..}
instance Property "Coordinates" GeoProximityLocationProperty where
  type PropertyType "Coordinates" GeoProximityLocationProperty = CoordinatesProperty
  set newValue GeoProximityLocationProperty {..}
    = GeoProximityLocationProperty
        {coordinates = Prelude.pure newValue, ..}
instance Property "LocalZoneGroup" GeoProximityLocationProperty where
  type PropertyType "LocalZoneGroup" GeoProximityLocationProperty = Value Prelude.Text
  set newValue GeoProximityLocationProperty {..}
    = GeoProximityLocationProperty
        {localZoneGroup = Prelude.pure newValue, ..}