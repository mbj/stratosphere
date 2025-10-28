module Stratosphere.Bedrock.Flow.FlowNodeProperty (
        module Exports, FlowNodeProperty(..), mkFlowNodeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.Flow.FlowNodeConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Bedrock.Flow.FlowNodeInputProperty as Exports
import {-# SOURCE #-} Stratosphere.Bedrock.Flow.FlowNodeOutputProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FlowNodeProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flow-flownode.html>
    FlowNodeProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flow-flownode.html#cfn-bedrock-flow-flownode-configuration>
                      configuration :: (Prelude.Maybe FlowNodeConfigurationProperty),
                      -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flow-flownode.html#cfn-bedrock-flow-flownode-inputs>
                      inputs :: (Prelude.Maybe [FlowNodeInputProperty]),
                      -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flow-flownode.html#cfn-bedrock-flow-flownode-name>
                      name :: (Value Prelude.Text),
                      -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flow-flownode.html#cfn-bedrock-flow-flownode-outputs>
                      outputs :: (Prelude.Maybe [FlowNodeOutputProperty]),
                      -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flow-flownode.html#cfn-bedrock-flow-flownode-type>
                      type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFlowNodeProperty ::
  Value Prelude.Text -> Value Prelude.Text -> FlowNodeProperty
mkFlowNodeProperty name type'
  = FlowNodeProperty
      {name = name, type' = type', configuration = Prelude.Nothing,
       inputs = Prelude.Nothing, outputs = Prelude.Nothing}
instance ToResourceProperties FlowNodeProperty where
  toResourceProperties FlowNodeProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::Flow.FlowNode",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name, "Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "Configuration" Prelude.<$> configuration,
                               (JSON..=) "Inputs" Prelude.<$> inputs,
                               (JSON..=) "Outputs" Prelude.<$> outputs]))}
instance JSON.ToJSON FlowNodeProperty where
  toJSON FlowNodeProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name, "Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "Configuration" Prelude.<$> configuration,
                  (JSON..=) "Inputs" Prelude.<$> inputs,
                  (JSON..=) "Outputs" Prelude.<$> outputs])))
instance Property "Configuration" FlowNodeProperty where
  type PropertyType "Configuration" FlowNodeProperty = FlowNodeConfigurationProperty
  set newValue FlowNodeProperty {..}
    = FlowNodeProperty {configuration = Prelude.pure newValue, ..}
instance Property "Inputs" FlowNodeProperty where
  type PropertyType "Inputs" FlowNodeProperty = [FlowNodeInputProperty]
  set newValue FlowNodeProperty {..}
    = FlowNodeProperty {inputs = Prelude.pure newValue, ..}
instance Property "Name" FlowNodeProperty where
  type PropertyType "Name" FlowNodeProperty = Value Prelude.Text
  set newValue FlowNodeProperty {..}
    = FlowNodeProperty {name = newValue, ..}
instance Property "Outputs" FlowNodeProperty where
  type PropertyType "Outputs" FlowNodeProperty = [FlowNodeOutputProperty]
  set newValue FlowNodeProperty {..}
    = FlowNodeProperty {outputs = Prelude.pure newValue, ..}
instance Property "Type" FlowNodeProperty where
  type PropertyType "Type" FlowNodeProperty = Value Prelude.Text
  set newValue FlowNodeProperty {..}
    = FlowNodeProperty {type' = newValue, ..}