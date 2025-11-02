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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mwaa-environment-loggingconfiguration.html>
    LoggingConfigurationProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mwaa-environment-loggingconfiguration.html#cfn-mwaa-environment-loggingconfiguration-dagprocessinglogs>
                                  dagProcessingLogs :: (Prelude.Maybe ModuleLoggingConfigurationProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mwaa-environment-loggingconfiguration.html#cfn-mwaa-environment-loggingconfiguration-schedulerlogs>
                                  schedulerLogs :: (Prelude.Maybe ModuleLoggingConfigurationProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mwaa-environment-loggingconfiguration.html#cfn-mwaa-environment-loggingconfiguration-tasklogs>
                                  taskLogs :: (Prelude.Maybe ModuleLoggingConfigurationProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mwaa-environment-loggingconfiguration.html#cfn-mwaa-environment-loggingconfiguration-webserverlogs>
                                  webserverLogs :: (Prelude.Maybe ModuleLoggingConfigurationProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mwaa-environment-loggingconfiguration.html#cfn-mwaa-environment-loggingconfiguration-workerlogs>
                                  workerLogs :: (Prelude.Maybe ModuleLoggingConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLoggingConfigurationProperty :: LoggingConfigurationProperty
mkLoggingConfigurationProperty
  = LoggingConfigurationProperty
      {haddock_workaround_ = (), dagProcessingLogs = Prelude.Nothing,
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