module Stratosphere.AmazonMQ.Broker.EncryptionOptionsProperty (
        EncryptionOptionsProperty(..), mkEncryptionOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EncryptionOptionsProperty
  = EncryptionOptionsProperty {kmsKeyId :: (Prelude.Maybe (Value Prelude.Text)),
                               useAwsOwnedKey :: (Value Prelude.Bool)}
mkEncryptionOptionsProperty ::
  Value Prelude.Bool -> EncryptionOptionsProperty
mkEncryptionOptionsProperty useAwsOwnedKey
  = EncryptionOptionsProperty
      {useAwsOwnedKey = useAwsOwnedKey, kmsKeyId = Prelude.Nothing}
instance ToResourceProperties EncryptionOptionsProperty where
  toResourceProperties EncryptionOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::AmazonMQ::Broker.EncryptionOptions",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["UseAwsOwnedKey" JSON..= useAwsOwnedKey]
                           (Prelude.catMaybes [(JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId]))}
instance JSON.ToJSON EncryptionOptionsProperty where
  toJSON EncryptionOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["UseAwsOwnedKey" JSON..= useAwsOwnedKey]
              (Prelude.catMaybes [(JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId])))
instance Property "KmsKeyId" EncryptionOptionsProperty where
  type PropertyType "KmsKeyId" EncryptionOptionsProperty = Value Prelude.Text
  set newValue EncryptionOptionsProperty {..}
    = EncryptionOptionsProperty {kmsKeyId = Prelude.pure newValue, ..}
instance Property "UseAwsOwnedKey" EncryptionOptionsProperty where
  type PropertyType "UseAwsOwnedKey" EncryptionOptionsProperty = Value Prelude.Bool
  set newValue EncryptionOptionsProperty {..}
    = EncryptionOptionsProperty {useAwsOwnedKey = newValue, ..}