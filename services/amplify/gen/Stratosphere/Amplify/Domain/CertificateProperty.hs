module Stratosphere.Amplify.Domain.CertificateProperty (
        CertificateProperty(..), mkCertificateProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CertificateProperty
  = CertificateProperty {certificateArn :: (Prelude.Maybe (Value Prelude.Text)),
                         certificateType :: (Prelude.Maybe (Value Prelude.Text)),
                         certificateVerificationDNSRecord :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCertificateProperty :: CertificateProperty
mkCertificateProperty
  = CertificateProperty
      {certificateArn = Prelude.Nothing,
       certificateType = Prelude.Nothing,
       certificateVerificationDNSRecord = Prelude.Nothing}
instance ToResourceProperties CertificateProperty where
  toResourceProperties CertificateProperty {..}
    = ResourceProperties
        {awsType = "AWS::Amplify::Domain.Certificate",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CertificateArn" Prelude.<$> certificateArn,
                            (JSON..=) "CertificateType" Prelude.<$> certificateType,
                            (JSON..=) "CertificateVerificationDNSRecord"
                              Prelude.<$> certificateVerificationDNSRecord])}
instance JSON.ToJSON CertificateProperty where
  toJSON CertificateProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CertificateArn" Prelude.<$> certificateArn,
               (JSON..=) "CertificateType" Prelude.<$> certificateType,
               (JSON..=) "CertificateVerificationDNSRecord"
                 Prelude.<$> certificateVerificationDNSRecord]))
instance Property "CertificateArn" CertificateProperty where
  type PropertyType "CertificateArn" CertificateProperty = Value Prelude.Text
  set newValue CertificateProperty {..}
    = CertificateProperty {certificateArn = Prelude.pure newValue, ..}
instance Property "CertificateType" CertificateProperty where
  type PropertyType "CertificateType" CertificateProperty = Value Prelude.Text
  set newValue CertificateProperty {..}
    = CertificateProperty {certificateType = Prelude.pure newValue, ..}
instance Property "CertificateVerificationDNSRecord" CertificateProperty where
  type PropertyType "CertificateVerificationDNSRecord" CertificateProperty = Value Prelude.Text
  set newValue CertificateProperty {..}
    = CertificateProperty
        {certificateVerificationDNSRecord = Prelude.pure newValue, ..}