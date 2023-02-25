module Stratosphere.Kinesis.Stream.StreamEncryptionProperty (
        StreamEncryptionProperty(..), mkStreamEncryptionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data StreamEncryptionProperty
  = StreamEncryptionProperty {encryptionType :: (Value Prelude.Text),
                              keyId :: (Value Prelude.Text)}
mkStreamEncryptionProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> StreamEncryptionProperty
mkStreamEncryptionProperty encryptionType keyId
  = StreamEncryptionProperty
      {encryptionType = encryptionType, keyId = keyId}
instance ToResourceProperties StreamEncryptionProperty where
  toResourceProperties StreamEncryptionProperty {..}
    = ResourceProperties
        {awsType = "AWS::Kinesis::Stream.StreamEncryption",
         properties = ["EncryptionType" JSON..= encryptionType,
                       "KeyId" JSON..= keyId]}
instance JSON.ToJSON StreamEncryptionProperty where
  toJSON StreamEncryptionProperty {..}
    = JSON.object
        ["EncryptionType" JSON..= encryptionType, "KeyId" JSON..= keyId]
instance Property "EncryptionType" StreamEncryptionProperty where
  type PropertyType "EncryptionType" StreamEncryptionProperty = Value Prelude.Text
  set newValue StreamEncryptionProperty {..}
    = StreamEncryptionProperty {encryptionType = newValue, ..}
instance Property "KeyId" StreamEncryptionProperty where
  type PropertyType "KeyId" StreamEncryptionProperty = Value Prelude.Text
  set newValue StreamEncryptionProperty {..}
    = StreamEncryptionProperty {keyId = newValue, ..}