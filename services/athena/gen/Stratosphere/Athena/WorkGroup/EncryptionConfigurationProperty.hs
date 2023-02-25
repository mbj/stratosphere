module Stratosphere.Athena.WorkGroup.EncryptionConfigurationProperty (
        EncryptionConfigurationProperty(..),
        mkEncryptionConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EncryptionConfigurationProperty
  = EncryptionConfigurationProperty {encryptionOption :: (Value Prelude.Text),
                                     kmsKey :: (Prelude.Maybe (Value Prelude.Text))}
mkEncryptionConfigurationProperty ::
  Value Prelude.Text -> EncryptionConfigurationProperty
mkEncryptionConfigurationProperty encryptionOption
  = EncryptionConfigurationProperty
      {encryptionOption = encryptionOption, kmsKey = Prelude.Nothing}
instance ToResourceProperties EncryptionConfigurationProperty where
  toResourceProperties EncryptionConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Athena::WorkGroup.EncryptionConfiguration",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["EncryptionOption" JSON..= encryptionOption]
                           (Prelude.catMaybes [(JSON..=) "KmsKey" Prelude.<$> kmsKey]))}
instance JSON.ToJSON EncryptionConfigurationProperty where
  toJSON EncryptionConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["EncryptionOption" JSON..= encryptionOption]
              (Prelude.catMaybes [(JSON..=) "KmsKey" Prelude.<$> kmsKey])))
instance Property "EncryptionOption" EncryptionConfigurationProperty where
  type PropertyType "EncryptionOption" EncryptionConfigurationProperty = Value Prelude.Text
  set newValue EncryptionConfigurationProperty {..}
    = EncryptionConfigurationProperty {encryptionOption = newValue, ..}
instance Property "KmsKey" EncryptionConfigurationProperty where
  type PropertyType "KmsKey" EncryptionConfigurationProperty = Value Prelude.Text
  set newValue EncryptionConfigurationProperty {..}
    = EncryptionConfigurationProperty
        {kmsKey = Prelude.pure newValue, ..}