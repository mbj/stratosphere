module Stratosphere.CloudFront.Distribution.GeoRestrictionProperty (
        GeoRestrictionProperty(..), mkGeoRestrictionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GeoRestrictionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-georestriction.html>
    GeoRestrictionProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-georestriction.html#cfn-cloudfront-distribution-georestriction-locations>
                            locations :: (Prelude.Maybe (ValueList Prelude.Text)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-georestriction.html#cfn-cloudfront-distribution-georestriction-restrictiontype>
                            restrictionType :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGeoRestrictionProperty ::
  Value Prelude.Text -> GeoRestrictionProperty
mkGeoRestrictionProperty restrictionType
  = GeoRestrictionProperty
      {haddock_workaround_ = (), restrictionType = restrictionType,
       locations = Prelude.Nothing}
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