module Stratosphere.MediaConnect.FlowOutput.EncryptionProperty (
        EncryptionProperty(..), mkEncryptionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EncryptionProperty
  = EncryptionProperty {algorithm :: (Prelude.Maybe (Value Prelude.Text)),
                        keyType :: (Prelude.Maybe (Value Prelude.Text)),
                        roleArn :: (Value Prelude.Text),
                        secretArn :: (Value Prelude.Text)}
mkEncryptionProperty ::
  Value Prelude.Text -> Value Prelude.Text -> EncryptionProperty
mkEncryptionProperty roleArn secretArn
  = EncryptionProperty
      {roleArn = roleArn, secretArn = secretArn,
       algorithm = Prelude.Nothing, keyType = Prelude.Nothing}
instance ToResourceProperties EncryptionProperty where
  toResourceProperties EncryptionProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaConnect::FlowOutput.Encryption",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["RoleArn" JSON..= roleArn, "SecretArn" JSON..= secretArn]
                           (Prelude.catMaybes
                              [(JSON..=) "Algorithm" Prelude.<$> algorithm,
                               (JSON..=) "KeyType" Prelude.<$> keyType]))}
instance JSON.ToJSON EncryptionProperty where
  toJSON EncryptionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["RoleArn" JSON..= roleArn, "SecretArn" JSON..= secretArn]
              (Prelude.catMaybes
                 [(JSON..=) "Algorithm" Prelude.<$> algorithm,
                  (JSON..=) "KeyType" Prelude.<$> keyType])))
instance Property "Algorithm" EncryptionProperty where
  type PropertyType "Algorithm" EncryptionProperty = Value Prelude.Text
  set newValue EncryptionProperty {..}
    = EncryptionProperty {algorithm = Prelude.pure newValue, ..}
instance Property "KeyType" EncryptionProperty where
  type PropertyType "KeyType" EncryptionProperty = Value Prelude.Text
  set newValue EncryptionProperty {..}
    = EncryptionProperty {keyType = Prelude.pure newValue, ..}
instance Property "RoleArn" EncryptionProperty where
  type PropertyType "RoleArn" EncryptionProperty = Value Prelude.Text
  set newValue EncryptionProperty {..}
    = EncryptionProperty {roleArn = newValue, ..}
instance Property "SecretArn" EncryptionProperty where
  type PropertyType "SecretArn" EncryptionProperty = Value Prelude.Text
  set newValue EncryptionProperty {..}
    = EncryptionProperty {secretArn = newValue, ..}