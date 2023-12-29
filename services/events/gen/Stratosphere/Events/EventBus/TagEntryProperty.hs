module Stratosphere.Events.EventBus.TagEntryProperty (
        TagEntryProperty(..), mkTagEntryProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TagEntryProperty
  = TagEntryProperty {key :: (Value Prelude.Text),
                      value :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTagEntryProperty ::
  Value Prelude.Text -> Value Prelude.Text -> TagEntryProperty
mkTagEntryProperty key value
  = TagEntryProperty {key = key, value = value}
instance ToResourceProperties TagEntryProperty where
  toResourceProperties TagEntryProperty {..}
    = ResourceProperties
        {awsType = "AWS::Events::EventBus.TagEntry",
         supportsTags = Prelude.False,
         properties = ["Key" JSON..= key, "Value" JSON..= value]}
instance JSON.ToJSON TagEntryProperty where
  toJSON TagEntryProperty {..}
    = JSON.object ["Key" JSON..= key, "Value" JSON..= value]
instance Property "Key" TagEntryProperty where
  type PropertyType "Key" TagEntryProperty = Value Prelude.Text
  set newValue TagEntryProperty {..}
    = TagEntryProperty {key = newValue, ..}
instance Property "Value" TagEntryProperty where
  type PropertyType "Value" TagEntryProperty = Value Prelude.Text
  set newValue TagEntryProperty {..}
    = TagEntryProperty {value = newValue, ..}