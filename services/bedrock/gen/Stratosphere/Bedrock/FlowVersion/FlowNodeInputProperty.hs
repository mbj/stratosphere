module Stratosphere.Bedrock.FlowVersion.FlowNodeInputProperty (
        FlowNodeInputProperty(..), mkFlowNodeInputProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FlowNodeInputProperty
  = FlowNodeInputProperty {expression :: (Value Prelude.Text),
                           name :: (Value Prelude.Text),
                           type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFlowNodeInputProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> FlowNodeInputProperty
mkFlowNodeInputProperty expression name type'
  = FlowNodeInputProperty
      {expression = expression, name = name, type' = type'}
instance ToResourceProperties FlowNodeInputProperty where
  toResourceProperties FlowNodeInputProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::FlowVersion.FlowNodeInput",
         supportsTags = Prelude.False,
         properties = ["Expression" JSON..= expression, "Name" JSON..= name,
                       "Type" JSON..= type']}
instance JSON.ToJSON FlowNodeInputProperty where
  toJSON FlowNodeInputProperty {..}
    = JSON.object
        ["Expression" JSON..= expression, "Name" JSON..= name,
         "Type" JSON..= type']
instance Property "Expression" FlowNodeInputProperty where
  type PropertyType "Expression" FlowNodeInputProperty = Value Prelude.Text
  set newValue FlowNodeInputProperty {..}
    = FlowNodeInputProperty {expression = newValue, ..}
instance Property "Name" FlowNodeInputProperty where
  type PropertyType "Name" FlowNodeInputProperty = Value Prelude.Text
  set newValue FlowNodeInputProperty {..}
    = FlowNodeInputProperty {name = newValue, ..}
instance Property "Type" FlowNodeInputProperty where
  type PropertyType "Type" FlowNodeInputProperty = Value Prelude.Text
  set newValue FlowNodeInputProperty {..}
    = FlowNodeInputProperty {type' = newValue, ..}