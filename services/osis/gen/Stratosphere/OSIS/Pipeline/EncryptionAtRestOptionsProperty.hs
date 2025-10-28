module Stratosphere.OSIS.Pipeline.EncryptionAtRestOptionsProperty (
        EncryptionAtRestOptionsProperty(..),
        mkEncryptionAtRestOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EncryptionAtRestOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-osis-pipeline-encryptionatrestoptions.html>
    EncryptionAtRestOptionsProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-osis-pipeline-encryptionatrestoptions.html#cfn-osis-pipeline-encryptionatrestoptions-kmskeyarn>
                                     kmsKeyArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEncryptionAtRestOptionsProperty ::
  Value Prelude.Text -> EncryptionAtRestOptionsProperty
mkEncryptionAtRestOptionsProperty kmsKeyArn
  = EncryptionAtRestOptionsProperty
      {haddock_workaround_ = (), kmsKeyArn = kmsKeyArn}
instance ToResourceProperties EncryptionAtRestOptionsProperty where
  toResourceProperties EncryptionAtRestOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::OSIS::Pipeline.EncryptionAtRestOptions",
         supportsTags = Prelude.False,
         properties = ["KmsKeyArn" JSON..= kmsKeyArn]}
instance JSON.ToJSON EncryptionAtRestOptionsProperty where
  toJSON EncryptionAtRestOptionsProperty {..}
    = JSON.object ["KmsKeyArn" JSON..= kmsKeyArn]
instance Property "KmsKeyArn" EncryptionAtRestOptionsProperty where
  type PropertyType "KmsKeyArn" EncryptionAtRestOptionsProperty = Value Prelude.Text
  set newValue EncryptionAtRestOptionsProperty {..}
    = EncryptionAtRestOptionsProperty {kmsKeyArn = newValue, ..}