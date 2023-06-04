module Stratosphere.KinesisFirehose.DeliveryStream.DocumentIdOptionsProperty (
        DocumentIdOptionsProperty(..), mkDocumentIdOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DocumentIdOptionsProperty
  = DocumentIdOptionsProperty {defaultDocumentIdFormat :: (Value Prelude.Text)}
mkDocumentIdOptionsProperty ::
  Value Prelude.Text -> DocumentIdOptionsProperty
mkDocumentIdOptionsProperty defaultDocumentIdFormat
  = DocumentIdOptionsProperty
      {defaultDocumentIdFormat = defaultDocumentIdFormat}
instance ToResourceProperties DocumentIdOptionsProperty where
  toResourceProperties DocumentIdOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisFirehose::DeliveryStream.DocumentIdOptions",
         supportsTags = Prelude.False,
         properties = ["DefaultDocumentIdFormat"
                         JSON..= defaultDocumentIdFormat]}
instance JSON.ToJSON DocumentIdOptionsProperty where
  toJSON DocumentIdOptionsProperty {..}
    = JSON.object
        ["DefaultDocumentIdFormat" JSON..= defaultDocumentIdFormat]
instance Property "DefaultDocumentIdFormat" DocumentIdOptionsProperty where
  type PropertyType "DefaultDocumentIdFormat" DocumentIdOptionsProperty = Value Prelude.Text
  set newValue DocumentIdOptionsProperty {}
    = DocumentIdOptionsProperty
        {defaultDocumentIdFormat = newValue, ..}