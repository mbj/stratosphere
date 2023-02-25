module Stratosphere.ACMPCA.CertificateAuthority.KeyUsageProperty (
        KeyUsageProperty(..), mkKeyUsageProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data KeyUsageProperty
  = KeyUsageProperty {cRLSign :: (Prelude.Maybe (Value Prelude.Bool)),
                      dataEncipherment :: (Prelude.Maybe (Value Prelude.Bool)),
                      decipherOnly :: (Prelude.Maybe (Value Prelude.Bool)),
                      digitalSignature :: (Prelude.Maybe (Value Prelude.Bool)),
                      encipherOnly :: (Prelude.Maybe (Value Prelude.Bool)),
                      keyAgreement :: (Prelude.Maybe (Value Prelude.Bool)),
                      keyCertSign :: (Prelude.Maybe (Value Prelude.Bool)),
                      keyEncipherment :: (Prelude.Maybe (Value Prelude.Bool)),
                      nonRepudiation :: (Prelude.Maybe (Value Prelude.Bool))}
mkKeyUsageProperty :: KeyUsageProperty
mkKeyUsageProperty
  = KeyUsageProperty
      {cRLSign = Prelude.Nothing, dataEncipherment = Prelude.Nothing,
       decipherOnly = Prelude.Nothing, digitalSignature = Prelude.Nothing,
       encipherOnly = Prelude.Nothing, keyAgreement = Prelude.Nothing,
       keyCertSign = Prelude.Nothing, keyEncipherment = Prelude.Nothing,
       nonRepudiation = Prelude.Nothing}
instance ToResourceProperties KeyUsageProperty where
  toResourceProperties KeyUsageProperty {..}
    = ResourceProperties
        {awsType = "AWS::ACMPCA::CertificateAuthority.KeyUsage",
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