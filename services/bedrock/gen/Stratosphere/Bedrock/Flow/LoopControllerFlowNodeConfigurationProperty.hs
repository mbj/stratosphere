module Stratosphere.Bedrock.Flow.LoopControllerFlowNodeConfigurationProperty (
        module Exports, LoopControllerFlowNodeConfigurationProperty(..),
        mkLoopControllerFlowNodeConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.Flow.FlowConditionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LoopControllerFlowNodeConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flow-loopcontrollerflownodeconfiguration.html>
    LoopControllerFlowNodeConfigurationProperty {haddock_workaround_ :: (),
                                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flow-loopcontrollerflownodeconfiguration.html#cfn-bedrock-flow-loopcontrollerflownodeconfiguration-continuecondition>
                                                 continueCondition :: FlowConditionProperty,
                                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flow-loopcontrollerflownodeconfiguration.html#cfn-bedrock-flow-loopcontrollerflownodeconfiguration-maxiterations>
                                                 maxIterations :: (Prelude.Maybe (Value Prelude.Double))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLoopControllerFlowNodeConfigurationProperty ::
  FlowConditionProperty
  -> LoopControllerFlowNodeConfigurationProperty
mkLoopControllerFlowNodeConfigurationProperty continueCondition
  = LoopControllerFlowNodeConfigurationProperty
      {haddock_workaround_ = (), continueCondition = continueCondition,
       maxIterations = Prelude.Nothing}
instance ToResourceProperties LoopControllerFlowNodeConfigurationProperty where
  toResourceProperties
    LoopControllerFlowNodeConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::Flow.LoopControllerFlowNodeConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ContinueCondition" JSON..= continueCondition]
                           (Prelude.catMaybes
                              [(JSON..=) "MaxIterations" Prelude.<$> maxIterations]))}
instance JSON.ToJSON LoopControllerFlowNodeConfigurationProperty where
  toJSON LoopControllerFlowNodeConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ContinueCondition" JSON..= continueCondition]
              (Prelude.catMaybes
                 [(JSON..=) "MaxIterations" Prelude.<$> maxIterations])))
instance Property "ContinueCondition" LoopControllerFlowNodeConfigurationProperty where
  type PropertyType "ContinueCondition" LoopControllerFlowNodeConfigurationProperty = FlowConditionProperty
  set newValue LoopControllerFlowNodeConfigurationProperty {..}
    = LoopControllerFlowNodeConfigurationProperty
        {continueCondition = newValue, ..}
instance Property "MaxIterations" LoopControllerFlowNodeConfigurationProperty where
  type PropertyType "MaxIterations" LoopControllerFlowNodeConfigurationProperty = Value Prelude.Double
  set newValue LoopControllerFlowNodeConfigurationProperty {..}
    = LoopControllerFlowNodeConfigurationProperty
        {maxIterations = Prelude.pure newValue, ..}