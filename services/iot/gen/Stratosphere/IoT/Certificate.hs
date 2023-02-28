module Stratosphere.IoT.Certificate (
        Certificate(..), mkCertificate
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Certificate
  = Certificate {cACertificatePem :: (Prelude.Maybe (Value Prelude.Text)),
                 certificateMode :: (Prelude.Maybe (Value Prelude.Text)),
                 certificatePem :: (Prelude.Maybe (Value Prelude.Text)),
                 certificateSigningRequest :: (Prelude.Maybe (Value Prelude.Text)),
                 status :: (Value Prelude.Text)}
mkCertificate :: Value Prelude.Text -> Certificate
mkCertificate status
  = Certificate
      {status = status, cACertificatePem = Prelude.Nothing,
       certificateMode = Prelude.Nothing,
       certificatePem = Prelude.Nothing,
       certificateSigningRequest = Prelude.Nothing}
instance ToResourceProperties Certificate where
  toResourceProperties Certificate {..}
    = ResourceProperties
        {awsType = "AWS::IoT::Certificate", supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Status" JSON..= status]
                           (Prelude.catMaybes
                              [(JSON..=) "CACertificatePem" Prelude.<$> cACertificatePem,
                               (JSON..=) "CertificateMode" Prelude.<$> certificateMode,
                               (JSON..=) "CertificatePem" Prelude.<$> certificatePem,
                               (JSON..=) "CertificateSigningRequest"
                                 Prelude.<$> certificateSigningRequest]))}
instance JSON.ToJSON Certificate where
  toJSON Certificate {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Status" JSON..= status]
              (Prelude.catMaybes
                 [(JSON..=) "CACertificatePem" Prelude.<$> cACertificatePem,
                  (JSON..=) "CertificateMode" Prelude.<$> certificateMode,
                  (JSON..=) "CertificatePem" Prelude.<$> certificatePem,
                  (JSON..=) "CertificateSigningRequest"
                    Prelude.<$> certificateSigningRequest])))
instance Property "CACertificatePem" Certificate where
  type PropertyType "CACertificatePem" Certificate = Value Prelude.Text
  set newValue Certificate {..}
    = Certificate {cACertificatePem = Prelude.pure newValue, ..}
instance Property "CertificateMode" Certificate where
  type PropertyType "CertificateMode" Certificate = Value Prelude.Text
  set newValue Certificate {..}
    = Certificate {certificateMode = Prelude.pure newValue, ..}
instance Property "CertificatePem" Certificate where
  type PropertyType "CertificatePem" Certificate = Value Prelude.Text
  set newValue Certificate {..}
    = Certificate {certificatePem = Prelude.pure newValue, ..}
instance Property "CertificateSigningRequest" Certificate where
  type PropertyType "CertificateSigningRequest" Certificate = Value Prelude.Text
  set newValue Certificate {..}
    = Certificate
        {certificateSigningRequest = Prelude.pure newValue, ..}
instance Property "Status" Certificate where
  type PropertyType "Status" Certificate = Value Prelude.Text
  set newValue Certificate {..} = Certificate {status = newValue, ..}