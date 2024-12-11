module Stratosphere.Bedrock.Agent.FunctionSchemaProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data FunctionSchemaProperty :: Prelude.Type
instance ToResourceProperties FunctionSchemaProperty
instance Prelude.Eq FunctionSchemaProperty
instance Prelude.Show FunctionSchemaProperty
instance JSON.ToJSON FunctionSchemaProperty