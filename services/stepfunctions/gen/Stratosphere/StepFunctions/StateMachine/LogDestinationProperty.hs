module Stratosphere.StepFunctions.StateMachine.LogDestinationProperty (
        module Exports, LogDestinationProperty(..),
        mkLogDestinationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.StepFunctions.StateMachine.CloudWatchLogsLogGroupProperty as Exports
import Stratosphere.ResourceProperties
data LogDestinationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-stepfunctions-statemachine-logdestination.html>
    LogDestinationProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-stepfunctions-statemachine-logdestination.html#cfn-stepfunctions-statemachine-logdestination-cloudwatchlogsloggroup>
                            cloudWatchLogsLogGroup :: (Prelude.Maybe CloudWatchLogsLogGroupProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLogDestinationProperty :: LogDestinationProperty
mkLogDestinationProperty
  = LogDestinationProperty
      {haddock_workaround_ = (),
       cloudWatchLogsLogGroup = Prelude.Nothing}
instance ToResourceProperties LogDestinationProperty where
  toResourceProperties LogDestinationProperty {..}
    = ResourceProperties
        {awsType = "AWS::StepFunctions::StateMachine.LogDestination",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CloudWatchLogsLogGroup"
                              Prelude.<$> cloudWatchLogsLogGroup])}
instance JSON.ToJSON LogDestinationProperty where
  toJSON LogDestinationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CloudWatchLogsLogGroup"
                 Prelude.<$> cloudWatchLogsLogGroup]))
instance Property "CloudWatchLogsLogGroup" LogDestinationProperty where
  type PropertyType "CloudWatchLogsLogGroup" LogDestinationProperty = CloudWatchLogsLogGroupProperty
  set newValue LogDestinationProperty {..}
    = LogDestinationProperty
        {cloudWatchLogsLogGroup = Prelude.pure newValue, ..}