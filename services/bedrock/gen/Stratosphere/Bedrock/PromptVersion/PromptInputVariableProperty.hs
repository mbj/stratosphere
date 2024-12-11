module Stratosphere.Bedrock.PromptVersion.PromptInputVariableProperty (
        PromptInputVariableProperty(..), mkPromptInputVariableProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PromptInputVariableProperty
  = PromptInputVariableProperty {name :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPromptInputVariableProperty :: PromptInputVariableProperty
mkPromptInputVariableProperty
  = PromptInputVariableProperty {name = Prelude.Nothing}
instance ToResourceProperties PromptInputVariableProperty where
  toResourceProperties PromptInputVariableProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::PromptVersion.PromptInputVariable",
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