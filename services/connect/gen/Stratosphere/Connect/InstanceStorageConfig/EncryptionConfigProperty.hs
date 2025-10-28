module Stratosphere.Connect.InstanceStorageConfig.EncryptionConfigProperty (
        EncryptionConfigProperty(..), mkEncryptionConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EncryptionConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-instancestorageconfig-encryptionconfig.html>
    EncryptionConfigProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-instancestorageconfig-encryptionconfig.html#cfn-connect-instancestorageconfig-encryptionconfig-encryptiontype>
                              encryptionType :: (Value Prelude.Text),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-instancestorageconfig-encryptionconfig.html#cfn-connect-instancestorageconfig-encryptionconfig-keyid>
                              keyId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEncryptionConfigProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> EncryptionConfigProperty
mkEncryptionConfigProperty encryptionType keyId
  = EncryptionConfigProperty
      {haddock_workaround_ = (), encryptionType = encryptionType,
       keyId = keyId}
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