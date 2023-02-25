module Stratosphere.ACMPCA.CertificateAuthorityActivation (
        CertificateAuthorityActivation(..),
        mkCertificateAuthorityActivation
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CertificateAuthorityActivation
  = CertificateAuthorityActivation {certificate :: (Value Prelude.Text),
                                    certificateAuthorityArn :: (Value Prelude.Text),
                                    certificateChain :: (Prelude.Maybe (Value Prelude.Text)),
                                    status :: (Prelude.Maybe (Value Prelude.Text))}
mkCertificateAuthorityActivation ::
  Value Prelude.Text
  -> Value Prelude.Text -> CertificateAuthorityActivation
mkCertificateAuthorityActivation
  certificate
  certificateAuthorityArn
  = CertificateAuthorityActivation
      {certificate = certificate,
       certificateAuthorityArn = certificateAuthorityArn,
       certificateChain = Prelude.Nothing, status = Prelude.Nothing}
instance ToResourceProperties CertificateAuthorityActivation where
  toResourceProperties CertificateAuthorityActivation {..}
    = ResourceProperties
        {awsType = "AWS::ACMPCA::CertificateAuthorityActivation",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Certificate" JSON..= certificate,
                            "CertificateAuthorityArn" JSON..= certificateAuthorityArn]
                           (Prelude.catMaybes
                              [(JSON..=) "CertificateChain" Prelude.<$> certificateChain,
                               (JSON..=) "Status" Prelude.<$> status]))}
instance JSON.ToJSON CertificateAuthorityActivation where
  toJSON CertificateAuthorityActivation {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Certificate" JSON..= certificate,
               "CertificateAuthorityArn" JSON..= certificateAuthorityArn]
              (Prelude.catMaybes
                 [(JSON..=) "CertificateChain" Prelude.<$> certificateChain,
                  (JSON..=) "Status" Prelude.<$> status])))
instance Property "Certificate" CertificateAuthorityActivation where
  type PropertyType "Certificate" CertificateAuthorityActivation = Value Prelude.Text
  set newValue CertificateAuthorityActivation {..}
    = CertificateAuthorityActivation {certificate = newValue, ..}
instance Property "CertificateAuthorityArn" CertificateAuthorityActivation where
  type PropertyType "CertificateAuthorityArn" CertificateAuthorityActivation = Value Prelude.Text
  set newValue CertificateAuthorityActivation {..}
    = CertificateAuthorityActivation
        {certificateAuthorityArn = newValue, ..}
instance Property "CertificateChain" CertificateAuthorityActivation where
  type PropertyType "CertificateChain" CertificateAuthorityActivation = Value Prelude.Text
  set newValue CertificateAuthorityActivation {..}
    = CertificateAuthorityActivation
        {certificateChain = Prelude.pure newValue, ..}
instance Property "Status" CertificateAuthorityActivation where
  type PropertyType "Status" CertificateAuthorityActivation = Value Prelude.Text
  set newValue CertificateAuthorityActivation {..}
    = CertificateAuthorityActivation
        {status = Prelude.pure newValue, ..}