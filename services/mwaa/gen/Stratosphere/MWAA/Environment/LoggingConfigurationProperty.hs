module Stratosphere.MWAA.Environment.LoggingConfigurationProperty (
        module Exports, LoggingConfigurationProperty(..),
        mkLoggingConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MWAA.Environment.ModuleLoggingConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data LoggingConfigurationProperty
  = LoggingConfigurationProperty {dagProcessingLogs :: (Prelude.Maybe ModuleLoggingConfigurationProperty),
                                  schedulerLogs :: (Prelude.Maybe ModuleLoggingConfigurationProperty),
                                  taskLogs :: (Prelude.Maybe ModuleLoggingConfigurationProperty),
                                  webserverLogs :: (Prelude.Maybe ModuleLoggingConfigurationProperty),
                                  workerLogs :: (Prelude.Maybe ModuleLoggingConfigurationProperty)}
mkLoggingConfigurationProperty :: LoggingConfigurationProperty
mkLoggingConfigurationProperty
  = LoggingConfigurationProperty
      {dagProcessingLogs = Prelude.Nothing,
       schedulerLogs = Prelude.Nothing, taskLogs = Prelude.Nothing,
       webserverLogs = Prelude.Nothing, workerLogs = Prelude.Nothing}
instance ToResourceProperties LoggingConfigurationProperty where
  toResourceProperties LoggingConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::MWAA::Environment.LoggingConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DagProcessingLogs" Prelude.<$> dagProcessingLogs,
                            (JSON..=) "SchedulerLogs" Prelude.<$> schedulerLogs,
                            (JSON..=) "TaskLogs" Prelude.<$> taskLogs,
                            (JSON..=) "WebserverLogs" Prelude.<$> webserverLogs,
                            (JSON..=) "WorkerLogs" Prelude.<$> workerLogs])}
instance JSON.ToJSON LoggingConfigurationProperty where
  toJSON LoggingConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DagProcessingLogs" Prelude.<$> dagProcessingLogs,
               (JSON..=) "SchedulerLogs" Prelude.<$> schedulerLogs,
               (JSON..=) "TaskLogs" Prelude.<$> taskLogs,
               (JSON..=) "WebserverLogs" Prelude.<$> webserverLogs,
               (JSON..=) "WorkerLogs" Prelude.<$> workerLogs]))
instance Property "DagProcessingLogs" LoggingConfigurationProperty where
  type PropertyType "DagProcessingLogs" LoggingConfigurationProperty = ModuleLoggingConfigurationProperty
  set newValue LoggingConfigurationProperty {..}
    = LoggingConfigurationProperty
        {dagProcessingLogs = Prelude.pure newValue, ..}
instance Property "SchedulerLogs" LoggingConfigurationProperty where
  type PropertyType "SchedulerLogs" LoggingConfigurationProperty = ModuleLoggingConfigurationProperty
  set newValue LoggingConfigurationProperty {..}
    = LoggingConfigurationProperty
        {schedulerLogs = Prelude.pure newValue, ..}
instance Property "TaskLogs" LoggingConfigurationProperty where
  type PropertyType "TaskLogs" LoggingConfigurationProperty = ModuleLoggingConfigurationProperty
  set newValue LoggingConfigurationProperty {..}
    = LoggingConfigurationProperty
        {taskLogs = Prelude.pure newValue, ..}
instance Property "WebserverLogs" LoggingConfigurationProperty where
  type PropertyType "WebserverLogs" LoggingConfigurationProperty = ModuleLoggingConfigurationProperty
  set newValue LoggingConfigurationProperty {..}
    = LoggingConfigurationProperty
        {webserverLogs = Prelude.pure newValue, ..}
instance Property "WorkerLogs" LoggingConfigurationProperty where
  type PropertyType "WorkerLogs" LoggingConfigurationProperty = ModuleLoggingConfigurationProperty
  set newValue LoggingConfigurationProperty {..}
    = LoggingConfigurationProperty
        {workerLogs = Prelude.pure newValue, ..}