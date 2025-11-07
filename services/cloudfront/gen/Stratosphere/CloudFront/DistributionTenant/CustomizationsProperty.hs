module Stratosphere.CloudFront.DistributionTenant.CustomizationsProperty (
        module Exports, CustomizationsProperty(..),
        mkCustomizationsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CloudFront.DistributionTenant.CertificateProperty as Exports
import {-# SOURCE #-} Stratosphere.CloudFront.DistributionTenant.GeoRestrictionCustomizationProperty as Exports
import {-# SOURCE #-} Stratosphere.CloudFront.DistributionTenant.WebAclCustomizationProperty as Exports
import Stratosphere.ResourceProperties
data CustomizationsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distributiontenant-customizations.html>
    CustomizationsProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distributiontenant-customizations.html#cfn-cloudfront-distributiontenant-customizations-certificate>
                            certificate :: (Prelude.Maybe CertificateProperty),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distributiontenant-customizations.html#cfn-cloudfront-distributiontenant-customizations-georestrictions>
                            geoRestrictions :: (Prelude.Maybe GeoRestrictionCustomizationProperty),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distributiontenant-customizations.html#cfn-cloudfront-distributiontenant-customizations-webacl>
                            webAcl :: (Prelude.Maybe WebAclCustomizationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCustomizationsProperty :: CustomizationsProperty
mkCustomizationsProperty
  = CustomizationsProperty
      {haddock_workaround_ = (), certificate = Prelude.Nothing,
       geoRestrictions = Prelude.Nothing, webAcl = Prelude.Nothing}
instance ToResourceProperties CustomizationsProperty where
  toResourceProperties CustomizationsProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::DistributionTenant.Customizations",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Certificate" Prelude.<$> certificate,
                            (JSON..=) "GeoRestrictions" Prelude.<$> geoRestrictions,
                            (JSON..=) "WebAcl" Prelude.<$> webAcl])}
instance JSON.ToJSON CustomizationsProperty where
  toJSON CustomizationsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Certificate" Prelude.<$> certificate,
               (JSON..=) "GeoRestrictions" Prelude.<$> geoRestrictions,
               (JSON..=) "WebAcl" Prelude.<$> webAcl]))
instance Property "Certificate" CustomizationsProperty where
  type PropertyType "Certificate" CustomizationsProperty = CertificateProperty
  set newValue CustomizationsProperty {..}
    = CustomizationsProperty {certificate = Prelude.pure newValue, ..}
instance Property "GeoRestrictions" CustomizationsProperty where
  type PropertyType "GeoRestrictions" CustomizationsProperty = GeoRestrictionCustomizationProperty
  set newValue CustomizationsProperty {..}
    = CustomizationsProperty
        {geoRestrictions = Prelude.pure newValue, ..}
instance Property "WebAcl" CustomizationsProperty where
  type PropertyType "WebAcl" CustomizationsProperty = WebAclCustomizationProperty
  set newValue CustomizationsProperty {..}
    = CustomizationsProperty {webAcl = Prelude.pure newValue, ..}