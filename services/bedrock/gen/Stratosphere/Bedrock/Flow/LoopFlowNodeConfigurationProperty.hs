module Stratosphere.Bedrock.Flow.LoopFlowNodeConfigurationProperty (
        module Exports, LoopFlowNodeConfigurationProperty(..),
        mkLoopFlowNodeConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.Flow.FlowDefinitionProperty as Exports
import Stratosphere.ResourceProperties
data LoopFlowNodeConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flow-loopflownodeconfiguration.html>
    LoopFlowNodeConfigurationProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flow-loopflownodeconfiguration.html#cfn-bedrock-flow-loopflownodeconfiguration-definition>
                                       definition :: FlowDefinitionProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLoopFlowNodeConfigurationProperty ::
  FlowDefinitionProperty -> LoopFlowNodeConfigurationProperty
mkLoopFlowNodeConfigurationProperty definition
  = LoopFlowNodeConfigurationProperty
      {haddock_workaround_ = (), definition = definition}
instance ToResourceProperties LoopFlowNodeConfigurationProperty where
  toResourceProperties LoopFlowNodeConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::Flow.LoopFlowNodeConfiguration",
         supportsTags = Prelude.False,
         properties = ["Definition" JSON..= definition]}
instance JSON.ToJSON LoopFlowNodeConfigurationProperty where
  toJSON LoopFlowNodeConfigurationProperty {..}
    = JSON.object ["Definition" JSON..= definition]
instance Property "Definition" LoopFlowNodeConfigurationProperty where
  type PropertyType "Definition" LoopFlowNodeConfigurationProperty = FlowDefinitionProperty
  set newValue LoopFlowNodeConfigurationProperty {..}
    = LoopFlowNodeConfigurationProperty {definition = newValue, ..}