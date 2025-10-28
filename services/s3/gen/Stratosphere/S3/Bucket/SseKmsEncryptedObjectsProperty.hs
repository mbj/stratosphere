module Stratosphere.S3.Bucket.SseKmsEncryptedObjectsProperty (
        SseKmsEncryptedObjectsProperty(..),
        mkSseKmsEncryptedObjectsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SseKmsEncryptedObjectsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-ssekmsencryptedobjects.html>
    SseKmsEncryptedObjectsProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-ssekmsencryptedobjects.html#cfn-s3-bucket-ssekmsencryptedobjects-status>
                                    status :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSseKmsEncryptedObjectsProperty ::
  Value Prelude.Text -> SseKmsEncryptedObjectsProperty
mkSseKmsEncryptedObjectsProperty status
  = SseKmsEncryptedObjectsProperty
      {haddock_workaround_ = (), status = status}
instance ToResourceProperties SseKmsEncryptedObjectsProperty where
  toResourceProperties SseKmsEncryptedObjectsProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3::Bucket.SseKmsEncryptedObjects",
         supportsTags = Prelude.False,
         properties = ["Status" JSON..= status]}
instance JSON.ToJSON SseKmsEncryptedObjectsProperty where
  toJSON SseKmsEncryptedObjectsProperty {..}
    = JSON.object ["Status" JSON..= status]
instance Property "Status" SseKmsEncryptedObjectsProperty where
  type PropertyType "Status" SseKmsEncryptedObjectsProperty = Value Prelude.Text
  set newValue SseKmsEncryptedObjectsProperty {..}
    = SseKmsEncryptedObjectsProperty {status = newValue, ..}