module Stratosphere.PCAConnectorAD.Template.KeyUsageFlagsProperty (
        KeyUsageFlagsProperty(..), mkKeyUsageFlagsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data KeyUsageFlagsProperty
  = KeyUsageFlagsProperty {dataEncipherment :: (Prelude.Maybe (Value Prelude.Bool)),
                           digitalSignature :: (Prelude.Maybe (Value Prelude.Bool)),
                           keyAgreement :: (Prelude.Maybe (Value Prelude.Bool)),
                           keyEncipherment :: (Prelude.Maybe (Value Prelude.Bool)),
                           nonRepudiation :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkKeyUsageFlagsProperty :: KeyUsageFlagsProperty
mkKeyUsageFlagsProperty
  = KeyUsageFlagsProperty
      {dataEncipherment = Prelude.Nothing,
       digitalSignature = Prelude.Nothing, keyAgreement = Prelude.Nothing,
       keyEncipherment = Prelude.Nothing,
       nonRepudiation = Prelude.Nothing}
instance ToResourceProperties KeyUsageFlagsProperty where
  toResourceProperties KeyUsageFlagsProperty {..}
    = ResourceProperties
        {awsType = "AWS::PCAConnectorAD::Template.KeyUsageFlags",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DataEncipherment" Prelude.<$> dataEncipherment,
                            (JSON..=) "DigitalSignature" Prelude.<$> digitalSignature,
                            (JSON..=) "KeyAgreement" Prelude.<$> keyAgreement,
                            (JSON..=) "KeyEncipherment" Prelude.<$> keyEncipherment,
                            (JSON..=) "NonRepudiation" Prelude.<$> nonRepudiation])}
instance JSON.ToJSON KeyUsageFlagsProperty where
  toJSON KeyUsageFlagsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DataEncipherment" Prelude.<$> dataEncipherment,
               (JSON..=) "DigitalSignature" Prelude.<$> digitalSignature,
               (JSON..=) "KeyAgreement" Prelude.<$> keyAgreement,
               (JSON..=) "KeyEncipherment" Prelude.<$> keyEncipherment,
               (JSON..=) "NonRepudiation" Prelude.<$> nonRepudiation]))
instance Property "DataEncipherment" KeyUsageFlagsProperty where
  type PropertyType "DataEncipherment" KeyUsageFlagsProperty = Value Prelude.Bool
  set newValue KeyUsageFlagsProperty {..}
    = KeyUsageFlagsProperty
        {dataEncipherment = Prelude.pure newValue, ..}
instance Property "DigitalSignature" KeyUsageFlagsProperty where
  type PropertyType "DigitalSignature" KeyUsageFlagsProperty = Value Prelude.Bool
  set newValue KeyUsageFlagsProperty {..}
    = KeyUsageFlagsProperty
        {digitalSignature = Prelude.pure newValue, ..}
instance Property "KeyAgreement" KeyUsageFlagsProperty where
  type PropertyType "KeyAgreement" KeyUsageFlagsProperty = Value Prelude.Bool
  set newValue KeyUsageFlagsProperty {..}
    = KeyUsageFlagsProperty {keyAgreement = Prelude.pure newValue, ..}
instance Property "KeyEncipherment" KeyUsageFlagsProperty where
  type PropertyType "KeyEncipherment" KeyUsageFlagsProperty = Value Prelude.Bool
  set newValue KeyUsageFlagsProperty {..}
    = KeyUsageFlagsProperty
        {keyEncipherment = Prelude.pure newValue, ..}
instance Property "NonRepudiation" KeyUsageFlagsProperty where
  type PropertyType "NonRepudiation" KeyUsageFlagsProperty = Value Prelude.Bool
  set newValue KeyUsageFlagsProperty {..}
    = KeyUsageFlagsProperty
        {nonRepudiation = Prelude.pure newValue, ..}