module Stratosphere.ACMPCA.Certificate.KeyUsageProperty (
        KeyUsageProperty(..), mkKeyUsageProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data KeyUsageProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificate-keyusage.html>
    KeyUsageProperty {haddock_workaround_ :: (),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificate-keyusage.html#cfn-acmpca-certificate-keyusage-crlsign>
                      cRLSign :: (Prelude.Maybe (Value Prelude.Bool)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificate-keyusage.html#cfn-acmpca-certificate-keyusage-dataencipherment>
                      dataEncipherment :: (Prelude.Maybe (Value Prelude.Bool)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificate-keyusage.html#cfn-acmpca-certificate-keyusage-decipheronly>
                      decipherOnly :: (Prelude.Maybe (Value Prelude.Bool)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificate-keyusage.html#cfn-acmpca-certificate-keyusage-digitalsignature>
                      digitalSignature :: (Prelude.Maybe (Value Prelude.Bool)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificate-keyusage.html#cfn-acmpca-certificate-keyusage-encipheronly>
                      encipherOnly :: (Prelude.Maybe (Value Prelude.Bool)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificate-keyusage.html#cfn-acmpca-certificate-keyusage-keyagreement>
                      keyAgreement :: (Prelude.Maybe (Value Prelude.Bool)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificate-keyusage.html#cfn-acmpca-certificate-keyusage-keycertsign>
                      keyCertSign :: (Prelude.Maybe (Value Prelude.Bool)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificate-keyusage.html#cfn-acmpca-certificate-keyusage-keyencipherment>
                      keyEncipherment :: (Prelude.Maybe (Value Prelude.Bool)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificate-keyusage.html#cfn-acmpca-certificate-keyusage-nonrepudiation>
                      nonRepudiation :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkKeyUsageProperty :: KeyUsageProperty
mkKeyUsageProperty
  = KeyUsageProperty
      {haddock_workaround_ = (), cRLSign = Prelude.Nothing,
       dataEncipherment = Prelude.Nothing, decipherOnly = Prelude.Nothing,
       digitalSignature = Prelude.Nothing, encipherOnly = Prelude.Nothing,
       keyAgreement = Prelude.Nothing, keyCertSign = Prelude.Nothing,
       keyEncipherment = Prelude.Nothing,
       nonRepudiation = Prelude.Nothing}
instance ToResourceProperties KeyUsageProperty where
  toResourceProperties KeyUsageProperty {..}
    = ResourceProperties
        {awsType = "AWS::ACMPCA::Certificate.KeyUsage",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CRLSign" Prelude.<$> cRLSign,
                            (JSON..=) "DataEncipherment" Prelude.<$> dataEncipherment,
                            (JSON..=) "DecipherOnly" Prelude.<$> decipherOnly,
                            (JSON..=) "DigitalSignature" Prelude.<$> digitalSignature,
                            (JSON..=) "EncipherOnly" Prelude.<$> encipherOnly,
                            (JSON..=) "KeyAgreement" Prelude.<$> keyAgreement,
                            (JSON..=) "KeyCertSign" Prelude.<$> keyCertSign,
                            (JSON..=) "KeyEncipherment" Prelude.<$> keyEncipherment,
                            (JSON..=) "NonRepudiation" Prelude.<$> nonRepudiation])}
instance JSON.ToJSON KeyUsageProperty where
  toJSON KeyUsageProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CRLSign" Prelude.<$> cRLSign,
               (JSON..=) "DataEncipherment" Prelude.<$> dataEncipherment,
               (JSON..=) "DecipherOnly" Prelude.<$> decipherOnly,
               (JSON..=) "DigitalSignature" Prelude.<$> digitalSignature,
               (JSON..=) "EncipherOnly" Prelude.<$> encipherOnly,
               (JSON..=) "KeyAgreement" Prelude.<$> keyAgreement,
               (JSON..=) "KeyCertSign" Prelude.<$> keyCertSign,
               (JSON..=) "KeyEncipherment" Prelude.<$> keyEncipherment,
               (JSON..=) "NonRepudiation" Prelude.<$> nonRepudiation]))
instance Property "CRLSign" KeyUsageProperty where
  type PropertyType "CRLSign" KeyUsageProperty = Value Prelude.Bool
  set newValue KeyUsageProperty {..}
    = KeyUsageProperty {cRLSign = Prelude.pure newValue, ..}
instance Property "DataEncipherment" KeyUsageProperty where
  type PropertyType "DataEncipherment" KeyUsageProperty = Value Prelude.Bool
  set newValue KeyUsageProperty {..}
    = KeyUsageProperty {dataEncipherment = Prelude.pure newValue, ..}
instance Property "DecipherOnly" KeyUsageProperty where
  type PropertyType "DecipherOnly" KeyUsageProperty = Value Prelude.Bool
  set newValue KeyUsageProperty {..}
    = KeyUsageProperty {decipherOnly = Prelude.pure newValue, ..}
instance Property "DigitalSignature" KeyUsageProperty where
  type PropertyType "DigitalSignature" KeyUsageProperty = Value Prelude.Bool
  set newValue KeyUsageProperty {..}
    = KeyUsageProperty {digitalSignature = Prelude.pure newValue, ..}
instance Property "EncipherOnly" KeyUsageProperty where
  type PropertyType "EncipherOnly" KeyUsageProperty = Value Prelude.Bool
  set newValue KeyUsageProperty {..}
    = KeyUsageProperty {encipherOnly = Prelude.pure newValue, ..}
instance Property "KeyAgreement" KeyUsageProperty where
  type PropertyType "KeyAgreement" KeyUsageProperty = Value Prelude.Bool
  set newValue KeyUsageProperty {..}
    = KeyUsageProperty {keyAgreement = Prelude.pure newValue, ..}
instance Property "KeyCertSign" KeyUsageProperty where
  type PropertyType "KeyCertSign" KeyUsageProperty = Value Prelude.Bool
  set newValue KeyUsageProperty {..}
    = KeyUsageProperty {keyCertSign = Prelude.pure newValue, ..}
instance Property "KeyEncipherment" KeyUsageProperty where
  type PropertyType "KeyEncipherment" KeyUsageProperty = Value Prelude.Bool
  set newValue KeyUsageProperty {..}
    = KeyUsageProperty {keyEncipherment = Prelude.pure newValue, ..}
instance Property "NonRepudiation" KeyUsageProperty where
  type PropertyType "NonRepudiation" KeyUsageProperty = Value Prelude.Bool
  set newValue KeyUsageProperty {..}
    = KeyUsageProperty {nonRepudiation = Prelude.pure newValue, ..}