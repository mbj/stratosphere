module Stratosphere.Scheduler.Schedule.RetryPolicyProperty (
        RetryPolicyProperty(..), mkRetryPolicyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RetryPolicyProperty
  = RetryPolicyProperty {maximumEventAgeInSeconds :: (Prelude.Maybe (Value Prelude.Double)),
                         maximumRetryAttempts :: (Prelude.Maybe (Value Prelude.Double))}
mkRetryPolicyProperty :: RetryPolicyProperty
mkRetryPolicyProperty
  = RetryPolicyProperty
      {maximumEventAgeInSeconds = Prelude.Nothing,
       maximumRetryAttempts = Prelude.Nothing}
instance ToResourceProperties RetryPolicyProperty where
  toResourceProperties RetryPolicyProperty {..}
    = ResourceProperties
        {awsType = "AWS::Scheduler::Schedule.RetryPolicy",
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