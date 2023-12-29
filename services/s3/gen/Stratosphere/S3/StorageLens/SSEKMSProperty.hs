module Stratosphere.S3.StorageLens.SSEKMSProperty (
        SSEKMSProperty(..), mkSSEKMSProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SSEKMSProperty
  = SSEKMSProperty {keyId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSSEKMSProperty :: Value Prelude.Text -> SSEKMSProperty
mkSSEKMSProperty keyId = SSEKMSProperty {keyId = keyId}
instance ToResourceProperties SSEKMSProperty where
  toResourceProperties SSEKMSProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3::StorageLens.SSEKMS",
         supportsTags = Prelude.False, properties = ["KeyId" JSON..= keyId]}
instance JSON.ToJSON SSEKMSProperty where
  toJSON SSEKMSProperty {..} = JSON.object ["KeyId" JSON..= keyId]
instance Property "KeyId" SSEKMSProperty where
  type PropertyType "KeyId" SSEKMSProperty = Value Prelude.Text
  set newValue SSEKMSProperty {}
    = SSEKMSProperty {keyId = newValue, ..}