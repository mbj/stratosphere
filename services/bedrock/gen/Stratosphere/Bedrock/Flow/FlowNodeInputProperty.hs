module Stratosphere.Bedrock.Flow.FlowNodeInputProperty (
        FlowNodeInputProperty(..), mkFlowNodeInputProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FlowNodeInputProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flow-flownodeinput.html>
    FlowNodeInputProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flow-flownodeinput.html#cfn-bedrock-flow-flownodeinput-category>
                           category :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flow-flownodeinput.html#cfn-bedrock-flow-flownodeinput-expression>
                           expression :: (Value Prelude.Text),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flow-flownodeinput.html#cfn-bedrock-flow-flownodeinput-name>
                           name :: (Value Prelude.Text),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flow-flownodeinput.html#cfn-bedrock-flow-flownodeinput-type>
                           type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFlowNodeInputProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> FlowNodeInputProperty
mkFlowNodeInputProperty expression name type'
  = FlowNodeInputProperty
      {haddock_workaround_ = (), expression = expression, name = name,
       type' = type', category = Prelude.Nothing}
instance ToResourceProperties FlowNodeInputProperty where
  toResourceProperties FlowNodeInputProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::Flow.FlowNodeInput",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Expression" JSON..= expression, "Name" JSON..= name,
                            "Type" JSON..= type']
                           (Prelude.catMaybes [(JSON..=) "Category" Prelude.<$> category]))}
instance JSON.ToJSON FlowNodeInputProperty where
  toJSON FlowNodeInputProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Expression" JSON..= expression, "Name" JSON..= name,
               "Type" JSON..= type']
              (Prelude.catMaybes [(JSON..=) "Category" Prelude.<$> category])))
instance Property "Category" FlowNodeInputProperty where
  type PropertyType "Category" FlowNodeInputProperty = Value Prelude.Text
  set newValue FlowNodeInputProperty {..}
    = FlowNodeInputProperty {category = Prelude.pure newValue, ..}
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