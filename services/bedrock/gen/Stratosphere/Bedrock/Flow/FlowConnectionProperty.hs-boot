module Stratosphere.Bedrock.Flow.FlowConnectionProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data FlowConnectionProperty :: Prelude.Type
instance ToResourceProperties FlowConnectionProperty
instance Prelude.Eq FlowConnectionProperty
instance Prelude.Show FlowConnectionProperty
instance JSON.ToJSON FlowConnectionProperty