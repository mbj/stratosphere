module Stratosphere.AppConfig.Application.TagsProperty (
        TagsProperty(..), mkTagsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TagsProperty
  = TagsProperty {key :: (Value Prelude.Text),
                  value :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTagsProperty ::
  Value Prelude.Text -> Value Prelude.Text -> TagsProperty
mkTagsProperty key value = TagsProperty {key = key, value = value}
instance ToResourceProperties TagsProperty where
  toResourceProperties TagsProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppConfig::Application.Tags",
         supportsTags = Prelude.False,
         properties = ["Key" JSON..= key, "Value" JSON..= value]}
instance JSON.ToJSON TagsProperty where
  toJSON TagsProperty {..}
    = JSON.object ["Key" JSON..= key, "Value" JSON..= value]
instance Property "Key" TagsProperty where
  type PropertyType "Key" TagsProperty = Value Prelude.Text
  set newValue TagsProperty {..} = TagsProperty {key = newValue, ..}
instance Property "Value" TagsProperty where
  type PropertyType "Value" TagsProperty = Value Prelude.Text
  set newValue TagsProperty {..}
    = TagsProperty {value = newValue, ..}