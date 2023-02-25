module Stratosphere.StepFunctions.StateMachine.CloudWatchLogsLogGroupProperty (
        CloudWatchLogsLogGroupProperty(..),
        mkCloudWatchLogsLogGroupProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CloudWatchLogsLogGroupProperty
  = CloudWatchLogsLogGroupProperty {logGroupArn :: (Prelude.Maybe (Value Prelude.Text))}
mkCloudWatchLogsLogGroupProperty :: CloudWatchLogsLogGroupProperty
mkCloudWatchLogsLogGroupProperty
  = CloudWatchLogsLogGroupProperty {logGroupArn = Prelude.Nothing}
instance ToResourceProperties CloudWatchLogsLogGroupProperty where
  toResourceProperties CloudWatchLogsLogGroupProperty {..}
    = ResourceProperties
        {awsType = "AWS::StepFunctions::StateMachine.CloudWatchLogsLogGroup",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "LogGroupArn" Prelude.<$> logGroupArn])}
instance JSON.ToJSON CloudWatchLogsLogGroupProperty where
  toJSON CloudWatchLogsLogGroupProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "LogGroupArn" Prelude.<$> logGroupArn]))
instance Property "LogGroupArn" CloudWatchLogsLogGroupProperty where
  type PropertyType "LogGroupArn" CloudWatchLogsLogGroupProperty = Value Prelude.Text
  set newValue CloudWatchLogsLogGroupProperty {}
    = CloudWatchLogsLogGroupProperty
        {logGroupArn = Prelude.pure newValue, ..}