module Stratosphere.Events.Rule.RetryPolicyProperty (
        RetryPolicyProperty(..), mkRetryPolicyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RetryPolicyProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-retrypolicy.html>
    RetryPolicyProperty {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-retrypolicy.html#cfn-events-rule-retrypolicy-maximumeventageinseconds>
                         maximumEventAgeInSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-retrypolicy.html#cfn-events-rule-retrypolicy-maximumretryattempts>
                         maximumRetryAttempts :: (Prelude.Maybe (Value Prelude.Integer))}
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