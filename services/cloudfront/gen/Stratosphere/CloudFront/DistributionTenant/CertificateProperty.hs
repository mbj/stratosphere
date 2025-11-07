module Stratosphere.CloudFront.DistributionTenant.CertificateProperty (
        CertificateProperty(..), mkCertificateProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CertificateProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distributiontenant-certificate.html>
    CertificateProperty {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distributiontenant-certificate.html#cfn-cloudfront-distributiontenant-certificate-arn>
                         arn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCertificateProperty :: CertificateProperty
mkCertificateProperty
  = CertificateProperty
      {haddock_workaround_ = (), arn = Prelude.Nothing}
instance ToResourceProperties CertificateProperty where
  toResourceProperties CertificateProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::DistributionTenant.Certificate",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Arn" Prelude.<$> arn])}
instance JSON.ToJSON CertificateProperty where
  toJSON CertificateProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Arn" Prelude.<$> arn]))
instance Property "Arn" CertificateProperty where
  type PropertyType "Arn" CertificateProperty = Value Prelude.Text
  set newValue CertificateProperty {..}
    = CertificateProperty {arn = Prelude.pure newValue, ..}