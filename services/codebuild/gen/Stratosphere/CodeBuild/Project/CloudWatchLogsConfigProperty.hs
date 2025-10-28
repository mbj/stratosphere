module Stratosphere.CodeBuild.Project.CloudWatchLogsConfigProperty (
        CloudWatchLogsConfigProperty(..), mkCloudWatchLogsConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CloudWatchLogsConfigProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-cloudwatchlogsconfig.html>
    CloudWatchLogsConfigProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-cloudwatchlogsconfig.html#cfn-codebuild-project-cloudwatchlogsconfig-groupname>
                                  groupName :: (Prelude.Maybe (Value Prelude.Text)),
                                  -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-cloudwatchlogsconfig.html#cfn-codebuild-project-cloudwatchlogsconfig-status>
                                  status :: (Value Prelude.Text),
                                  -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-cloudwatchlogsconfig.html#cfn-codebuild-project-cloudwatchlogsconfig-streamname>
                                  streamName :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCloudWatchLogsConfigProperty ::
  Value Prelude.Text -> CloudWatchLogsConfigProperty
mkCloudWatchLogsConfigProperty status
  = CloudWatchLogsConfigProperty
      {status = status, groupName = Prelude.Nothing,
       streamName = Prelude.Nothing}
instance ToResourceProperties CloudWatchLogsConfigProperty where
  toResourceProperties CloudWatchLogsConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::CodeBuild::Project.CloudWatchLogsConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Status" JSON..= status]
                           (Prelude.catMaybes
                              [(JSON..=) "GroupName" Prelude.<$> groupName,
                               (JSON..=) "StreamName" Prelude.<$> streamName]))}
instance JSON.ToJSON CloudWatchLogsConfigProperty where
  toJSON CloudWatchLogsConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Status" JSON..= status]
              (Prelude.catMaybes
                 [(JSON..=) "GroupName" Prelude.<$> groupName,
                  (JSON..=) "StreamName" Prelude.<$> streamName])))
instance Property "GroupName" CloudWatchLogsConfigProperty where
  type PropertyType "GroupName" CloudWatchLogsConfigProperty = Value Prelude.Text
  set newValue CloudWatchLogsConfigProperty {..}
    = CloudWatchLogsConfigProperty
        {groupName = Prelude.pure newValue, ..}
instance Property "Status" CloudWatchLogsConfigProperty where
  type PropertyType "Status" CloudWatchLogsConfigProperty = Value Prelude.Text
  set newValue CloudWatchLogsConfigProperty {..}
    = CloudWatchLogsConfigProperty {status = newValue, ..}
instance Property "StreamName" CloudWatchLogsConfigProperty where
  type PropertyType "StreamName" CloudWatchLogsConfigProperty = Value Prelude.Text
  set newValue CloudWatchLogsConfigProperty {..}
    = CloudWatchLogsConfigProperty
        {streamName = Prelude.pure newValue, ..}