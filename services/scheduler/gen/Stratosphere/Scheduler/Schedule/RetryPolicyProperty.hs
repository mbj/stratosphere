module Stratosphere.Scheduler.Schedule.RetryPolicyProperty (
        RetryPolicyProperty(..), mkRetryPolicyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RetryPolicyProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-scheduler-schedule-retrypolicy.html>
    RetryPolicyProperty {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-scheduler-schedule-retrypolicy.html#cfn-scheduler-schedule-retrypolicy-maximumeventageinseconds>
                         maximumEventAgeInSeconds :: (Prelude.Maybe (Value Prelude.Double)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-scheduler-schedule-retrypolicy.html#cfn-scheduler-schedule-retrypolicy-maximumretryattempts>
                         maximumRetryAttempts :: (Prelude.Maybe (Value Prelude.Double))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRetryPolicyProperty :: RetryPolicyProperty
mkRetryPolicyProperty
  = RetryPolicyProperty
      {haddock_workaround_ = (),
       maximumEventAgeInSeconds = Prelude.Nothing,
       maximumRetryAttempts = Prelude.Nothing}
instance ToResourceProperties RetryPolicyProperty where
  toResourceProperties RetryPolicyProperty {..}
    = ResourceProperties
        {awsType = "AWS::Scheduler::Schedule.RetryPolicy",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "MaximumEventAgeInSeconds"
                              Prelude.<$> maximumEventAgeInSeconds,
                            (JSON..=) "MaximumRetryAttempts"
                              Prelude.<$> maximumRetryAttempts])}
instance JSON.ToJSON RetryPolicyProperty where
  toJSON RetryPolicyProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "MaximumEventAgeInSeconds"
                 Prelude.<$> maximumEventAgeInSeconds,
               (JSON..=) "MaximumRetryAttempts"
                 Prelude.<$> maximumRetryAttempts]))
instance Property "MaximumEventAgeInSeconds" RetryPolicyProperty where
  type PropertyType "MaximumEventAgeInSeconds" RetryPolicyProperty = Value Prelude.Double
  set newValue RetryPolicyProperty {..}
    = RetryPolicyProperty
        {maximumEventAgeInSeconds = Prelude.pure newValue, ..}
instance Property "MaximumRetryAttempts" RetryPolicyProperty where
  type PropertyType "MaximumRetryAttempts" RetryPolicyProperty = Value Prelude.Double
  set newValue RetryPolicyProperty {..}
    = RetryPolicyProperty
        {maximumRetryAttempts = Prelude.pure newValue, ..}