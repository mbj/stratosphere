module Stratosphere.DataSync.Task (
        module Exports, Task(..), mkTask
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DataSync.Task.FilterRuleProperty as Exports
import {-# SOURCE #-} Stratosphere.DataSync.Task.ManifestConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.DataSync.Task.OptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.DataSync.Task.TaskReportConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.DataSync.Task.TaskScheduleProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Task
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datasync-task.html>
    Task {haddock_workaround_ :: (),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datasync-task.html#cfn-datasync-task-cloudwatchloggrouparn>
          cloudWatchLogGroupArn :: (Prelude.Maybe (Value Prelude.Text)),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datasync-task.html#cfn-datasync-task-destinationlocationarn>
          destinationLocationArn :: (Value Prelude.Text),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datasync-task.html#cfn-datasync-task-excludes>
          excludes :: (Prelude.Maybe [FilterRuleProperty]),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datasync-task.html#cfn-datasync-task-includes>
          includes :: (Prelude.Maybe [FilterRuleProperty]),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datasync-task.html#cfn-datasync-task-manifestconfig>
          manifestConfig :: (Prelude.Maybe ManifestConfigProperty),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datasync-task.html#cfn-datasync-task-name>
          name :: (Prelude.Maybe (Value Prelude.Text)),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datasync-task.html#cfn-datasync-task-options>
          options :: (Prelude.Maybe OptionsProperty),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datasync-task.html#cfn-datasync-task-schedule>
          schedule :: (Prelude.Maybe TaskScheduleProperty),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datasync-task.html#cfn-datasync-task-sourcelocationarn>
          sourceLocationArn :: (Value Prelude.Text),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datasync-task.html#cfn-datasync-task-tags>
          tags :: (Prelude.Maybe [Tag]),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datasync-task.html#cfn-datasync-task-taskmode>
          taskMode :: (Prelude.Maybe (Value Prelude.Text)),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datasync-task.html#cfn-datasync-task-taskreportconfig>
          taskReportConfig :: (Prelude.Maybe TaskReportConfigProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTask :: Value Prelude.Text -> Value Prelude.Text -> Task
mkTask destinationLocationArn sourceLocationArn
  = Task
      {haddock_workaround_ = (),
       destinationLocationArn = destinationLocationArn,
       sourceLocationArn = sourceLocationArn,
       cloudWatchLogGroupArn = Prelude.Nothing,
       excludes = Prelude.Nothing, includes = Prelude.Nothing,
       manifestConfig = Prelude.Nothing, name = Prelude.Nothing,
       options = Prelude.Nothing, schedule = Prelude.Nothing,
       tags = Prelude.Nothing, taskMode = Prelude.Nothing,
       taskReportConfig = Prelude.Nothing}
instance ToResourceProperties Task where
  toResourceProperties Task {..}
    = ResourceProperties
        {awsType = "AWS::DataSync::Task", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DestinationLocationArn" JSON..= destinationLocationArn,
                            "SourceLocationArn" JSON..= sourceLocationArn]
                           (Prelude.catMaybes
                              [(JSON..=) "CloudWatchLogGroupArn"
                                 Prelude.<$> cloudWatchLogGroupArn,
                               (JSON..=) "Excludes" Prelude.<$> excludes,
                               (JSON..=) "Includes" Prelude.<$> includes,
                               (JSON..=) "ManifestConfig" Prelude.<$> manifestConfig,
                               (JSON..=) "Name" Prelude.<$> name,
                               (JSON..=) "Options" Prelude.<$> options,
                               (JSON..=) "Schedule" Prelude.<$> schedule,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "TaskMode" Prelude.<$> taskMode,
                               (JSON..=) "TaskReportConfig" Prelude.<$> taskReportConfig]))}
instance JSON.ToJSON Task where
  toJSON Task {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DestinationLocationArn" JSON..= destinationLocationArn,
               "SourceLocationArn" JSON..= sourceLocationArn]
              (Prelude.catMaybes
                 [(JSON..=) "CloudWatchLogGroupArn"
                    Prelude.<$> cloudWatchLogGroupArn,
                  (JSON..=) "Excludes" Prelude.<$> excludes,
                  (JSON..=) "Includes" Prelude.<$> includes,
                  (JSON..=) "ManifestConfig" Prelude.<$> manifestConfig,
                  (JSON..=) "Name" Prelude.<$> name,
                  (JSON..=) "Options" Prelude.<$> options,
                  (JSON..=) "Schedule" Prelude.<$> schedule,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "TaskMode" Prelude.<$> taskMode,
                  (JSON..=) "TaskReportConfig" Prelude.<$> taskReportConfig])))
instance Property "CloudWatchLogGroupArn" Task where
  type PropertyType "CloudWatchLogGroupArn" Task = Value Prelude.Text
  set newValue Task {..}
    = Task {cloudWatchLogGroupArn = Prelude.pure newValue, ..}
instance Property "DestinationLocationArn" Task where
  type PropertyType "DestinationLocationArn" Task = Value Prelude.Text
  set newValue Task {..}
    = Task {destinationLocationArn = newValue, ..}
instance Property "Excludes" Task where
  type PropertyType "Excludes" Task = [FilterRuleProperty]
  set newValue Task {..}
    = Task {excludes = Prelude.pure newValue, ..}
instance Property "Includes" Task where
  type PropertyType "Includes" Task = [FilterRuleProperty]
  set newValue Task {..}
    = Task {includes = Prelude.pure newValue, ..}
instance Property "ManifestConfig" Task where
  type PropertyType "ManifestConfig" Task = ManifestConfigProperty
  set newValue Task {..}
    = Task {manifestConfig = Prelude.pure newValue, ..}
instance Property "Name" Task where
  type PropertyType "Name" Task = Value Prelude.Text
  set newValue Task {..} = Task {name = Prelude.pure newValue, ..}
instance Property "Options" Task where
  type PropertyType "Options" Task = OptionsProperty
  set newValue Task {..} = Task {options = Prelude.pure newValue, ..}
instance Property "Schedule" Task where
  type PropertyType "Schedule" Task = TaskScheduleProperty
  set newValue Task {..}
    = Task {schedule = Prelude.pure newValue, ..}
instance Property "SourceLocationArn" Task where
  type PropertyType "SourceLocationArn" Task = Value Prelude.Text
  set newValue Task {..} = Task {sourceLocationArn = newValue, ..}
instance Property "Tags" Task where
  type PropertyType "Tags" Task = [Tag]
  set newValue Task {..} = Task {tags = Prelude.pure newValue, ..}
instance Property "TaskMode" Task where
  type PropertyType "TaskMode" Task = Value Prelude.Text
  set newValue Task {..}
    = Task {taskMode = Prelude.pure newValue, ..}
instance Property "TaskReportConfig" Task where
  type PropertyType "TaskReportConfig" Task = TaskReportConfigProperty
  set newValue Task {..}
    = Task {taskReportConfig = Prelude.pure newValue, ..}