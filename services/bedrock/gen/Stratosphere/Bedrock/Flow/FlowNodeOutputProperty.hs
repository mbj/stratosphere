module Stratosphere.Bedrock.Flow.FlowNodeOutputProperty (
        FlowNodeOutputProperty(..), mkFlowNodeOutputProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FlowNodeOutputProperty
  = FlowNodeOutputProperty {name :: (Value Prelude.Text),
                            type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFlowNodeOutputProperty ::
  Value Prelude.Text -> Value Prelude.Text -> FlowNodeOutputProperty
mkFlowNodeOutputProperty name type'
  = FlowNodeOutputProperty {name = name, type' = type'}
instance ToResourceProperties FlowNodeOutputProperty where
  toResourceProperties FlowNodeOutputProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::Flow.FlowNodeOutput",
         supportsTags = Prelude.False,
         properties = ["Name" JSON..= name, "Type" JSON..= type']}
instance JSON.ToJSON FlowNodeOutputProperty where
  toJSON FlowNodeOutputProperty {..}
    = JSON.object ["Name" JSON..= name, "Type" JSON..= type']
instance Property "Name" FlowNodeOutputProperty where
  type PropertyType "Name" FlowNodeOutputProperty = Value Prelude.Text
  set newValue FlowNodeOutputProperty {..}
    = FlowNodeOutputProperty {name = newValue, ..}
instance Property "Type" FlowNodeOutputProperty where
  type PropertyType "Type" FlowNodeOutputProperty = Value Prelude.Text
  set newValue FlowNodeOutputProperty {..}
    = FlowNodeOutputProperty {type' = newValue, ..}