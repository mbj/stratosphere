module Stratosphere.Bedrock.Agent.FunctionProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data FunctionProperty :: Prelude.Type
instance ToResourceProperties FunctionProperty
instance Prelude.Eq FunctionProperty
instance Prelude.Show FunctionProperty
instance JSON.ToJSON FunctionProperty