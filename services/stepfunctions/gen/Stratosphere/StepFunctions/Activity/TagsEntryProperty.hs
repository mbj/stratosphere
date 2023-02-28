module Stratosphere.StepFunctions.Activity.TagsEntryProperty (
        TagsEntryProperty(..), mkTagsEntryProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TagsEntryProperty
  = TagsEntryProperty {key :: (Value Prelude.Text),
                       value :: (Value Prelude.Text)}
mkTagsEntryProperty ::
  Value Prelude.Text -> Value Prelude.Text -> TagsEntryProperty
mkTagsEntryProperty key value
  = TagsEntryProperty {key = key, value = value}
instance ToResourceProperties TagsEntryProperty where
  toResourceProperties TagsEntryProperty {..}
    = ResourceProperties
        {awsType = "AWS::StepFunctions::Activity.TagsEntry",
         supportsTags = Prelude.False,
         properties = ["Key" JSON..= key, "Value" JSON..= value]}
instance JSON.ToJSON TagsEntryProperty where
  toJSON TagsEntryProperty {..}
    = JSON.object ["Key" JSON..= key, "Value" JSON..= value]
instance Property "Key" TagsEntryProperty where
  type PropertyType "Key" TagsEntryProperty = Value Prelude.Text
  set newValue TagsEntryProperty {..}
    = TagsEntryProperty {key = newValue, ..}
instance Property "Value" TagsEntryProperty where
  type PropertyType "Value" TagsEntryProperty = Value Prelude.Text
  set newValue TagsEntryProperty {..}
    = TagsEntryProperty {value = newValue, ..}