module Stratosphere.GameLift.GameSessionQueue.PlayerLatencyPolicyProperty (
        PlayerLatencyPolicyProperty(..), mkPlayerLatencyPolicyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PlayerLatencyPolicyProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-gamesessionqueue-playerlatencypolicy.html>
    PlayerLatencyPolicyProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-gamesessionqueue-playerlatencypolicy.html#cfn-gamelift-gamesessionqueue-playerlatencypolicy-maximumindividualplayerlatencymilliseconds>
                                 maximumIndividualPlayerLatencyMilliseconds :: (Prelude.Maybe (Value Prelude.Integer)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-gamesessionqueue-playerlatencypolicy.html#cfn-gamelift-gamesessionqueue-playerlatencypolicy-policydurationseconds>
                                 policyDurationSeconds :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPlayerLatencyPolicyProperty :: PlayerLatencyPolicyProperty
mkPlayerLatencyPolicyProperty
  = PlayerLatencyPolicyProperty
      {haddock_workaround_ = (),
       maximumIndividualPlayerLatencyMilliseconds = Prelude.Nothing,
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