module Stratosphere.StepFunctions.StateMachine (
        module Exports, StateMachine(..), mkStateMachine
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.StepFunctions.StateMachine.LoggingConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.StepFunctions.StateMachine.S3LocationProperty as Exports
import {-# SOURCE #-} Stratosphere.StepFunctions.StateMachine.TagsEntryProperty as Exports
import {-# SOURCE #-} Stratosphere.StepFunctions.StateMachine.TracingConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data StateMachine
  = StateMachine {definition :: (Prelude.Maybe JSON.Object),
                  definitionS3Location :: (Prelude.Maybe S3LocationProperty),
                  definitionString :: (Prelude.Maybe (Value Prelude.Text)),
                  definitionSubstitutions :: (Prelude.Maybe (Prelude.Map Prelude.Text JSON.Object)),
                  loggingConfiguration :: (Prelude.Maybe LoggingConfigurationProperty),
                  roleArn :: (Value Prelude.Text),
                  stateMachineName :: (Prelude.Maybe (Value Prelude.Text)),
                  stateMachineType :: (Prelude.Maybe (Value Prelude.Text)),
                  tags :: (Prelude.Maybe [TagsEntryProperty]),
                  tracingConfiguration :: (Prelude.Maybe TracingConfigurationProperty)}
mkStateMachine :: Value Prelude.Text -> StateMachine
mkStateMachine roleArn
  = StateMachine
      {roleArn = roleArn, definition = Prelude.Nothing,
       definitionS3Location = Prelude.Nothing,
       definitionString = Prelude.Nothing,
       definitionSubstitutions = Prelude.Nothing,
       loggingConfiguration = Prelude.Nothing,
       stateMachineName = Prelude.Nothing,
       stateMachineType = Prelude.Nothing, tags = Prelude.Nothing,
       tracingConfiguration = Prelude.Nothing}
instance ToResourceProperties StateMachine where
  toResourceProperties StateMachine {..}
    = ResourceProperties
        {awsType = "AWS::StepFunctions::StateMachine",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["RoleArn" JSON..= roleArn]
                           (Prelude.catMaybes
                              [(JSON..=) "Definition" Prelude.<$> definition,
                               (JSON..=) "DefinitionS3Location" Prelude.<$> definitionS3Location,
                               (JSON..=) "DefinitionString" Prelude.<$> definitionString,
                               (JSON..=) "DefinitionSubstitutions"
                                 Prelude.<$> definitionSubstitutions,
                               (JSON..=) "LoggingConfiguration" Prelude.<$> loggingConfiguration,
                               (JSON..=) "StateMachineName" Prelude.<$> stateMachineName,
                               (JSON..=) "StateMachineType" Prelude.<$> stateMachineType,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "TracingConfiguration"
                                 Prelude.<$> tracingConfiguration]))}
instance JSON.ToJSON StateMachine where
  toJSON StateMachine {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["RoleArn" JSON..= roleArn]
              (Prelude.catMaybes
                 [(JSON..=) "Definition" Prelude.<$> definition,
                  (JSON..=) "DefinitionS3Location" Prelude.<$> definitionS3Location,
                  (JSON..=) "DefinitionString" Prelude.<$> definitionString,
                  (JSON..=) "DefinitionSubstitutions"
                    Prelude.<$> definitionSubstitutions,
                  (JSON..=) "LoggingConfiguration" Prelude.<$> loggingConfiguration,
                  (JSON..=) "StateMachineName" Prelude.<$> stateMachineName,
                  (JSON..=) "StateMachineType" Prelude.<$> stateMachineType,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "TracingConfiguration"
                    Prelude.<$> tracingConfiguration])))
instance Property "Definition" StateMachine where
  type PropertyType "Definition" StateMachine = JSON.Object
  set newValue StateMachine {..}
    = StateMachine {definition = Prelude.pure newValue, ..}
instance Property "DefinitionS3Location" StateMachine where
  type PropertyType "DefinitionS3Location" StateMachine = S3LocationProperty
  set newValue StateMachine {..}
    = StateMachine {definitionS3Location = Prelude.pure newValue, ..}
instance Property "DefinitionString" StateMachine where
  type PropertyType "DefinitionString" StateMachine = Value Prelude.Text
  set newValue StateMachine {..}
    = StateMachine {definitionString = Prelude.pure newValue, ..}
instance Property "DefinitionSubstitutions" StateMachine where
  type PropertyType "DefinitionSubstitutions" StateMachine = Prelude.Map Prelude.Text JSON.Object
  set newValue StateMachine {..}
    = StateMachine
        {definitionSubstitutions = Prelude.pure newValue, ..}
instance Property "LoggingConfiguration" StateMachine where
  type PropertyType "LoggingConfiguration" StateMachine = LoggingConfigurationProperty
  set newValue StateMachine {..}
    = StateMachine {loggingConfiguration = Prelude.pure newValue, ..}
instance Property "RoleArn" StateMachine where
  type PropertyType "RoleArn" StateMachine = Value Prelude.Text
  set newValue StateMachine {..}
    = StateMachine {roleArn = newValue, ..}
instance Property "StateMachineName" StateMachine where
  type PropertyType "StateMachineName" StateMachine = Value Prelude.Text
  set newValue StateMachine {..}
    = StateMachine {stateMachineName = Prelude.pure newValue, ..}
instance Property "StateMachineType" StateMachine where
  type PropertyType "StateMachineType" StateMachine = Value Prelude.Text
  set newValue StateMachine {..}
    = StateMachine {stateMachineType = Prelude.pure newValue, ..}
instance Property "Tags" StateMachine where
  type PropertyType "Tags" StateMachine = [TagsEntryProperty]
  set newValue StateMachine {..}
    = StateMachine {tags = Prelude.pure newValue, ..}
instance Property "TracingConfiguration" StateMachine where
  type PropertyType "TracingConfiguration" StateMachine = TracingConfigurationProperty
  set newValue StateMachine {..}
    = StateMachine {tracingConfiguration = Prelude.pure newValue, ..}