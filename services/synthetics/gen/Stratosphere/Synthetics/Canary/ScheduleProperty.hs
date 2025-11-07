module Stratosphere.Synthetics.Canary.ScheduleProperty (
        module Exports, ScheduleProperty(..), mkScheduleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Synthetics.Canary.RetryConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ScheduleProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-synthetics-canary-schedule.html>
    ScheduleProperty {haddock_workaround_ :: (),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-synthetics-canary-schedule.html#cfn-synthetics-canary-schedule-durationinseconds>
                      durationInSeconds :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-synthetics-canary-schedule.html#cfn-synthetics-canary-schedule-expression>
                      expression :: (Value Prelude.Text),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-synthetics-canary-schedule.html#cfn-synthetics-canary-schedule-retryconfig>
                      retryConfig :: (Prelude.Maybe RetryConfigProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkScheduleProperty :: Value Prelude.Text -> ScheduleProperty
mkScheduleProperty expression
  = ScheduleProperty
      {haddock_workaround_ = (), expression = expression,
       durationInSeconds = Prelude.Nothing, retryConfig = Prelude.Nothing}
instance ToResourceProperties ScheduleProperty where
  toResourceProperties ScheduleProperty {..}
    = ResourceProperties
        {awsType = "AWS::Synthetics::Canary.Schedule",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Expression" JSON..= expression]
                           (Prelude.catMaybes
                              [(JSON..=) "DurationInSeconds" Prelude.<$> durationInSeconds,
                               (JSON..=) "RetryConfig" Prelude.<$> retryConfig]))}
instance JSON.ToJSON ScheduleProperty where
  toJSON ScheduleProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Expression" JSON..= expression]
              (Prelude.catMaybes
                 [(JSON..=) "DurationInSeconds" Prelude.<$> durationInSeconds,
                  (JSON..=) "RetryConfig" Prelude.<$> retryConfig])))
instance Property "DurationInSeconds" ScheduleProperty where
  type PropertyType "DurationInSeconds" ScheduleProperty = Value Prelude.Text
  set newValue ScheduleProperty {..}
    = ScheduleProperty {durationInSeconds = Prelude.pure newValue, ..}
instance Property "Expression" ScheduleProperty where
  type PropertyType "Expression" ScheduleProperty = Value Prelude.Text
  set newValue ScheduleProperty {..}
    = ScheduleProperty {expression = newValue, ..}
instance Property "RetryConfig" ScheduleProperty where
  type PropertyType "RetryConfig" ScheduleProperty = RetryConfigProperty
  set newValue ScheduleProperty {..}
    = ScheduleProperty {retryConfig = Prelude.pure newValue, ..}