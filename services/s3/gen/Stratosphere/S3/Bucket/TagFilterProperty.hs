module Stratosphere.S3.Bucket.TagFilterProperty (
        TagFilterProperty(..), mkTagFilterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TagFilterProperty
  = TagFilterProperty {key :: (Value Prelude.Text),
                       value :: (Value Prelude.Text)}
mkTagFilterProperty ::
  Value Prelude.Text -> Value Prelude.Text -> TagFilterProperty
mkTagFilterProperty key value
  = TagFilterProperty {key = key, value = value}
instance ToResourceProperties TagFilterProperty where
  toResourceProperties TagFilterProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3::Bucket.TagFilter",
         properties = ["Key" JSON..= key, "Value" JSON..= value]}
instance JSON.ToJSON TagFilterProperty where
  toJSON TagFilterProperty {..}
    = JSON.object ["Key" JSON..= key, "Value" JSON..= value]
instance Property "Key" TagFilterProperty where
  type PropertyType "Key" TagFilterProperty = Value Prelude.Text
  set newValue TagFilterProperty {..}
    = TagFilterProperty {key = newValue, ..}
instance Property "Value" TagFilterProperty where
  type PropertyType "Value" TagFilterProperty = Value Prelude.Text
  set newValue TagFilterProperty {..}
    = TagFilterProperty {value = newValue, ..}