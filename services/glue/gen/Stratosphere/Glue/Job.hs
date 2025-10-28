module Stratosphere.Glue.Job (
        module Exports, Job(..), mkJob
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Glue.Job.ConnectionsListProperty as Exports
import {-# SOURCE #-} Stratosphere.Glue.Job.ExecutionPropertyProperty as Exports
import {-# SOURCE #-} Stratosphere.Glue.Job.JobCommandProperty as Exports
import {-# SOURCE #-} Stratosphere.Glue.Job.NotificationPropertyProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Job
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-job.html>
    Job {haddock_workaround_ :: (),
         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-job.html#cfn-glue-job-allocatedcapacity>
         allocatedCapacity :: (Prelude.Maybe (Value Prelude.Double)),
         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-job.html#cfn-glue-job-command>
         command :: JobCommandProperty,
         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-job.html#cfn-glue-job-connections>
         connections :: (Prelude.Maybe ConnectionsListProperty),
         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-job.html#cfn-glue-job-defaultarguments>
         defaultArguments :: (Prelude.Maybe JSON.Object),
         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-job.html#cfn-glue-job-description>
         description :: (Prelude.Maybe (Value Prelude.Text)),
         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-job.html#cfn-glue-job-executionclass>
         executionClass :: (Prelude.Maybe (Value Prelude.Text)),
         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-job.html#cfn-glue-job-executionproperty>
         executionProperty :: (Prelude.Maybe ExecutionPropertyProperty),
         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-job.html#cfn-glue-job-glueversion>
         glueVersion :: (Prelude.Maybe (Value Prelude.Text)),
         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-job.html#cfn-glue-job-jobmode>
         jobMode :: (Prelude.Maybe (Value Prelude.Text)),
         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-job.html#cfn-glue-job-jobrunqueuingenabled>
         jobRunQueuingEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-job.html#cfn-glue-job-loguri>
         logUri :: (Prelude.Maybe (Value Prelude.Text)),
         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-job.html#cfn-glue-job-maintenancewindow>
         maintenanceWindow :: (Prelude.Maybe (Value Prelude.Text)),
         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-job.html#cfn-glue-job-maxcapacity>
         maxCapacity :: (Prelude.Maybe (Value Prelude.Double)),
         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-job.html#cfn-glue-job-maxretries>
         maxRetries :: (Prelude.Maybe (Value Prelude.Double)),
         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-job.html#cfn-glue-job-name>
         name :: (Prelude.Maybe (Value Prelude.Text)),
         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-job.html#cfn-glue-job-nonoverridablearguments>
         nonOverridableArguments :: (Prelude.Maybe JSON.Object),
         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-job.html#cfn-glue-job-notificationproperty>
         notificationProperty :: (Prelude.Maybe NotificationPropertyProperty),
         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-job.html#cfn-glue-job-numberofworkers>
         numberOfWorkers :: (Prelude.Maybe (Value Prelude.Integer)),
         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-job.html#cfn-glue-job-role>
         role :: (Value Prelude.Text),
         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-job.html#cfn-glue-job-securityconfiguration>
         securityConfiguration :: (Prelude.Maybe (Value Prelude.Text)),
         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-job.html#cfn-glue-job-tags>
         tags :: (Prelude.Maybe JSON.Object),
         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-job.html#cfn-glue-job-timeout>
         timeout :: (Prelude.Maybe (Value Prelude.Integer)),
         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-job.html#cfn-glue-job-workertype>
         workerType :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkJob :: JobCommandProperty -> Value Prelude.Text -> Job
mkJob command role
  = Job
      {haddock_workaround_ = (), command = command, role = role,
       allocatedCapacity = Prelude.Nothing, connections = Prelude.Nothing,
       defaultArguments = Prelude.Nothing, description = Prelude.Nothing,
       executionClass = Prelude.Nothing,
       executionProperty = Prelude.Nothing, glueVersion = Prelude.Nothing,
       jobMode = Prelude.Nothing, jobRunQueuingEnabled = Prelude.Nothing,
       logUri = Prelude.Nothing, maintenanceWindow = Prelude.Nothing,
       maxCapacity = Prelude.Nothing, maxRetries = Prelude.Nothing,
       name = Prelude.Nothing, nonOverridableArguments = Prelude.Nothing,
       notificationProperty = Prelude.Nothing,
       numberOfWorkers = Prelude.Nothing,
       securityConfiguration = Prelude.Nothing, tags = Prelude.Nothing,
       timeout = Prelude.Nothing, workerType = Prelude.Nothing}
instance ToResourceProperties Job where
  toResourceProperties Job {..}
    = ResourceProperties
        {awsType = "AWS::Glue::Job", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Command" JSON..= command, "Role" JSON..= role]
                           (Prelude.catMaybes
                              [(JSON..=) "AllocatedCapacity" Prelude.<$> allocatedCapacity,
                               (JSON..=) "Connections" Prelude.<$> connections,
                               (JSON..=) "DefaultArguments" Prelude.<$> defaultArguments,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "ExecutionClass" Prelude.<$> executionClass,
                               (JSON..=) "ExecutionProperty" Prelude.<$> executionProperty,
                               (JSON..=) "GlueVersion" Prelude.<$> glueVersion,
                               (JSON..=) "JobMode" Prelude.<$> jobMode,
                               (JSON..=) "JobRunQueuingEnabled" Prelude.<$> jobRunQueuingEnabled,
                               (JSON..=) "LogUri" Prelude.<$> logUri,
                               (JSON..=) "MaintenanceWindow" Prelude.<$> maintenanceWindow,
                               (JSON..=) "MaxCapacity" Prelude.<$> maxCapacity,
                               (JSON..=) "MaxRetries" Prelude.<$> maxRetries,
                               (JSON..=) "Name" Prelude.<$> name,
                               (JSON..=) "NonOverridableArguments"
                                 Prelude.<$> nonOverridableArguments,
                               (JSON..=) "NotificationProperty" Prelude.<$> notificationProperty,
                               (JSON..=) "NumberOfWorkers" Prelude.<$> numberOfWorkers,
                               (JSON..=) "SecurityConfiguration"
                                 Prelude.<$> securityConfiguration,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "Timeout" Prelude.<$> timeout,
                               (JSON..=) "WorkerType" Prelude.<$> workerType]))}
instance JSON.ToJSON Job where
  toJSON Job {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Command" JSON..= command, "Role" JSON..= role]
              (Prelude.catMaybes
                 [(JSON..=) "AllocatedCapacity" Prelude.<$> allocatedCapacity,
                  (JSON..=) "Connections" Prelude.<$> connections,
                  (JSON..=) "DefaultArguments" Prelude.<$> defaultArguments,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "ExecutionClass" Prelude.<$> executionClass,
                  (JSON..=) "ExecutionProperty" Prelude.<$> executionProperty,
                  (JSON..=) "GlueVersion" Prelude.<$> glueVersion,
                  (JSON..=) "JobMode" Prelude.<$> jobMode,
                  (JSON..=) "JobRunQueuingEnabled" Prelude.<$> jobRunQueuingEnabled,
                  (JSON..=) "LogUri" Prelude.<$> logUri,
                  (JSON..=) "MaintenanceWindow" Prelude.<$> maintenanceWindow,
                  (JSON..=) "MaxCapacity" Prelude.<$> maxCapacity,
                  (JSON..=) "MaxRetries" Prelude.<$> maxRetries,
                  (JSON..=) "Name" Prelude.<$> name,
                  (JSON..=) "NonOverridableArguments"
                    Prelude.<$> nonOverridableArguments,
                  (JSON..=) "NotificationProperty" Prelude.<$> notificationProperty,
                  (JSON..=) "NumberOfWorkers" Prelude.<$> numberOfWorkers,
                  (JSON..=) "SecurityConfiguration"
                    Prelude.<$> securityConfiguration,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "Timeout" Prelude.<$> timeout,
                  (JSON..=) "WorkerType" Prelude.<$> workerType])))
instance Property "AllocatedCapacity" Job where
  type PropertyType "AllocatedCapacity" Job = Value Prelude.Double
  set newValue Job {..}
    = Job {allocatedCapacity = Prelude.pure newValue, ..}
instance Property "Command" Job where
  type PropertyType "Command" Job = JobCommandProperty
  set newValue Job {..} = Job {command = newValue, ..}
instance Property "Connections" Job where
  type PropertyType "Connections" Job = ConnectionsListProperty
  set newValue Job {..}
    = Job {connections = Prelude.pure newValue, ..}
instance Property "DefaultArguments" Job where
  type PropertyType "DefaultArguments" Job = JSON.Object
  set newValue Job {..}
    = Job {defaultArguments = Prelude.pure newValue, ..}
instance Property "Description" Job where
  type PropertyType "Description" Job = Value Prelude.Text
  set newValue Job {..}
    = Job {description = Prelude.pure newValue, ..}
instance Property "ExecutionClass" Job where
  type PropertyType "ExecutionClass" Job = Value Prelude.Text
  set newValue Job {..}
    = Job {executionClass = Prelude.pure newValue, ..}
instance Property "ExecutionProperty" Job where
  type PropertyType "ExecutionProperty" Job = ExecutionPropertyProperty
  set newValue Job {..}
    = Job {executionProperty = Prelude.pure newValue, ..}
instance Property "GlueVersion" Job where
  type PropertyType "GlueVersion" Job = Value Prelude.Text
  set newValue Job {..}
    = Job {glueVersion = Prelude.pure newValue, ..}
instance Property "JobMode" Job where
  type PropertyType "JobMode" Job = Value Prelude.Text
  set newValue Job {..} = Job {jobMode = Prelude.pure newValue, ..}
instance Property "JobRunQueuingEnabled" Job where
  type PropertyType "JobRunQueuingEnabled" Job = Value Prelude.Bool
  set newValue Job {..}
    = Job {jobRunQueuingEnabled = Prelude.pure newValue, ..}
instance Property "LogUri" Job where
  type PropertyType "LogUri" Job = Value Prelude.Text
  set newValue Job {..} = Job {logUri = Prelude.pure newValue, ..}
instance Property "MaintenanceWindow" Job where
  type PropertyType "MaintenanceWindow" Job = Value Prelude.Text
  set newValue Job {..}
    = Job {maintenanceWindow = Prelude.pure newValue, ..}
instance Property "MaxCapacity" Job where
  type PropertyType "MaxCapacity" Job = Value Prelude.Double
  set newValue Job {..}
    = Job {maxCapacity = Prelude.pure newValue, ..}
instance Property "MaxRetries" Job where
  type PropertyType "MaxRetries" Job = Value Prelude.Double
  set newValue Job {..}
    = Job {maxRetries = Prelude.pure newValue, ..}
instance Property "Name" Job where
  type PropertyType "Name" Job = Value Prelude.Text
  set newValue Job {..} = Job {name = Prelude.pure newValue, ..}
instance Property "NonOverridableArguments" Job where
  type PropertyType "NonOverridableArguments" Job = JSON.Object
  set newValue Job {..}
    = Job {nonOverridableArguments = Prelude.pure newValue, ..}
instance Property "NotificationProperty" Job where
  type PropertyType "NotificationProperty" Job = NotificationPropertyProperty
  set newValue Job {..}
    = Job {notificationProperty = Prelude.pure newValue, ..}
instance Property "NumberOfWorkers" Job where
  type PropertyType "NumberOfWorkers" Job = Value Prelude.Integer
  set newValue Job {..}
    = Job {numberOfWorkers = Prelude.pure newValue, ..}
instance Property "Role" Job where
  type PropertyType "Role" Job = Value Prelude.Text
  set newValue Job {..} = Job {role = newValue, ..}
instance Property "SecurityConfiguration" Job where
  type PropertyType "SecurityConfiguration" Job = Value Prelude.Text
  set newValue Job {..}
    = Job {securityConfiguration = Prelude.pure newValue, ..}
instance Property "Tags" Job where
  type PropertyType "Tags" Job = JSON.Object
  set newValue Job {..} = Job {tags = Prelude.pure newValue, ..}
instance Property "Timeout" Job where
  type PropertyType "Timeout" Job = Value Prelude.Integer
  set newValue Job {..} = Job {timeout = Prelude.pure newValue, ..}
instance Property "WorkerType" Job where
  type PropertyType "WorkerType" Job = Value Prelude.Text
  set newValue Job {..}
    = Job {workerType = Prelude.pure newValue, ..}