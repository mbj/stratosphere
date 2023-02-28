module Stratosphere.DMS.Certificate (
        Certificate(..), mkCertificate
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Certificate
  = Certificate {certificateIdentifier :: (Prelude.Maybe (Value Prelude.Text)),
                 certificatePem :: (Prelude.Maybe (Value Prelude.Text)),
                 certificateWallet :: (Prelude.Maybe (Value Prelude.Text))}
mkCertificate :: Certificate
mkCertificate
  = Certificate
      {certificateIdentifier = Prelude.Nothing,
       certificatePem = Prelude.Nothing,
       certificateWallet = Prelude.Nothing}
instance ToResourceProperties Certificate where
  toResourceProperties Certificate {..}
    = ResourceProperties
        {awsType = "AWS::DMS::Certificate", supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CertificateIdentifier"
                              Prelude.<$> certificateIdentifier,
                            (JSON..=) "CertificatePem" Prelude.<$> certificatePem,
                            (JSON..=) "CertificateWallet" Prelude.<$> certificateWallet])}
instance JSON.ToJSON Certificate where
  toJSON Certificate {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CertificateIdentifier"
                 Prelude.<$> certificateIdentifier,
               (JSON..=) "CertificatePem" Prelude.<$> certificatePem,
               (JSON..=) "CertificateWallet" Prelude.<$> certificateWallet]))
instance Property "CertificateIdentifier" Certificate where
  type PropertyType "CertificateIdentifier" Certificate = Value Prelude.Text
  set newValue Certificate {..}
    = Certificate {certificateIdentifier = Prelude.pure newValue, ..}
instance Property "CertificatePem" Certificate where
  type PropertyType "CertificatePem" Certificate = Value Prelude.Text
  set newValue Certificate {..}
    = Certificate {certificatePem = Prelude.pure newValue, ..}
instance Property "CertificateWallet" Certificate where
  type PropertyType "CertificateWallet" Certificate = Value Prelude.Text
  set newValue Certificate {..}
    = Certificate {certificateWallet = Prelude.pure newValue, ..}