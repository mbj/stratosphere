module Stratosphere.Route53.RecordSet.GeoProximityLocationProperty (
        module Exports, GeoProximityLocationProperty(..),
        mkGeoProximityLocationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Route53.RecordSet.CoordinatesProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GeoProximityLocationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-geoproximitylocation.html>
    GeoProximityLocationProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-geoproximitylocation.html#cfn-route53-geoproximitylocation-awsregion>
                                  aWSRegion :: (Prelude.Maybe (Value Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-geoproximitylocation.html#cfn-route53-geoproximitylocation-bias>
                                  bias :: (Prelude.Maybe (Value Prelude.Integer)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-geoproximitylocation.html#cfn-route53-geoproximitylocation-coordinates>
                                  coordinates :: (Prelude.Maybe CoordinatesProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-geoproximitylocation.html#cfn-route53-geoproximitylocation-LocalZoneGroup>
                                  localZoneGroup :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGeoProximityLocationProperty :: GeoProximityLocationProperty
mkGeoProximityLocationProperty
  = GeoProximityLocationProperty
      {haddock_workaround_ = (), aWSRegion = Prelude.Nothing,
       bias = Prelude.Nothing, coordinates = Prelude.Nothing,
       localZoneGroup = Prelude.Nothing}
instance ToResourceProperties GeoProximityLocationProperty where
  toResourceProperties GeoProximityLocationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Route53::RecordSet.GeoProximityLocation",
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