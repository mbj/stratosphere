module Stratosphere.Bedrock.Flow.FlowConditionProperty (
        FlowConditionProperty(..), mkFlowConditionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FlowConditionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flow-flowcondition.html>
    FlowConditionProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flow-flowcondition.html#cfn-bedrock-flow-flowcondition-expression>
                           expression :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flow-flowcondition.html#cfn-bedrock-flow-flowcondition-name>
                           name :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFlowConditionProperty ::
  Value Prelude.Text -> FlowConditionProperty
mkFlowConditionProperty name
  = FlowConditionProperty
      {haddock_workaround_ = (), name = name,
       expression = Prelude.Nothing}
instance ToResourceProperties FlowConditionProperty where
  toResourceProperties FlowConditionProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::Flow.FlowCondition",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "Expression" Prelude.<$> expression]))}
instance JSON.ToJSON FlowConditionProperty where
  toJSON FlowConditionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "Expression" Prelude.<$> expression])))
instance Property "Expression" FlowConditionProperty where
  type PropertyType "Expression" FlowConditionProperty = Value Prelude.Text
  set newValue FlowConditionProperty {..}
    = FlowConditionProperty {expression = Prelude.pure newValue, ..}
instance Property "Name" FlowConditionProperty where
  type PropertyType "Name" FlowConditionProperty = Value Prelude.Text
  set newValue FlowConditionProperty {..}
    = FlowConditionProperty {name = newValue, ..}