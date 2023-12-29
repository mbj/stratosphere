module Stratosphere.CloudFront.ResponseHeadersPolicy.ContentTypeOptionsProperty (
        ContentTypeOptionsProperty(..), mkContentTypeOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ContentTypeOptionsProperty
  = ContentTypeOptionsProperty {override :: (Value Prelude.Bool)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkContentTypeOptionsProperty ::
  Value Prelude.Bool -> ContentTypeOptionsProperty
mkContentTypeOptionsProperty override
  = ContentTypeOptionsProperty {override = override}
instance ToResourceProperties ContentTypeOptionsProperty where
  toResourceProperties ContentTypeOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::ResponseHeadersPolicy.ContentTypeOptions",
         supportsTags = Prelude.False,
         properties = ["Override" JSON..= override]}
instance JSON.ToJSON ContentTypeOptionsProperty where
  toJSON ContentTypeOptionsProperty {..}
    = JSON.object ["Override" JSON..= override]
instance Property "Override" ContentTypeOptionsProperty where
  type PropertyType "Override" ContentTypeOptionsProperty = Value Prelude.Bool
  set newValue ContentTypeOptionsProperty {}
    = ContentTypeOptionsProperty {override = newValue, ..}