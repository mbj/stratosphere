module Stratosphere.GameLift.GameSessionQueue.PlayerLatencyPolicyProperty (
        PlayerLatencyPolicyProperty(..), mkPlayerLatencyPolicyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PlayerLatencyPolicyProperty
  = PlayerLatencyPolicyProperty {maximumIndividualPlayerLatencyMilliseconds :: (Prelude.Maybe (Value Prelude.Integer)),
                                 policyDurationSeconds :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPlayerLatencyPolicyProperty :: PlayerLatencyPolicyProperty
mkPlayerLatencyPolicyProperty
  = PlayerLatencyPolicyProperty
      {maximumIndividualPlayerLatencyMilliseconds = Prelude.Nothing,
       policyDurationSeconds = Prelude.Nothing}
instance ToResourceProperties PlayerLatencyPolicyProperty where
  toResourceProperties PlayerLatencyPolicyProperty {..}
    = ResourceProperties
        {awsType = "AWS::GameLift::GameSessionQueue.PlayerLatencyPolicy",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "MaximumIndividualPlayerLatencyMilliseconds"
                              Prelude.<$> maximumIndividualPlayerLatencyMilliseconds,
                            (JSON..=) "PolicyDurationSeconds"
                              Prelude.<$> policyDurationSeconds])}
instance JSON.ToJSON PlayerLatencyPolicyProperty where
  toJSON PlayerLatencyPolicyProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "MaximumIndividualPlayerLatencyMilliseconds"
                 Prelude.<$> maximumIndividualPlayerLatencyMilliseconds,
               (JSON..=) "PolicyDurationSeconds"
                 Prelude.<$> policyDurationSeconds]))
instance Property "MaximumIndividualPlayerLatencyMilliseconds" PlayerLatencyPolicyProperty where
  type PropertyType "MaximumIndividualPlayerLatencyMilliseconds" PlayerLatencyPolicyProperty = Value Prelude.Integer
  set newValue PlayerLatencyPolicyProperty {..}
    = PlayerLatencyPolicyProperty
        {maximumIndividualPlayerLatencyMilliseconds = Prelude.pure
                                                        newValue,
         ..}
instance Property "PolicyDurationSeconds" PlayerLatencyPolicyProperty where
  type PropertyType "PolicyDurationSeconds" PlayerLatencyPolicyProperty = Value Prelude.Integer
  set newValue PlayerLatencyPolicyProperty {..}
    = PlayerLatencyPolicyProperty
        {policyDurationSeconds = Prelude.pure newValue, ..}