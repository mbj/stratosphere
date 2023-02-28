module Stratosphere.CustomerProfiles.Integration.FlowDefinitionProperty (
        module Exports, FlowDefinitionProperty(..),
        mkFlowDefinitionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CustomerProfiles.Integration.SourceFlowConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.CustomerProfiles.Integration.TaskProperty as Exports
import {-# SOURCE #-} Stratosphere.CustomerProfiles.Integration.TriggerConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FlowDefinitionProperty
  = FlowDefinitionProperty {description :: (Prelude.Maybe (Value Prelude.Text)),
                            flowName :: (Value Prelude.Text),
                            kmsArn :: (Value Prelude.Text),
                            sourceFlowConfig :: SourceFlowConfigProperty,
                            tasks :: [TaskProperty],
                            triggerConfig :: TriggerConfigProperty}
mkFlowDefinitionProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> SourceFlowConfigProperty
        -> [TaskProperty]
           -> TriggerConfigProperty -> FlowDefinitionProperty
mkFlowDefinitionProperty
  flowName
  kmsArn
  sourceFlowConfig
  tasks
  triggerConfig
  = FlowDefinitionProperty
      {flowName = flowName, kmsArn = kmsArn,
       sourceFlowConfig = sourceFlowConfig, tasks = tasks,
       triggerConfig = triggerConfig, description = Prelude.Nothing}
instance ToResourceProperties FlowDefinitionProperty where
  toResourceProperties FlowDefinitionProperty {..}
    = ResourceProperties
        {awsType = "AWS::CustomerProfiles::Integration.FlowDefinition",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["FlowName" JSON..= flowName, "KmsArn" JSON..= kmsArn,
                            "SourceFlowConfig" JSON..= sourceFlowConfig, "Tasks" JSON..= tasks,
                            "TriggerConfig" JSON..= triggerConfig]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description]))}
instance JSON.ToJSON FlowDefinitionProperty where
  toJSON FlowDefinitionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["FlowName" JSON..= flowName, "KmsArn" JSON..= kmsArn,
               "SourceFlowConfig" JSON..= sourceFlowConfig, "Tasks" JSON..= tasks,
               "TriggerConfig" JSON..= triggerConfig]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description])))
instance Property "Description" FlowDefinitionProperty where
  type PropertyType "Description" FlowDefinitionProperty = Value Prelude.Text
  set newValue FlowDefinitionProperty {..}
    = FlowDefinitionProperty {description = Prelude.pure newValue, ..}
instance Property "FlowName" FlowDefinitionProperty where
  type PropertyType "FlowName" FlowDefinitionProperty = Value Prelude.Text
  set newValue FlowDefinitionProperty {..}
    = FlowDefinitionProperty {flowName = newValue, ..}
instance Property "KmsArn" FlowDefinitionProperty where
  type PropertyType "KmsArn" FlowDefinitionProperty = Value Prelude.Text
  set newValue FlowDefinitionProperty {..}
    = FlowDefinitionProperty {kmsArn = newValue, ..}
instance Property "SourceFlowConfig" FlowDefinitionProperty where
  type PropertyType "SourceFlowConfig" FlowDefinitionProperty = SourceFlowConfigProperty
  set newValue FlowDefinitionProperty {..}
    = FlowDefinitionProperty {sourceFlowConfig = newValue, ..}
instance Property "Tasks" FlowDefinitionProperty where
  type PropertyType "Tasks" FlowDefinitionProperty = [TaskProperty]
  set newValue FlowDefinitionProperty {..}
    = FlowDefinitionProperty {tasks = newValue, ..}
instance Property "TriggerConfig" FlowDefinitionProperty where
  type PropertyType "TriggerConfig" FlowDefinitionProperty = TriggerConfigProperty
  set newValue FlowDefinitionProperty {..}
    = FlowDefinitionProperty {triggerConfig = newValue, ..}