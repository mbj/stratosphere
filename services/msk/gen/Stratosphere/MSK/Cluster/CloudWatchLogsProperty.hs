module Stratosphere.MSK.Cluster.CloudWatchLogsProperty (
        CloudWatchLogsProperty(..), mkCloudWatchLogsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CloudWatchLogsProperty
  = CloudWatchLogsProperty {enabled :: (Value Prelude.Bool),
                            logGroup :: (Prelude.Maybe (Value Prelude.Text))}
mkCloudWatchLogsProperty ::
  Value Prelude.Bool -> CloudWatchLogsProperty
mkCloudWatchLogsProperty enabled
  = CloudWatchLogsProperty
      {enabled = enabled, logGroup = Prelude.Nothing}
instance ToResourceProperties CloudWatchLogsProperty where
  toResourceProperties CloudWatchLogsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MSK::Cluster.CloudWatchLogs",
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