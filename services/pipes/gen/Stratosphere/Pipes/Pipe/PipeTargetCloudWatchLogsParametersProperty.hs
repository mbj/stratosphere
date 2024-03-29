module Stratosphere.Pipes.Pipe.PipeTargetCloudWatchLogsParametersProperty (
        PipeTargetCloudWatchLogsParametersProperty(..),
        mkPipeTargetCloudWatchLogsParametersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PipeTargetCloudWatchLogsParametersProperty
  = PipeTargetCloudWatchLogsParametersProperty {logStreamName :: (Prelude.Maybe (Value Prelude.Text)),
                                                timestamp :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPipeTargetCloudWatchLogsParametersProperty ::
  PipeTargetCloudWatchLogsParametersProperty
mkPipeTargetCloudWatchLogsParametersProperty
  = PipeTargetCloudWatchLogsParametersProperty
      {logStreamName = Prelude.Nothing, timestamp = Prelude.Nothing}
instance ToResourceProperties PipeTargetCloudWatchLogsParametersProperty where
  toResourceProperties
    PipeTargetCloudWatchLogsParametersProperty {..}
    = ResourceProperties
        {awsType = "AWS::Pipes::Pipe.PipeTargetCloudWatchLogsParameters",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "LogStreamName" Prelude.<$> logStreamName,
                            (JSON..=) "Timestamp" Prelude.<$> timestamp])}
instance JSON.ToJSON PipeTargetCloudWatchLogsParametersProperty where
  toJSON PipeTargetCloudWatchLogsParametersProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "LogStreamName" Prelude.<$> logStreamName,
               (JSON..=) "Timestamp" Prelude.<$> timestamp]))
instance Property "LogStreamName" PipeTargetCloudWatchLogsParametersProperty where
  type PropertyType "LogStreamName" PipeTargetCloudWatchLogsParametersProperty = Value Prelude.Text
  set newValue PipeTargetCloudWatchLogsParametersProperty {..}
    = PipeTargetCloudWatchLogsParametersProperty
        {logStreamName = Prelude.pure newValue, ..}
instance Property "Timestamp" PipeTargetCloudWatchLogsParametersProperty where
  type PropertyType "Timestamp" PipeTargetCloudWatchLogsParametersProperty = Value Prelude.Text
  set newValue PipeTargetCloudWatchLogsParametersProperty {..}
    = PipeTargetCloudWatchLogsParametersProperty
        {timestamp = Prelude.pure newValue, ..}