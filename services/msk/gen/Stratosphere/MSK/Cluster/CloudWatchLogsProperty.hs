module Stratosphere.MSK.Cluster.CloudWatchLogsProperty (
        CloudWatchLogsProperty(..), mkCloudWatchLogsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CloudWatchLogsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-cloudwatchlogs.html>
    CloudWatchLogsProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-cloudwatchlogs.html#cfn-msk-cluster-cloudwatchlogs-enabled>
                            enabled :: (Value Prelude.Bool),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-cloudwatchlogs.html#cfn-msk-cluster-cloudwatchlogs-loggroup>
                            logGroup :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCloudWatchLogsProperty ::
  Value Prelude.Bool -> CloudWatchLogsProperty
mkCloudWatchLogsProperty enabled
  = CloudWatchLogsProperty
      {haddock_workaround_ = (), enabled = enabled,
       logGroup = Prelude.Nothing}
instance ToResourceProperties CloudWatchLogsProperty where
  toResourceProperties CloudWatchLogsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MSK::Cluster.CloudWatchLogs",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Enabled" JSON..= enabled]
                           (Prelude.catMaybes [(JSON..=) "LogGroup" Prelude.<$> logGroup]))}
instance JSON.ToJSON CloudWatchLogsProperty where
  toJSON CloudWatchLogsProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Enabled" JSON..= enabled]
              (Prelude.catMaybes [(JSON..=) "LogGroup" Prelude.<$> logGroup])))
instance Property "Enabled" CloudWatchLogsProperty where
  type PropertyType "Enabled" CloudWatchLogsProperty = Value Prelude.Bool
  set newValue CloudWatchLogsProperty {..}
    = CloudWatchLogsProperty {enabled = newValue, ..}
instance Property "LogGroup" CloudWatchLogsProperty where
  type PropertyType "LogGroup" CloudWatchLogsProperty = Value Prelude.Text
  set newValue CloudWatchLogsProperty {..}
    = CloudWatchLogsProperty {logGroup = Prelude.pure newValue, ..}