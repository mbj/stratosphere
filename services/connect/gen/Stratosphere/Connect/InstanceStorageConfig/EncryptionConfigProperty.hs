module Stratosphere.Connect.InstanceStorageConfig.EncryptionConfigProperty (
        EncryptionConfigProperty(..), mkEncryptionConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EncryptionConfigProperty
  = EncryptionConfigProperty {encryptionType :: (Value Prelude.Text),
                              keyId :: (Value Prelude.Text)}
mkEncryptionConfigProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> EncryptionConfigProperty
mkEncryptionConfigProperty encryptionType keyId
  = EncryptionConfigProperty
      {encryptionType = encryptionType, keyId = keyId}
instance ToResourceProperties EncryptionConfigProperty where
  toResourceProperties EncryptionConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Connect::InstanceStorageConfig.EncryptionConfig",
         supportsTags = Prelude.False,
         properties = ["EncryptionType" JSON..= encryptionType,
                       "KeyId" JSON..= keyId]}
instance JSON.ToJSON EncryptionConfigProperty where
  toJSON EncryptionConfigProperty {..}
    = JSON.object
        ["EncryptionType" JSON..= encryptionType, "KeyId" JSON..= keyId]
instance Property "EncryptionType" EncryptionConfigProperty where
  type PropertyType "EncryptionType" EncryptionConfigProperty = Value Prelude.Text
  set newValue EncryptionConfigProperty {..}
    = EncryptionConfigProperty {encryptionType = newValue, ..}
instance Property "KeyId" EncryptionConfigProperty where
  type PropertyType "KeyId" EncryptionConfigProperty = Value Prelude.Text
  set newValue EncryptionConfigProperty {..}
    = EncryptionConfigProperty {keyId = newValue, ..}