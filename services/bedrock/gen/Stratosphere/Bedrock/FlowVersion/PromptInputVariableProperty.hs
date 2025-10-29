module Stratosphere.Bedrock.FlowVersion.PromptInputVariableProperty (
        PromptInputVariableProperty(..), mkPromptInputVariableProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PromptInputVariableProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flowversion-promptinputvariable.html>
    PromptInputVariableProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flowversion-promptinputvariable.html#cfn-bedrock-flowversion-promptinputvariable-name>
                                 name :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPromptInputVariableProperty :: PromptInputVariableProperty
mkPromptInputVariableProperty
  = PromptInputVariableProperty {name = Prelude.Nothing}
instance ToResourceProperties PromptInputVariableProperty where
  toResourceProperties PromptInputVariableProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::FlowVersion.PromptInputVariable",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Name" Prelude.<$> name])}
instance JSON.ToJSON PromptInputVariableProperty where
  toJSON PromptInputVariableProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Name" Prelude.<$> name]))
instance Property "Name" PromptInputVariableProperty where
  type PropertyType "Name" PromptInputVariableProperty = Value Prelude.Text
  set newValue PromptInputVariableProperty {}
    = PromptInputVariableProperty {name = Prelude.pure newValue, ..}