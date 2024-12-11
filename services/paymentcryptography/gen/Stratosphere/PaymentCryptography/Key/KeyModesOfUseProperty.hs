module Stratosphere.PaymentCryptography.Key.KeyModesOfUseProperty (
        KeyModesOfUseProperty(..), mkKeyModesOfUseProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data KeyModesOfUseProperty
  = KeyModesOfUseProperty {decrypt :: (Prelude.Maybe (Value Prelude.Bool)),
                           deriveKey :: (Prelude.Maybe (Value Prelude.Bool)),
                           encrypt :: (Prelude.Maybe (Value Prelude.Bool)),
                           generate :: (Prelude.Maybe (Value Prelude.Bool)),
                           noRestrictions :: (Prelude.Maybe (Value Prelude.Bool)),
                           sign :: (Prelude.Maybe (Value Prelude.Bool)),
                           unwrap :: (Prelude.Maybe (Value Prelude.Bool)),
                           verify :: (Prelude.Maybe (Value Prelude.Bool)),
                           wrap :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkKeyModesOfUseProperty :: KeyModesOfUseProperty
mkKeyModesOfUseProperty
  = KeyModesOfUseProperty
      {decrypt = Prelude.Nothing, deriveKey = Prelude.Nothing,
       encrypt = Prelude.Nothing, generate = Prelude.Nothing,
       noRestrictions = Prelude.Nothing, sign = Prelude.Nothing,
       unwrap = Prelude.Nothing, verify = Prelude.Nothing,
       wrap = Prelude.Nothing}
instance ToResourceProperties KeyModesOfUseProperty where
  toResourceProperties KeyModesOfUseProperty {..}
    = ResourceProperties
        {awsType = "AWS::PaymentCryptography::Key.KeyModesOfUse",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Decrypt" Prelude.<$> decrypt,
                            (JSON..=) "DeriveKey" Prelude.<$> deriveKey,
                            (JSON..=) "Encrypt" Prelude.<$> encrypt,
                            (JSON..=) "Generate" Prelude.<$> generate,
                            (JSON..=) "NoRestrictions" Prelude.<$> noRestrictions,
                            (JSON..=) "Sign" Prelude.<$> sign,
                            (JSON..=) "Unwrap" Prelude.<$> unwrap,
                            (JSON..=) "Verify" Prelude.<$> verify,
                            (JSON..=) "Wrap" Prelude.<$> wrap])}
instance JSON.ToJSON KeyModesOfUseProperty where
  toJSON KeyModesOfUseProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Decrypt" Prelude.<$> decrypt,
               (JSON..=) "DeriveKey" Prelude.<$> deriveKey,
               (JSON..=) "Encrypt" Prelude.<$> encrypt,
               (JSON..=) "Generate" Prelude.<$> generate,
               (JSON..=) "NoRestrictions" Prelude.<$> noRestrictions,
               (JSON..=) "Sign" Prelude.<$> sign,
               (JSON..=) "Unwrap" Prelude.<$> unwrap,
               (JSON..=) "Verify" Prelude.<$> verify,
               (JSON..=) "Wrap" Prelude.<$> wrap]))
instance Property "Decrypt" KeyModesOfUseProperty where
  type PropertyType "Decrypt" KeyModesOfUseProperty = Value Prelude.Bool
  set newValue KeyModesOfUseProperty {..}
    = KeyModesOfUseProperty {decrypt = Prelude.pure newValue, ..}
instance Property "DeriveKey" KeyModesOfUseProperty where
  type PropertyType "DeriveKey" KeyModesOfUseProperty = Value Prelude.Bool
  set newValue KeyModesOfUseProperty {..}
    = KeyModesOfUseProperty {deriveKey = Prelude.pure newValue, ..}
instance Property "Encrypt" KeyModesOfUseProperty where
  type PropertyType "Encrypt" KeyModesOfUseProperty = Value Prelude.Bool
  set newValue KeyModesOfUseProperty {..}
    = KeyModesOfUseProperty {encrypt = Prelude.pure newValue, ..}
instance Property "Generate" KeyModesOfUseProperty where
  type PropertyType "Generate" KeyModesOfUseProperty = Value Prelude.Bool
  set newValue KeyModesOfUseProperty {..}
    = KeyModesOfUseProperty {generate = Prelude.pure newValue, ..}
instance Property "NoRestrictions" KeyModesOfUseProperty where
  type PropertyType "NoRestrictions" KeyModesOfUseProperty = Value Prelude.Bool
  set newValue KeyModesOfUseProperty {..}
    = KeyModesOfUseProperty
        {noRestrictions = Prelude.pure newValue, ..}
instance Property "Sign" KeyModesOfUseProperty where
  type PropertyType "Sign" KeyModesOfUseProperty = Value Prelude.Bool
  set newValue KeyModesOfUseProperty {..}
    = KeyModesOfUseProperty {sign = Prelude.pure newValue, ..}
instance Property "Unwrap" KeyModesOfUseProperty where
  type PropertyType "Unwrap" KeyModesOfUseProperty = Value Prelude.Bool
  set newValue KeyModesOfUseProperty {..}
    = KeyModesOfUseProperty {unwrap = Prelude.pure newValue, ..}
instance Property "Verify" KeyModesOfUseProperty where
  type PropertyType "Verify" KeyModesOfUseProperty = Value Prelude.Bool
  set newValue KeyModesOfUseProperty {..}
    = KeyModesOfUseProperty {verify = Prelude.pure newValue, ..}
instance Property "Wrap" KeyModesOfUseProperty where
  type PropertyType "Wrap" KeyModesOfUseProperty = Value Prelude.Bool
  set newValue KeyModesOfUseProperty {..}
    = KeyModesOfUseProperty {wrap = Prelude.pure newValue, ..}