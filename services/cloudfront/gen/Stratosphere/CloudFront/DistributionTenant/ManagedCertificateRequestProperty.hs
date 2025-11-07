module Stratosphere.CloudFront.DistributionTenant.ManagedCertificateRequestProperty (
        ManagedCertificateRequestProperty(..),
        mkManagedCertificateRequestProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ManagedCertificateRequestProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distributiontenant-managedcertificaterequest.html>
    ManagedCertificateRequestProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distributiontenant-managedcertificaterequest.html#cfn-cloudfront-distributiontenant-managedcertificaterequest-certificatetransparencyloggingpreference>
                                       certificateTransparencyLoggingPreference :: (Prelude.Maybe (Value Prelude.Text)),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distributiontenant-managedcertificaterequest.html#cfn-cloudfront-distributiontenant-managedcertificaterequest-primarydomainname>
                                       primaryDomainName :: (Prelude.Maybe (Value Prelude.Text)),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distributiontenant-managedcertificaterequest.html#cfn-cloudfront-distributiontenant-managedcertificaterequest-validationtokenhost>
                                       validationTokenHost :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkManagedCertificateRequestProperty ::
  ManagedCertificateRequestProperty
mkManagedCertificateRequestProperty
  = ManagedCertificateRequestProperty
      {haddock_workaround_ = (),
       certificateTransparencyLoggingPreference = Prelude.Nothing,
       primaryDomainName = Prelude.Nothing,
       validationTokenHost = Prelude.Nothing}
instance ToResourceProperties ManagedCertificateRequestProperty where
  toResourceProperties ManagedCertificateRequestProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::DistributionTenant.ManagedCertificateRequest",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CertificateTransparencyLoggingPreference"
                              Prelude.<$> certificateTransparencyLoggingPreference,
                            (JSON..=) "PrimaryDomainName" Prelude.<$> primaryDomainName,
                            (JSON..=) "ValidationTokenHost" Prelude.<$> validationTokenHost])}
instance JSON.ToJSON ManagedCertificateRequestProperty where
  toJSON ManagedCertificateRequestProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CertificateTransparencyLoggingPreference"
                 Prelude.<$> certificateTransparencyLoggingPreference,
               (JSON..=) "PrimaryDomainName" Prelude.<$> primaryDomainName,
               (JSON..=) "ValidationTokenHost" Prelude.<$> validationTokenHost]))
instance Property "CertificateTransparencyLoggingPreference" ManagedCertificateRequestProperty where
  type PropertyType "CertificateTransparencyLoggingPreference" ManagedCertificateRequestProperty = Value Prelude.Text
  set newValue ManagedCertificateRequestProperty {..}
    = ManagedCertificateRequestProperty
        {certificateTransparencyLoggingPreference = Prelude.pure newValue,
         ..}
instance Property "PrimaryDomainName" ManagedCertificateRequestProperty where
  type PropertyType "PrimaryDomainName" ManagedCertificateRequestProperty = Value Prelude.Text
  set newValue ManagedCertificateRequestProperty {..}
    = ManagedCertificateRequestProperty
        {primaryDomainName = Prelude.pure newValue, ..}
instance Property "ValidationTokenHost" ManagedCertificateRequestProperty where
  type PropertyType "ValidationTokenHost" ManagedCertificateRequestProperty = Value Prelude.Text
  set newValue ManagedCertificateRequestProperty {..}
    = ManagedCertificateRequestProperty
        {validationTokenHost = Prelude.pure newValue, ..}