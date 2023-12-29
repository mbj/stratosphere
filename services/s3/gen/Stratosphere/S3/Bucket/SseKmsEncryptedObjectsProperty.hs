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
  = SseKmsEncryptedObjectsProperty {status :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSseKmsEncryptedObjectsProperty ::
  Value Prelude.Text -> SseKmsEncryptedObjectsProperty
mkSseKmsEncryptedObjectsProperty status
  = SseKmsEncryptedObjectsProperty {status = status}
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
  set newValue SseKmsEncryptedObjectsProperty {}
    = SseKmsEncryptedObjectsProperty {status = newValue, ..}