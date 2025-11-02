module Stratosphere.DMS.Certificate (
        Certificate(..), mkCertificate
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Certificate
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-certificate.html>
    Certificate {haddock_workaround_ :: (),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-certificate.html#cfn-dms-certificate-certificateidentifier>
                 certificateIdentifier :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-certificate.html#cfn-dms-certificate-certificatepem>
                 certificatePem :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-certificate.html#cfn-dms-certificate-certificatewallet>
                 certificateWallet :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCertificate :: Certificate
mkCertificate
  = Certificate
      {haddock_workaround_ = (), certificateIdentifier = Prelude.Nothing,
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