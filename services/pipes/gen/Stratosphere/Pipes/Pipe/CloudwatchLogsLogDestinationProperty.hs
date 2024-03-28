module Stratosphere.Pipes.Pipe.CloudwatchLogsLogDestinationProperty (
        CloudwatchLogsLogDestinationProperty(..),
        mkCloudwatchLogsLogDestinationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CloudwatchLogsLogDestinationProperty
  = CloudwatchLogsLogDestinationProperty {logGroupArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCloudwatchLogsLogDestinationProperty ::
  CloudwatchLogsLogDestinationProperty
mkCloudwatchLogsLogDestinationProperty
  = CloudwatchLogsLogDestinationProperty
      {logGroupArn = Prelude.Nothing}
instance ToResourceProperties CloudwatchLogsLogDestinationProperty where
  toResourceProperties CloudwatchLogsLogDestinationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Pipes::Pipe.CloudwatchLogsLogDestination",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "LogGroupArn" Prelude.<$> logGroupArn])}
instance JSON.ToJSON CloudwatchLogsLogDestinationProperty where
  toJSON CloudwatchLogsLogDestinationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "LogGroupArn" Prelude.<$> logGroupArn]))
instance Property "LogGroupArn" CloudwatchLogsLogDestinationProperty where
  type PropertyType "LogGroupArn" CloudwatchLogsLogDestinationProperty = Value Prelude.Text
  set newValue CloudwatchLogsLogDestinationProperty {}
    = CloudwatchLogsLogDestinationProperty
        {logGroupArn = Prelude.pure newValue, ..}