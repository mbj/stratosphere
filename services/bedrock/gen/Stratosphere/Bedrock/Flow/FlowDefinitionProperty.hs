module Stratosphere.Bedrock.Flow.FlowDefinitionProperty (
        module Exports, FlowDefinitionProperty(..),
        mkFlowDefinitionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.Flow.FlowConnectionProperty as Exports
import {-# SOURCE #-} Stratosphere.Bedrock.Flow.FlowNodeProperty as Exports
import Stratosphere.ResourceProperties
data FlowDefinitionProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flow-flowdefinition.html>
    FlowDefinitionProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flow-flowdefinition.html#cfn-bedrock-flow-flowdefinition-connections>
                            connections :: (Prelude.Maybe [FlowConnectionProperty]),
                            -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flow-flowdefinition.html#cfn-bedrock-flow-flowdefinition-nodes>
                            nodes :: (Prelude.Maybe [FlowNodeProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFlowDefinitionProperty :: FlowDefinitionProperty
mkFlowDefinitionProperty
  = FlowDefinitionProperty
      {connections = Prelude.Nothing, nodes = Prelude.Nothing}
instance ToResourceProperties FlowDefinitionProperty where
  toResourceProperties FlowDefinitionProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::Flow.FlowDefinition",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Connections" Prelude.<$> connections,
                            (JSON..=) "Nodes" Prelude.<$> nodes])}
instance JSON.ToJSON FlowDefinitionProperty where
  toJSON FlowDefinitionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Connections" Prelude.<$> connections,
               (JSON..=) "Nodes" Prelude.<$> nodes]))
instance Property "Connections" FlowDefinitionProperty where
  type PropertyType "Connections" FlowDefinitionProperty = [FlowConnectionProperty]
  set newValue FlowDefinitionProperty {..}
    = FlowDefinitionProperty {connections = Prelude.pure newValue, ..}
instance Property "Nodes" FlowDefinitionProperty where
  type PropertyType "Nodes" FlowDefinitionProperty = [FlowNodeProperty]
  set newValue FlowDefinitionProperty {..}
    = FlowDefinitionProperty {nodes = Prelude.pure newValue, ..}