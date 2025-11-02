module Stratosphere.Wisdom.AIAgent.TagConditionProperty (
        TagConditionProperty(..), mkTagConditionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TagConditionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-aiagent-tagcondition.html>
    TagConditionProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-aiagent-tagcondition.html#cfn-wisdom-aiagent-tagcondition-key>
                          key :: (Value Prelude.Text),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-aiagent-tagcondition.html#cfn-wisdom-aiagent-tagcondition-value>
                          value :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTagConditionProperty ::
  Value Prelude.Text -> TagConditionProperty
mkTagConditionProperty key
  = TagConditionProperty
      {haddock_workaround_ = (), key = key, value = Prelude.Nothing}
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