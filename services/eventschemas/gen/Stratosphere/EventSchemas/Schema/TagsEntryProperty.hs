module Stratosphere.EventSchemas.Schema.TagsEntryProperty (
        TagsEntryProperty(..), mkTagsEntryProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TagsEntryProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eventschemas-schema-tagsentry.html>
    TagsEntryProperty {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eventschemas-schema-tagsentry.html#cfn-eventschemas-schema-tagsentry-key>
                       key :: (Value Prelude.Text),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eventschemas-schema-tagsentry.html#cfn-eventschemas-schema-tagsentry-value>
                       value :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTagsEntryProperty ::
  Value Prelude.Text -> Value Prelude.Text -> TagsEntryProperty
mkTagsEntryProperty key value
  = TagsEntryProperty
      {haddock_workaround_ = (), key = key, value = value}
instance ToResourceProperties TagsEntryProperty where
  toResourceProperties TagsEntryProperty {..}
    = ResourceProperties
        {awsType = "AWS::EventSchemas::Schema.TagsEntry",
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