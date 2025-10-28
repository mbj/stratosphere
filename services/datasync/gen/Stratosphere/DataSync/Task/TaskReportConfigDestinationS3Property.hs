module Stratosphere.DataSync.Task.TaskReportConfigDestinationS3Property (
        TaskReportConfigDestinationS3Property(..),
        mkTaskReportConfigDestinationS3Property
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TaskReportConfigDestinationS3Property
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datasync-task-taskreportconfigdestinations3.html>
    TaskReportConfigDestinationS3Property {haddock_workaround_ :: (),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datasync-task-taskreportconfigdestinations3.html#cfn-datasync-task-taskreportconfigdestinations3-bucketaccessrolearn>
                                           bucketAccessRoleArn :: (Prelude.Maybe (Value Prelude.Text)),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datasync-task-taskreportconfigdestinations3.html#cfn-datasync-task-taskreportconfigdestinations3-s3bucketarn>
                                           s3BucketArn :: (Prelude.Maybe (Value Prelude.Text)),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datasync-task-taskreportconfigdestinations3.html#cfn-datasync-task-taskreportconfigdestinations3-subdirectory>
                                           subdirectory :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTaskReportConfigDestinationS3Property ::
  TaskReportConfigDestinationS3Property
mkTaskReportConfigDestinationS3Property
  = TaskReportConfigDestinationS3Property
      {haddock_workaround_ = (), bucketAccessRoleArn = Prelude.Nothing,
       s3BucketArn = Prelude.Nothing, subdirectory = Prelude.Nothing}
instance ToResourceProperties TaskReportConfigDestinationS3Property where
  toResourceProperties TaskReportConfigDestinationS3Property {..}
    = ResourceProperties
        {awsType = "AWS::DataSync::Task.TaskReportConfigDestinationS3",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "BucketAccessRoleArn" Prelude.<$> bucketAccessRoleArn,
                            (JSON..=) "S3BucketArn" Prelude.<$> s3BucketArn,
                            (JSON..=) "Subdirectory" Prelude.<$> subdirectory])}
instance JSON.ToJSON TaskReportConfigDestinationS3Property where
  toJSON TaskReportConfigDestinationS3Property {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "BucketAccessRoleArn" Prelude.<$> bucketAccessRoleArn,
               (JSON..=) "S3BucketArn" Prelude.<$> s3BucketArn,
               (JSON..=) "Subdirectory" Prelude.<$> subdirectory]))
instance Property "BucketAccessRoleArn" TaskReportConfigDestinationS3Property where
  type PropertyType "BucketAccessRoleArn" TaskReportConfigDestinationS3Property = Value Prelude.Text
  set newValue TaskReportConfigDestinationS3Property {..}
    = TaskReportConfigDestinationS3Property
        {bucketAccessRoleArn = Prelude.pure newValue, ..}
instance Property "S3BucketArn" TaskReportConfigDestinationS3Property where
  type PropertyType "S3BucketArn" TaskReportConfigDestinationS3Property = Value Prelude.Text
  set newValue TaskReportConfigDestinationS3Property {..}
    = TaskReportConfigDestinationS3Property
        {s3BucketArn = Prelude.pure newValue, ..}
instance Property "Subdirectory" TaskReportConfigDestinationS3Property where
  type PropertyType "Subdirectory" TaskReportConfigDestinationS3Property = Value Prelude.Text
  set newValue TaskReportConfigDestinationS3Property {..}
    = TaskReportConfigDestinationS3Property
        {subdirectory = Prelude.pure newValue, ..}