module Stratosphere.Bedrock.FlowVersion.FlowNodeInputProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data FlowNodeInputProperty :: Prelude.Type
instance ToResourceProperties FlowNodeInputProperty
instance Prelude.Eq FlowNodeInputProperty
instance Prelude.Show FlowNodeInputProperty
instance JSON.ToJSON FlowNodeInputProperty