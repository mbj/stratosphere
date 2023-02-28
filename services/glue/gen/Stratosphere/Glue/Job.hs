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
  = Job {allocatedCapacity :: (Prelude.Maybe (Value Prelude.Double)),
         command :: JobCommandProperty,
         connections :: (Prelude.Maybe ConnectionsListProperty),
         defaultArguments :: (Prelude.Maybe JSON.Object),
         description :: (Prelude.Maybe (Value Prelude.Text)),
         executionClass :: (Prelude.Maybe (Value Prelude.Text)),
         executionProperty :: (Prelude.Maybe ExecutionPropertyProperty),
         glueVersion :: (Prelude.Maybe (Value Prelude.Text)),
         logUri :: (Prelude.Maybe (Value Prelude.Text)),
         maxCapacity :: (Prelude.Maybe (Value Prelude.Double)),
         maxRetries :: (Prelude.Maybe (Value Prelude.Double)),
         name :: (Prelude.Maybe (Value Prelude.Text)),
         nonOverridableArguments :: (Prelude.Maybe JSON.Object),
         notificationProperty :: (Prelude.Maybe NotificationPropertyProperty),
         numberOfWorkers :: (Prelude.Maybe (Value Prelude.Integer)),
         role :: (Value Prelude.Text),
         securityConfiguration :: (Prelude.Maybe (Value Prelude.Text)),
         tags :: (Prelude.Maybe JSON.Object),
         timeout :: (Prelude.Maybe (Value Prelude.Integer)),
         workerType :: (Prelude.Maybe (Value Prelude.Text))}
mkJob :: JobCommandProperty -> Value Prelude.Text -> Job
mkJob command role
  = Job
      {command = command, role = role,
       allocatedCapacity = Prelude.Nothing, connections = Prelude.Nothing,
       defaultArguments = Prelude.Nothing, description = Prelude.Nothing,
       executionClass = Prelude.Nothing,
       executionProperty = Prelude.Nothing, glueVersion = Prelude.Nothing,
       logUri = Prelude.Nothing, maxCapacity = Prelude.Nothing,
       maxRetries = Prelude.Nothing, name = Prelude.Nothing,
       nonOverridableArguments = Prelude.Nothing,
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
                               (JSON..=) "LogUri" Prelude.<$> logUri,
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
                  (JSON..=) "LogUri" Prelude.<$> logUri,
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
instance Property "LogUri" Job where
  type PropertyType "LogUri" Job = Value Prelude.Text
  set newValue Job {..} = Job {logUri = Prelude.pure newValue, ..}
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