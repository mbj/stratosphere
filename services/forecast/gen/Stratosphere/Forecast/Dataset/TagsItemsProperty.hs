module Stratosphere.Forecast.Dataset.TagsItemsProperty (
        TagsItemsProperty(..), mkTagsItemsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TagsItemsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-forecast-dataset-tagsitems.html>
    TagsItemsProperty {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-forecast-dataset-tagsitems.html#cfn-forecast-dataset-tagsitems-key>
                       key :: (Value Prelude.Text),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-forecast-dataset-tagsitems.html#cfn-forecast-dataset-tagsitems-value>
                       value :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTagsItemsProperty ::
  Value Prelude.Text -> Value Prelude.Text -> TagsItemsProperty
mkTagsItemsProperty key value
  = TagsItemsProperty
      {haddock_workaround_ = (), key = key, value = value}
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