module Stratosphere.Transfer.Certificate (
        Certificate(..), mkCertificate
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Certificate
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-transfer-certificate.html>
    Certificate {haddock_workaround_ :: (),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-transfer-certificate.html#cfn-transfer-certificate-activedate>
                 activeDate :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-transfer-certificate.html#cfn-transfer-certificate-certificate>
                 certificate :: (Value Prelude.Text),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-transfer-certificate.html#cfn-transfer-certificate-certificatechain>
                 certificateChain :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-transfer-certificate.html#cfn-transfer-certificate-description>
                 description :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-transfer-certificate.html#cfn-transfer-certificate-inactivedate>
                 inactiveDate :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-transfer-certificate.html#cfn-transfer-certificate-privatekey>
                 privateKey :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-transfer-certificate.html#cfn-transfer-certificate-tags>
                 tags :: (Prelude.Maybe [Tag]),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-transfer-certificate.html#cfn-transfer-certificate-usage>
                 usage :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCertificate ::
  Value Prelude.Text -> Value Prelude.Text -> Certificate
mkCertificate certificate usage
  = Certificate
      {haddock_workaround_ = (), certificate = certificate,
       usage = usage, activeDate = Prelude.Nothing,
       certificateChain = Prelude.Nothing, description = Prelude.Nothing,
       inactiveDate = Prelude.Nothing, privateKey = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties Certificate where
  toResourceProperties Certificate {..}
    = ResourceProperties
        {awsType = "AWS::Transfer::Certificate",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Certificate" JSON..= certificate, "Usage" JSON..= usage]
                           (Prelude.catMaybes
                              [(JSON..=) "ActiveDate" Prelude.<$> activeDate,
                               (JSON..=) "CertificateChain" Prelude.<$> certificateChain,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "InactiveDate" Prelude.<$> inactiveDate,
                               (JSON..=) "PrivateKey" Prelude.<$> privateKey,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Certificate where
  toJSON Certificate {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Certificate" JSON..= certificate, "Usage" JSON..= usage]
              (Prelude.catMaybes
                 [(JSON..=) "ActiveDate" Prelude.<$> activeDate,
                  (JSON..=) "CertificateChain" Prelude.<$> certificateChain,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "InactiveDate" Prelude.<$> inactiveDate,
                  (JSON..=) "PrivateKey" Prelude.<$> privateKey,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "ActiveDate" Certificate where
  type PropertyType "ActiveDate" Certificate = Value Prelude.Text
  set newValue Certificate {..}
    = Certificate {activeDate = Prelude.pure newValue, ..}
instance Property "Certificate" Certificate where
  type PropertyType "Certificate" Certificate = Value Prelude.Text
  set newValue Certificate {..}
    = Certificate {certificate = newValue, ..}
instance Property "CertificateChain" Certificate where
  type PropertyType "CertificateChain" Certificate = Value Prelude.Text
  set newValue Certificate {..}
    = Certificate {certificateChain = Prelude.pure newValue, ..}
instance Property "Description" Certificate where
  type PropertyType "Description" Certificate = Value Prelude.Text
  set newValue Certificate {..}
    = Certificate {description = Prelude.pure newValue, ..}
instance Property "InactiveDate" Certificate where
  type PropertyType "InactiveDate" Certificate = Value Prelude.Text
  set newValue Certificate {..}
    = Certificate {inactiveDate = Prelude.pure newValue, ..}
instance Property "PrivateKey" Certificate where
  type PropertyType "PrivateKey" Certificate = Value Prelude.Text
  set newValue Certificate {..}
    = Certificate {privateKey = Prelude.pure newValue, ..}
instance Property "Tags" Certificate where
  type PropertyType "Tags" Certificate = [Tag]
  set newValue Certificate {..}
    = Certificate {tags = Prelude.pure newValue, ..}
instance Property "Usage" Certificate where
  type PropertyType "Usage" Certificate = Value Prelude.Text
  set newValue Certificate {..} = Certificate {usage = newValue, ..}