module Stratosphere.CloudFront.DistributionTenant.GeoRestrictionCustomizationProperty (
        GeoRestrictionCustomizationProperty(..),
        mkGeoRestrictionCustomizationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GeoRestrictionCustomizationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distributiontenant-georestrictioncustomization.html>
    GeoRestrictionCustomizationProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distributiontenant-georestrictioncustomization.html#cfn-cloudfront-distributiontenant-georestrictioncustomization-locations>
                                         locations :: (Prelude.Maybe (ValueList Prelude.Text)),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distributiontenant-georestrictioncustomization.html#cfn-cloudfront-distributiontenant-georestrictioncustomization-restrictiontype>
                                         restrictionType :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGeoRestrictionCustomizationProperty ::
  GeoRestrictionCustomizationProperty
mkGeoRestrictionCustomizationProperty
  = GeoRestrictionCustomizationProperty
      {haddock_workaround_ = (), locations = Prelude.Nothing,
       restrictionType = Prelude.Nothing}
instance ToResourceProperties GeoRestrictionCustomizationProperty where
  toResourceProperties GeoRestrictionCustomizationProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::DistributionTenant.GeoRestrictionCustomization",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Locations" Prelude.<$> locations,
                            (JSON..=) "RestrictionType" Prelude.<$> restrictionType])}
instance JSON.ToJSON GeoRestrictionCustomizationProperty where
  toJSON GeoRestrictionCustomizationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Locations" Prelude.<$> locations,
               (JSON..=) "RestrictionType" Prelude.<$> restrictionType]))
instance Property "Locations" GeoRestrictionCustomizationProperty where
  type PropertyType "Locations" GeoRestrictionCustomizationProperty = ValueList Prelude.Text
  set newValue GeoRestrictionCustomizationProperty {..}
    = GeoRestrictionCustomizationProperty
        {locations = Prelude.pure newValue, ..}
instance Property "RestrictionType" GeoRestrictionCustomizationProperty where
  type PropertyType "RestrictionType" GeoRestrictionCustomizationProperty = Value Prelude.Text
  set newValue GeoRestrictionCustomizationProperty {..}
    = GeoRestrictionCustomizationProperty
        {restrictionType = Prelude.pure newValue, ..}