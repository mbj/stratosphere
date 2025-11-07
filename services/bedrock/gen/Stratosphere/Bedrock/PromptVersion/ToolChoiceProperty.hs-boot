module Stratosphere.Bedrock.PromptVersion.ToolChoiceProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ToolChoiceProperty :: Prelude.Type
instance ToResourceProperties ToolChoiceProperty
instance Prelude.Eq ToolChoiceProperty
instance Prelude.Show ToolChoiceProperty
instance JSON.ToJSON ToolChoiceProperty