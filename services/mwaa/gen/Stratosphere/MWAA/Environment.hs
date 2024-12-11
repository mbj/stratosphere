module Stratosphere.MWAA.Environment (
        module Exports, Environment(..), mkEnvironment
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MWAA.Environment.LoggingConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.MWAA.Environment.NetworkConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Environment
  = Environment {airflowConfigurationOptions :: (Prelude.Maybe JSON.Object),
                 airflowVersion :: (Prelude.Maybe (Value Prelude.Text)),
                 dagS3Path :: (Prelude.Maybe (Value Prelude.Text)),
                 endpointManagement :: (Prelude.Maybe (Value Prelude.Text)),
                 environmentClass :: (Prelude.Maybe (Value Prelude.Text)),
                 executionRoleArn :: (Prelude.Maybe (Value Prelude.Text)),
                 kmsKey :: (Prelude.Maybe (Value Prelude.Text)),
                 loggingConfiguration :: (Prelude.Maybe LoggingConfigurationProperty),
                 maxWebservers :: (Prelude.Maybe (Value Prelude.Integer)),
                 maxWorkers :: (Prelude.Maybe (Value Prelude.Integer)),
                 minWebservers :: (Prelude.Maybe (Value Prelude.Integer)),
                 minWorkers :: (Prelude.Maybe (Value Prelude.Integer)),
                 name :: (Value Prelude.Text),
                 networkConfiguration :: (Prelude.Maybe NetworkConfigurationProperty),
                 pluginsS3ObjectVersion :: (Prelude.Maybe (Value Prelude.Text)),
                 pluginsS3Path :: (Prelude.Maybe (Value Prelude.Text)),
                 requirementsS3ObjectVersion :: (Prelude.Maybe (Value Prelude.Text)),
                 requirementsS3Path :: (Prelude.Maybe (Value Prelude.Text)),
                 schedulers :: (Prelude.Maybe (Value Prelude.Integer)),
                 sourceBucketArn :: (Prelude.Maybe (Value Prelude.Text)),
                 startupScriptS3ObjectVersion :: (Prelude.Maybe (Value Prelude.Text)),
                 startupScriptS3Path :: (Prelude.Maybe (Value Prelude.Text)),
                 tags :: (Prelude.Maybe JSON.Object),
                 webserverAccessMode :: (Prelude.Maybe (Value Prelude.Text)),
                 weeklyMaintenanceWindowStart :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEnvironment :: Value Prelude.Text -> Environment
mkEnvironment name
  = Environment
      {name = name, airflowConfigurationOptions = Prelude.Nothing,
       airflowVersion = Prelude.Nothing, dagS3Path = Prelude.Nothing,
       endpointManagement = Prelude.Nothing,
       environmentClass = Prelude.Nothing,
       executionRoleArn = Prelude.Nothing, kmsKey = Prelude.Nothing,
       loggingConfiguration = Prelude.Nothing,
       maxWebservers = Prelude.Nothing, maxWorkers = Prelude.Nothing,
       minWebservers = Prelude.Nothing, minWorkers = Prelude.Nothing,
       networkConfiguration = Prelude.Nothing,
       pluginsS3ObjectVersion = Prelude.Nothing,
       pluginsS3Path = Prelude.Nothing,
       requirementsS3ObjectVersion = Prelude.Nothing,
       requirementsS3Path = Prelude.Nothing, schedulers = Prelude.Nothing,
       sourceBucketArn = Prelude.Nothing,
       startupScriptS3ObjectVersion = Prelude.Nothing,
       startupScriptS3Path = Prelude.Nothing, tags = Prelude.Nothing,
       webserverAccessMode = Prelude.Nothing,
       weeklyMaintenanceWindowStart = Prelude.Nothing}
instance ToResourceProperties Environment where
  toResourceProperties Environment {..}
    = ResourceProperties
        {awsType = "AWS::MWAA::Environment", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "AirflowConfigurationOptions"
                                 Prelude.<$> airflowConfigurationOptions,
                               (JSON..=) "AirflowVersion" Prelude.<$> airflowVersion,
                               (JSON..=) "DagS3Path" Prelude.<$> dagS3Path,
                               (JSON..=) "EndpointManagement" Prelude.<$> endpointManagement,
                               (JSON..=) "EnvironmentClass" Prelude.<$> environmentClass,
                               (JSON..=) "ExecutionRoleArn" Prelude.<$> executionRoleArn,
                               (JSON..=) "KmsKey" Prelude.<$> kmsKey,
                               (JSON..=) "LoggingConfiguration" Prelude.<$> loggingConfiguration,
                               (JSON..=) "MaxWebservers" Prelude.<$> maxWebservers,
                               (JSON..=) "MaxWorkers" Prelude.<$> maxWorkers,
                               (JSON..=) "MinWebservers" Prelude.<$> minWebservers,
                               (JSON..=) "MinWorkers" Prelude.<$> minWorkers,
                               (JSON..=) "NetworkConfiguration" Prelude.<$> networkConfiguration,
                               (JSON..=) "PluginsS3ObjectVersion"
                                 Prelude.<$> pluginsS3ObjectVersion,
                               (JSON..=) "PluginsS3Path" Prelude.<$> pluginsS3Path,
                               (JSON..=) "RequirementsS3ObjectVersion"
                                 Prelude.<$> requirementsS3ObjectVersion,
                               (JSON..=) "RequirementsS3Path" Prelude.<$> requirementsS3Path,
                               (JSON..=) "Schedulers" Prelude.<$> schedulers,
                               (JSON..=) "SourceBucketArn" Prelude.<$> sourceBucketArn,
                               (JSON..=) "StartupScriptS3ObjectVersion"
                                 Prelude.<$> startupScriptS3ObjectVersion,
                               (JSON..=) "StartupScriptS3Path" Prelude.<$> startupScriptS3Path,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "WebserverAccessMode" Prelude.<$> webserverAccessMode,
                               (JSON..=) "WeeklyMaintenanceWindowStart"
                                 Prelude.<$> weeklyMaintenanceWindowStart]))}
instance JSON.ToJSON Environment where
  toJSON Environment {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "AirflowConfigurationOptions"
                    Prelude.<$> airflowConfigurationOptions,
                  (JSON..=) "AirflowVersion" Prelude.<$> airflowVersion,
                  (JSON..=) "DagS3Path" Prelude.<$> dagS3Path,
                  (JSON..=) "EndpointManagement" Prelude.<$> endpointManagement,
                  (JSON..=) "EnvironmentClass" Prelude.<$> environmentClass,
                  (JSON..=) "ExecutionRoleArn" Prelude.<$> executionRoleArn,
                  (JSON..=) "KmsKey" Prelude.<$> kmsKey,
                  (JSON..=) "LoggingConfiguration" Prelude.<$> loggingConfiguration,
                  (JSON..=) "MaxWebservers" Prelude.<$> maxWebservers,
                  (JSON..=) "MaxWorkers" Prelude.<$> maxWorkers,
                  (JSON..=) "MinWebservers" Prelude.<$> minWebservers,
                  (JSON..=) "MinWorkers" Prelude.<$> minWorkers,
                  (JSON..=) "NetworkConfiguration" Prelude.<$> networkConfiguration,
                  (JSON..=) "PluginsS3ObjectVersion"
                    Prelude.<$> pluginsS3ObjectVersion,
                  (JSON..=) "PluginsS3Path" Prelude.<$> pluginsS3Path,
                  (JSON..=) "RequirementsS3ObjectVersion"
                    Prelude.<$> requirementsS3ObjectVersion,
                  (JSON..=) "RequirementsS3Path" Prelude.<$> requirementsS3Path,
                  (JSON..=) "Schedulers" Prelude.<$> schedulers,
                  (JSON..=) "SourceBucketArn" Prelude.<$> sourceBucketArn,
                  (JSON..=) "StartupScriptS3ObjectVersion"
                    Prelude.<$> startupScriptS3ObjectVersion,
                  (JSON..=) "StartupScriptS3Path" Prelude.<$> startupScriptS3Path,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "WebserverAccessMode" Prelude.<$> webserverAccessMode,
                  (JSON..=) "WeeklyMaintenanceWindowStart"
                    Prelude.<$> weeklyMaintenanceWindowStart])))
instance Property "AirflowConfigurationOptions" Environment where
  type PropertyType "AirflowConfigurationOptions" Environment = JSON.Object
  set newValue Environment {..}
    = Environment
        {airflowConfigurationOptions = Prelude.pure newValue, ..}
instance Property "AirflowVersion" Environment where
  type PropertyType "AirflowVersion" Environment = Value Prelude.Text
  set newValue Environment {..}
    = Environment {airflowVersion = Prelude.pure newValue, ..}
instance Property "DagS3Path" Environment where
  type PropertyType "DagS3Path" Environment = Value Prelude.Text
  set newValue Environment {..}
    = Environment {dagS3Path = Prelude.pure newValue, ..}
instance Property "EndpointManagement" Environment where
  type PropertyType "EndpointManagement" Environment = Value Prelude.Text
  set newValue Environment {..}
    = Environment {endpointManagement = Prelude.pure newValue, ..}
instance Property "EnvironmentClass" Environment where
  type PropertyType "EnvironmentClass" Environment = Value Prelude.Text
  set newValue Environment {..}
    = Environment {environmentClass = Prelude.pure newValue, ..}
instance Property "ExecutionRoleArn" Environment where
  type PropertyType "ExecutionRoleArn" Environment = Value Prelude.Text
  set newValue Environment {..}
    = Environment {executionRoleArn = Prelude.pure newValue, ..}
instance Property "KmsKey" Environment where
  type PropertyType "KmsKey" Environment = Value Prelude.Text
  set newValue Environment {..}
    = Environment {kmsKey = Prelude.pure newValue, ..}
instance Property "LoggingConfiguration" Environment where
  type PropertyType "LoggingConfiguration" Environment = LoggingConfigurationProperty
  set newValue Environment {..}
    = Environment {loggingConfiguration = Prelude.pure newValue, ..}
instance Property "MaxWebservers" Environment where
  type PropertyType "MaxWebservers" Environment = Value Prelude.Integer
  set newValue Environment {..}
    = Environment {maxWebservers = Prelude.pure newValue, ..}
instance Property "MaxWorkers" Environment where
  type PropertyType "MaxWorkers" Environment = Value Prelude.Integer
  set newValue Environment {..}
    = Environment {maxWorkers = Prelude.pure newValue, ..}
instance Property "MinWebservers" Environment where
  type PropertyType "MinWebservers" Environment = Value Prelude.Integer
  set newValue Environment {..}
    = Environment {minWebservers = Prelude.pure newValue, ..}
instance Property "MinWorkers" Environment where
  type PropertyType "MinWorkers" Environment = Value Prelude.Integer
  set newValue Environment {..}
    = Environment {minWorkers = Prelude.pure newValue, ..}
instance Property "Name" Environment where
  type PropertyType "Name" Environment = Value Prelude.Text
  set newValue Environment {..} = Environment {name = newValue, ..}
instance Property "NetworkConfiguration" Environment where
  type PropertyType "NetworkConfiguration" Environment = NetworkConfigurationProperty
  set newValue Environment {..}
    = Environment {networkConfiguration = Prelude.pure newValue, ..}
instance Property "PluginsS3ObjectVersion" Environment where
  type PropertyType "PluginsS3ObjectVersion" Environment = Value Prelude.Text
  set newValue Environment {..}
    = Environment {pluginsS3ObjectVersion = Prelude.pure newValue, ..}
instance Property "PluginsS3Path" Environment where
  type PropertyType "PluginsS3Path" Environment = Value Prelude.Text
  set newValue Environment {..}
    = Environment {pluginsS3Path = Prelude.pure newValue, ..}
instance Property "RequirementsS3ObjectVersion" Environment where
  type PropertyType "RequirementsS3ObjectVersion" Environment = Value Prelude.Text
  set newValue Environment {..}
    = Environment
        {requirementsS3ObjectVersion = Prelude.pure newValue, ..}
instance Property "RequirementsS3Path" Environment where
  type PropertyType "RequirementsS3Path" Environment = Value Prelude.Text
  set newValue Environment {..}
    = Environment {requirementsS3Path = Prelude.pure newValue, ..}
instance Property "Schedulers" Environment where
  type PropertyType "Schedulers" Environment = Value Prelude.Integer
  set newValue Environment {..}
    = Environment {schedulers = Prelude.pure newValue, ..}
instance Property "SourceBucketArn" Environment where
  type PropertyType "SourceBucketArn" Environment = Value Prelude.Text
  set newValue Environment {..}
    = Environment {sourceBucketArn = Prelude.pure newValue, ..}
instance Property "StartupScriptS3ObjectVersion" Environment where
  type PropertyType "StartupScriptS3ObjectVersion" Environment = Value Prelude.Text
  set newValue Environment {..}
    = Environment
        {startupScriptS3ObjectVersion = Prelude.pure newValue, ..}
instance Property "StartupScriptS3Path" Environment where
  type PropertyType "StartupScriptS3Path" Environment = Value Prelude.Text
  set newValue Environment {..}
    = Environment {startupScriptS3Path = Prelude.pure newValue, ..}
instance Property "Tags" Environment where
  type PropertyType "Tags" Environment = JSON.Object
  set newValue Environment {..}
    = Environment {tags = Prelude.pure newValue, ..}
instance Property "WebserverAccessMode" Environment where
  type PropertyType "WebserverAccessMode" Environment = Value Prelude.Text
  set newValue Environment {..}
    = Environment {webserverAccessMode = Prelude.pure newValue, ..}
instance Property "WeeklyMaintenanceWindowStart" Environment where
  type PropertyType "WeeklyMaintenanceWindowStart" Environment = Value Prelude.Text
  set newValue Environment {..}
    = Environment
        {weeklyMaintenanceWindowStart = Prelude.pure newValue, ..}