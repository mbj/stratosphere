module Stratosphere.CloudFront.Distribution.GeoRestrictionProperty (
        GeoRestrictionProperty(..), mkGeoRestrictionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GeoRestrictionProperty
  = GeoRestrictionProperty {locations :: (Prelude.Maybe (ValueList Prelude.Text)),
                            restrictionType :: (Value Prelude.Text)}
mkGeoRestrictionProperty ::
  Value Prelude.Text -> GeoRestrictionProperty
mkGeoRestrictionProperty restrictionType
  = GeoRestrictionProperty
      {restrictionType = restrictionType, locations = Prelude.Nothing}
instance ToResourceProperties GeoRestrictionProperty where
  toResourceProperties GeoRestrictionProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::Distribution.GeoRestriction",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["RestrictionType" JSON..= restrictionType]
                           (Prelude.catMaybes [(JSON..=) "Locations" Prelude.<$> locations]))}
instance JSON.ToJSON GeoRestrictionProperty where
  toJSON GeoRestrictionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["RestrictionType" JSON..= restrictionType]
              (Prelude.catMaybes [(JSON..=) "Locations" Prelude.<$> locations])))
instance Property "Locations" GeoRestrictionProperty where
  type PropertyType "Locations" GeoRestrictionProperty = ValueList Prelude.Text
  set newValue GeoRestrictionProperty {..}
    = GeoRestrictionProperty {locations = Prelude.pure newValue, ..}
instance Property "RestrictionType" GeoRestrictionProperty where
  type PropertyType "RestrictionType" GeoRestrictionProperty = Value Prelude.Text
  set newValue GeoRestrictionProperty {..}
    = GeoRestrictionProperty {restrictionType = newValue, ..}