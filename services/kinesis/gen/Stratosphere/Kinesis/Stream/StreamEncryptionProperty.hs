module Stratosphere.Kinesis.Stream.StreamEncryptionProperty (
        StreamEncryptionProperty(..), mkStreamEncryptionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data StreamEncryptionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesis-stream-streamencryption.html>
    StreamEncryptionProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesis-stream-streamencryption.html#cfn-kinesis-stream-streamencryption-encryptiontype>
                              encryptionType :: (Value Prelude.Text),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesis-stream-streamencryption.html#cfn-kinesis-stream-streamencryption-keyid>
                              keyId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStreamEncryptionProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> StreamEncryptionProperty
mkStreamEncryptionProperty encryptionType keyId
  = StreamEncryptionProperty
      {haddock_workaround_ = (), encryptionType = encryptionType,
       keyId = keyId}
instance ToResourceProperties StreamEncryptionProperty where
  toResourceProperties StreamEncryptionProperty {..}
    = ResourceProperties
        {awsType = "AWS::Kinesis::Stream.StreamEncryption",
         supportsTags = Prelude.False,
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