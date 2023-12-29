module Stratosphere.SSM.MaintenanceWindowTask.TaskInvocationParametersProperty (
        module Exports, TaskInvocationParametersProperty(..),
        mkTaskInvocationParametersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SSM.MaintenanceWindowTask.MaintenanceWindowAutomationParametersProperty as Exports
import {-# SOURCE #-} Stratosphere.SSM.MaintenanceWindowTask.MaintenanceWindowLambdaParametersProperty as Exports
import {-# SOURCE #-} Stratosphere.SSM.MaintenanceWindowTask.MaintenanceWindowRunCommandParametersProperty as Exports
import {-# SOURCE #-} Stratosphere.SSM.MaintenanceWindowTask.MaintenanceWindowStepFunctionsParametersProperty as Exports
import Stratosphere.ResourceProperties
data TaskInvocationParametersProperty
  = TaskInvocationParametersProperty {maintenanceWindowAutomationParameters :: (Prelude.Maybe MaintenanceWindowAutomationParametersProperty),
                                      maintenanceWindowLambdaParameters :: (Prelude.Maybe MaintenanceWindowLambdaParametersProperty),
                                      maintenanceWindowRunCommandParameters :: (Prelude.Maybe MaintenanceWindowRunCommandParametersProperty),
                                      maintenanceWindowStepFunctionsParameters :: (Prelude.Maybe MaintenanceWindowStepFunctionsParametersProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTaskInvocationParametersProperty ::
  TaskInvocationParametersProperty
mkTaskInvocationParametersProperty
  = TaskInvocationParametersProperty
      {maintenanceWindowAutomationParameters = Prelude.Nothing,
       maintenanceWindowLambdaParameters = Prelude.Nothing,
       maintenanceWindowRunCommandParameters = Prelude.Nothing,
       maintenanceWindowStepFunctionsParameters = Prelude.Nothing}
instance ToResourceProperties TaskInvocationParametersProperty where
  toResourceProperties TaskInvocationParametersProperty {..}
    = ResourceProperties
        {awsType = "AWS::SSM::MaintenanceWindowTask.TaskInvocationParameters",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "MaintenanceWindowAutomationParameters"
                              Prelude.<$> maintenanceWindowAutomationParameters,
                            (JSON..=) "MaintenanceWindowLambdaParameters"
                              Prelude.<$> maintenanceWindowLambdaParameters,
                            (JSON..=) "MaintenanceWindowRunCommandParameters"
                              Prelude.<$> maintenanceWindowRunCommandParameters,
                            (JSON..=) "MaintenanceWindowStepFunctionsParameters"
                              Prelude.<$> maintenanceWindowStepFunctionsParameters])}
instance JSON.ToJSON TaskInvocationParametersProperty where
  toJSON TaskInvocationParametersProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "MaintenanceWindowAutomationParameters"
                 Prelude.<$> maintenanceWindowAutomationParameters,
               (JSON..=) "MaintenanceWindowLambdaParameters"
                 Prelude.<$> maintenanceWindowLambdaParameters,
               (JSON..=) "MaintenanceWindowRunCommandParameters"
                 Prelude.<$> maintenanceWindowRunCommandParameters,
               (JSON..=) "MaintenanceWindowStepFunctionsParameters"
                 Prelude.<$> maintenanceWindowStepFunctionsParameters]))
instance Property "MaintenanceWindowAutomationParameters" TaskInvocationParametersProperty where
  type PropertyType "MaintenanceWindowAutomationParameters" TaskInvocationParametersProperty = MaintenanceWindowAutomationParametersProperty
  set newValue TaskInvocationParametersProperty {..}
    = TaskInvocationParametersProperty
        {maintenanceWindowAutomationParameters = Prelude.pure newValue, ..}
instance Property "MaintenanceWindowLambdaParameters" TaskInvocationParametersProperty where
  type PropertyType "MaintenanceWindowLambdaParameters" TaskInvocationParametersProperty = MaintenanceWindowLambdaParametersProperty
  set newValue TaskInvocationParametersProperty {..}
    = TaskInvocationParametersProperty
        {maintenanceWindowLambdaParameters = Prelude.pure newValue, ..}
instance Property "MaintenanceWindowRunCommandParameters" TaskInvocationParametersProperty where
  type PropertyType "MaintenanceWindowRunCommandParameters" TaskInvocationParametersProperty = MaintenanceWindowRunCommandParametersProperty
  set newValue TaskInvocationParametersProperty {..}
    = TaskInvocationParametersProperty
        {maintenanceWindowRunCommandParameters = Prelude.pure newValue, ..}
instance Property "MaintenanceWindowStepFunctionsParameters" TaskInvocationParametersProperty where
  type PropertyType "MaintenanceWindowStepFunctionsParameters" TaskInvocationParametersProperty = MaintenanceWindowStepFunctionsParametersProperty
  set newValue TaskInvocationParametersProperty {..}
    = TaskInvocationParametersProperty
        {maintenanceWindowStepFunctionsParameters = Prelude.pure newValue,
         ..}