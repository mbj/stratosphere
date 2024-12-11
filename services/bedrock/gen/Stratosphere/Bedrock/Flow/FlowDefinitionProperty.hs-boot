module Stratosphere.Bedrock.Flow.FlowDefinitionProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data FlowDefinitionProperty :: Prelude.Type
instance ToResourceProperties FlowDefinitionProperty
instance Prelude.Eq FlowDefinitionProperty
instance Prelude.Show FlowDefinitionProperty
instance JSON.ToJSON FlowDefinitionProperty