module Stratosphere.EC2.VerifiedAccessInstance.CloudWatchLogsProperty (
        CloudWatchLogsProperty(..), mkCloudWatchLogsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CloudWatchLogsProperty
  = CloudWatchLogsProperty {enabled :: (Prelude.Maybe (Value Prelude.Bool)),
                            logGroup :: (Prelude.Maybe (Value Prelude.Text))}
mkCloudWatchLogsProperty :: CloudWatchLogsProperty
mkCloudWatchLogsProperty
  = CloudWatchLogsProperty
      {enabled = Prelude.Nothing, logGroup = Prelude.Nothing}
instance ToResourceProperties CloudWatchLogsProperty where
  toResourceProperties CloudWatchLogsProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::VerifiedAccessInstance.CloudWatchLogs",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Enabled" Prelude.<$> enabled,
                            (JSON..=) "LogGroup" Prelude.<$> logGroup])}
instance JSON.ToJSON CloudWatchLogsProperty where
  toJSON CloudWatchLogsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Enabled" Prelude.<$> enabled,
               (JSON..=) "LogGroup" Prelude.<$> logGroup]))
instance Property "Enabled" CloudWatchLogsProperty where
  type PropertyType "Enabled" CloudWatchLogsProperty = Value Prelude.Bool
  set newValue CloudWatchLogsProperty {..}
    = CloudWatchLogsProperty {enabled = Prelude.pure newValue, ..}
instance Property "LogGroup" CloudWatchLogsProperty where
  type PropertyType "LogGroup" CloudWatchLogsProperty = Value Prelude.Text
  set newValue CloudWatchLogsProperty {..}
    = CloudWatchLogsProperty {logGroup = Prelude.pure newValue, ..}