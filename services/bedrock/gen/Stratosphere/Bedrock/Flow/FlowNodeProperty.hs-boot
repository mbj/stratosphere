module Stratosphere.Bedrock.Flow.FlowNodeProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data FlowNodeProperty :: Prelude.Type
instance ToResourceProperties FlowNodeProperty
instance Prelude.Eq FlowNodeProperty
instance Prelude.Show FlowNodeProperty
instance JSON.ToJSON FlowNodeProperty