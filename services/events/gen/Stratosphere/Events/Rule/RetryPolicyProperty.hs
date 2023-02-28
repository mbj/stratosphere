module Stratosphere.Events.Rule.RetryPolicyProperty (
        RetryPolicyProperty(..), mkRetryPolicyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RetryPolicyProperty
  = RetryPolicyProperty {maximumEventAgeInSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
                         maximumRetryAttempts :: (Prelude.Maybe (Value Prelude.Integer))}
mkRetryPolicyProperty :: RetryPolicyProperty
mkRetryPolicyProperty
  = RetryPolicyProperty
      {maximumEventAgeInSeconds = Prelude.Nothing,
       maximumRetryAttempts = Prelude.Nothing}
instance ToResourceProperties RetryPolicyProperty where
  toResourceProperties RetryPolicyProperty {..}
    = ResourceProperties
        {awsType = "AWS::Events::Rule.RetryPolicy",
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
  type PropertyType "MaximumEventAgeInSeconds" RetryPolicyProperty = Value Prelude.Integer
  set newValue RetryPolicyProperty {..}
    = RetryPolicyProperty
        {maximumEventAgeInSeconds = Prelude.pure newValue, ..}
instance Property "MaximumRetryAttempts" RetryPolicyProperty where
  type PropertyType "MaximumRetryAttempts" RetryPolicyProperty = Value Prelude.Integer
  set newValue RetryPolicyProperty {..}
    = RetryPolicyProperty
        {maximumRetryAttempts = Prelude.pure newValue, ..}