module Stratosphere.Forecast.Dataset.TagsItemsProperty (
        TagsItemsProperty(..), mkTagsItemsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TagsItemsProperty
  = TagsItemsProperty {key :: (Value Prelude.Text),
                       value :: (Value Prelude.Text)}
mkTagsItemsProperty ::
  Value Prelude.Text -> Value Prelude.Text -> TagsItemsProperty
mkTagsItemsProperty key value
  = TagsItemsProperty {key = key, value = value}
instance ToResourceProperties TagsItemsProperty where
  toResourceProperties TagsItemsProperty {..}
    = ResourceProperties
        {awsType = "AWS::Forecast::Dataset.TagsItems",
         supportsTags = Prelude.False,
         properties = ["Key" JSON..= key, "Value" JSON..= value]}
instance JSON.ToJSON TagsItemsProperty where
  toJSON TagsItemsProperty {..}
    = JSON.object ["Key" JSON..= key, "Value" JSON..= value]
instance Property "Key" TagsItemsProperty where
  type PropertyType "Key" TagsItemsProperty = Value Prelude.Text
  set newValue TagsItemsProperty {..}
    = TagsItemsProperty {key = newValue, ..}
instance Property "Value" TagsItemsProperty where
  type PropertyType "Value" TagsItemsProperty = Value Prelude.Text
  set newValue TagsItemsProperty {..}
    = TagsItemsProperty {value = newValue, ..}