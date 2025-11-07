module Stratosphere.Bedrock.Prompt.ToolProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ToolProperty :: Prelude.Type
instance ToResourceProperties ToolProperty
instance Prelude.Eq ToolProperty
instance Prelude.Show ToolProperty
instance JSON.ToJSON ToolProperty