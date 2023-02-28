module Stratosphere.SSM.MaintenanceWindowTask (
        module Exports, MaintenanceWindowTask(..), mkMaintenanceWindowTask
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SSM.MaintenanceWindowTask.LoggingInfoProperty as Exports
import {-# SOURCE #-} Stratosphere.SSM.MaintenanceWindowTask.TargetProperty as Exports
import {-# SOURCE #-} Stratosphere.SSM.MaintenanceWindowTask.TaskInvocationParametersProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MaintenanceWindowTask
  = MaintenanceWindowTask {cutoffBehavior :: (Prelude.Maybe (Value Prelude.Text)),
                           description :: (Prelude.Maybe (Value Prelude.Text)),
                           loggingInfo :: (Prelude.Maybe LoggingInfoProperty),
                           maxConcurrency :: (Prelude.Maybe (Value Prelude.Text)),
                           maxErrors :: (Prelude.Maybe (Value Prelude.Text)),
                           name :: (Prelude.Maybe (Value Prelude.Text)),
                           priority :: (Value Prelude.Integer),
                           serviceRoleArn :: (Prelude.Maybe (Value Prelude.Text)),
                           targets :: (Prelude.Maybe [TargetProperty]),
                           taskArn :: (Value Prelude.Text),
                           taskInvocationParameters :: (Prelude.Maybe TaskInvocationParametersProperty),
                           taskParameters :: (Prelude.Maybe JSON.Object),
                           taskType :: (Value Prelude.Text),
                           windowId :: (Value Prelude.Text)}
mkMaintenanceWindowTask ::
  Value Prelude.Integer
  -> Value Prelude.Text
     -> Value Prelude.Text
        -> Value Prelude.Text -> MaintenanceWindowTask
mkMaintenanceWindowTask priority taskArn taskType windowId
  = MaintenanceWindowTask
      {priority = priority, taskArn = taskArn, taskType = taskType,
       windowId = windowId, cutoffBehavior = Prelude.Nothing,
       description = Prelude.Nothing, loggingInfo = Prelude.Nothing,
       maxConcurrency = Prelude.Nothing, maxErrors = Prelude.Nothing,
       name = Prelude.Nothing, serviceRoleArn = Prelude.Nothing,
       targets = Prelude.Nothing,
       taskInvocationParameters = Prelude.Nothing,
       taskParameters = Prelude.Nothing}
instance ToResourceProperties MaintenanceWindowTask where
  toResourceProperties MaintenanceWindowTask {..}
    = ResourceProperties
        {awsType = "AWS::SSM::MaintenanceWindowTask",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Priority" JSON..= priority, "TaskArn" JSON..= taskArn,
                            "TaskType" JSON..= taskType, "WindowId" JSON..= windowId]
                           (Prelude.catMaybes
                              [(JSON..=) "CutoffBehavior" Prelude.<$> cutoffBehavior,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "LoggingInfo" Prelude.<$> loggingInfo,
                               (JSON..=) "MaxConcurrency" Prelude.<$> maxConcurrency,
                               (JSON..=) "MaxErrors" Prelude.<$> maxErrors,
                               (JSON..=) "Name" Prelude.<$> name,
                               (JSON..=) "ServiceRoleArn" Prelude.<$> serviceRoleArn,
                               (JSON..=) "Targets" Prelude.<$> targets,
                               (JSON..=) "TaskInvocationParameters"
                                 Prelude.<$> taskInvocationParameters,
                               (JSON..=) "TaskParameters" Prelude.<$> taskParameters]))}
instance JSON.ToJSON MaintenanceWindowTask where
  toJSON MaintenanceWindowTask {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Priority" JSON..= priority, "TaskArn" JSON..= taskArn,
               "TaskType" JSON..= taskType, "WindowId" JSON..= windowId]
              (Prelude.catMaybes
                 [(JSON..=) "CutoffBehavior" Prelude.<$> cutoffBehavior,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "LoggingInfo" Prelude.<$> loggingInfo,
                  (JSON..=) "MaxConcurrency" Prelude.<$> maxConcurrency,
                  (JSON..=) "MaxErrors" Prelude.<$> maxErrors,
                  (JSON..=) "Name" Prelude.<$> name,
                  (JSON..=) "ServiceRoleArn" Prelude.<$> serviceRoleArn,
                  (JSON..=) "Targets" Prelude.<$> targets,
                  (JSON..=) "TaskInvocationParameters"
                    Prelude.<$> taskInvocationParameters,
                  (JSON..=) "TaskParameters" Prelude.<$> taskParameters])))
instance Property "CutoffBehavior" MaintenanceWindowTask where
  type PropertyType "CutoffBehavior" MaintenanceWindowTask = Value Prelude.Text
  set newValue MaintenanceWindowTask {..}
    = MaintenanceWindowTask
        {cutoffBehavior = Prelude.pure newValue, ..}
instance Property "Description" MaintenanceWindowTask where
  type PropertyType "Description" MaintenanceWindowTask = Value Prelude.Text
  set newValue MaintenanceWindowTask {..}
    = MaintenanceWindowTask {description = Prelude.pure newValue, ..}
instance Property "LoggingInfo" MaintenanceWindowTask where
  type PropertyType "LoggingInfo" MaintenanceWindowTask = LoggingInfoProperty
  set newValue MaintenanceWindowTask {..}
    = MaintenanceWindowTask {loggingInfo = Prelude.pure newValue, ..}
instance Property "MaxConcurrency" MaintenanceWindowTask where
  type PropertyType "MaxConcurrency" MaintenanceWindowTask = Value Prelude.Text
  set newValue MaintenanceWindowTask {..}
    = MaintenanceWindowTask
        {maxConcurrency = Prelude.pure newValue, ..}
instance Property "MaxErrors" MaintenanceWindowTask where
  type PropertyType "MaxErrors" MaintenanceWindowTask = Value Prelude.Text
  set newValue MaintenanceWindowTask {..}
    = MaintenanceWindowTask {maxErrors = Prelude.pure newValue, ..}
instance Property "Name" MaintenanceWindowTask where
  type PropertyType "Name" MaintenanceWindowTask = Value Prelude.Text
  set newValue MaintenanceWindowTask {..}
    = MaintenanceWindowTask {name = Prelude.pure newValue, ..}
instance Property "Priority" MaintenanceWindowTask where
  type PropertyType "Priority" MaintenanceWindowTask = Value Prelude.Integer
  set newValue MaintenanceWindowTask {..}
    = MaintenanceWindowTask {priority = newValue, ..}
instance Property "ServiceRoleArn" MaintenanceWindowTask where
  type PropertyType "ServiceRoleArn" MaintenanceWindowTask = Value Prelude.Text
  set newValue MaintenanceWindowTask {..}
    = MaintenanceWindowTask
        {serviceRoleArn = Prelude.pure newValue, ..}
instance Property "Targets" MaintenanceWindowTask where
  type PropertyType "Targets" MaintenanceWindowTask = [TargetProperty]
  set newValue MaintenanceWindowTask {..}
    = MaintenanceWindowTask {targets = Prelude.pure newValue, ..}
instance Property "TaskArn" MaintenanceWindowTask where
  type PropertyType "TaskArn" MaintenanceWindowTask = Value Prelude.Text
  set newValue MaintenanceWindowTask {..}
    = MaintenanceWindowTask {taskArn = newValue, ..}
instance Property "TaskInvocationParameters" MaintenanceWindowTask where
  type PropertyType "TaskInvocationParameters" MaintenanceWindowTask = TaskInvocationParametersProperty
  set newValue MaintenanceWindowTask {..}
    = MaintenanceWindowTask
        {taskInvocationParameters = Prelude.pure newValue, ..}
instance Property "TaskParameters" MaintenanceWindowTask where
  type PropertyType "TaskParameters" MaintenanceWindowTask = JSON.Object
  set newValue MaintenanceWindowTask {..}
    = MaintenanceWindowTask
        {taskParameters = Prelude.pure newValue, ..}
instance Property "TaskType" MaintenanceWindowTask where
  type PropertyType "TaskType" MaintenanceWindowTask = Value Prelude.Text
  set newValue MaintenanceWindowTask {..}
    = MaintenanceWindowTask {taskType = newValue, ..}
instance Property "WindowId" MaintenanceWindowTask where
  type PropertyType "WindowId" MaintenanceWindowTask = Value Prelude.Text
  set newValue MaintenanceWindowTask {..}
    = MaintenanceWindowTask {windowId = newValue, ..}