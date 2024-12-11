module Stratosphere.Wisdom.AIAgent.TagConditionProperty (
        TagConditionProperty(..), mkTagConditionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TagConditionProperty
  = TagConditionProperty {key :: (Value Prelude.Text),
                          value :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTagConditionProperty ::
  Value Prelude.Text -> TagConditionProperty
mkTagConditionProperty key
  = TagConditionProperty {key = key, value = Prelude.Nothing}
instance ToResourceProperties TagConditionProperty where
  toResourceProperties TagConditionProperty {..}
    = ResourceProperties
        {awsType = "AWS::Wisdom::AIAgent.TagCondition",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Key" JSON..= key]
                           (Prelude.catMaybes [(JSON..=) "Value" Prelude.<$> value]))}
instance JSON.ToJSON TagConditionProperty where
  toJSON TagConditionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Key" JSON..= key]
              (Prelude.catMaybes [(JSON..=) "Value" Prelude.<$> value])))
instance Property "Key" TagConditionProperty where
  type PropertyType "Key" TagConditionProperty = Value Prelude.Text
  set newValue TagConditionProperty {..}
    = TagConditionProperty {key = newValue, ..}
instance Property "Value" TagConditionProperty where
  type PropertyType "Value" TagConditionProperty = Value Prelude.Text
  set newValue TagConditionProperty {..}
    = TagConditionProperty {value = Prelude.pure newValue, ..}