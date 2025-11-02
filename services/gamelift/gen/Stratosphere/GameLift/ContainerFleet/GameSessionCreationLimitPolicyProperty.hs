module Stratosphere.GameLift.ContainerFleet.GameSessionCreationLimitPolicyProperty (
        GameSessionCreationLimitPolicyProperty(..),
        mkGameSessionCreationLimitPolicyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GameSessionCreationLimitPolicyProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-containerfleet-gamesessioncreationlimitpolicy.html>
    GameSessionCreationLimitPolicyProperty {haddock_workaround_ :: (),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-containerfleet-gamesessioncreationlimitpolicy.html#cfn-gamelift-containerfleet-gamesessioncreationlimitpolicy-newgamesessionspercreator>
                                            newGameSessionsPerCreator :: (Prelude.Maybe (Value Prelude.Integer)),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-containerfleet-gamesessioncreationlimitpolicy.html#cfn-gamelift-containerfleet-gamesessioncreationlimitpolicy-policyperiodinminutes>
                                            policyPeriodInMinutes :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGameSessionCreationLimitPolicyProperty ::
  GameSessionCreationLimitPolicyProperty
mkGameSessionCreationLimitPolicyProperty
  = GameSessionCreationLimitPolicyProperty
      {haddock_workaround_ = (),
       newGameSessionsPerCreator = Prelude.Nothing,
       policyPeriodInMinutes = Prelude.Nothing}
instance ToResourceProperties GameSessionCreationLimitPolicyProperty where
  toResourceProperties GameSessionCreationLimitPolicyProperty {..}
    = ResourceProperties
        {awsType = "AWS::GameLift::ContainerFleet.GameSessionCreationLimitPolicy",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "NewGameSessionsPerCreator"
                              Prelude.<$> newGameSessionsPerCreator,
                            (JSON..=) "PolicyPeriodInMinutes"
                              Prelude.<$> policyPeriodInMinutes])}
instance JSON.ToJSON GameSessionCreationLimitPolicyProperty where
  toJSON GameSessionCreationLimitPolicyProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "NewGameSessionsPerCreator"
                 Prelude.<$> newGameSessionsPerCreator,
               (JSON..=) "PolicyPeriodInMinutes"
                 Prelude.<$> policyPeriodInMinutes]))
instance Property "NewGameSessionsPerCreator" GameSessionCreationLimitPolicyProperty where
  type PropertyType "NewGameSessionsPerCreator" GameSessionCreationLimitPolicyProperty = Value Prelude.Integer
  set newValue GameSessionCreationLimitPolicyProperty {..}
    = GameSessionCreationLimitPolicyProperty
        {newGameSessionsPerCreator = Prelude.pure newValue, ..}
instance Property "PolicyPeriodInMinutes" GameSessionCreationLimitPolicyProperty where
  type PropertyType "PolicyPeriodInMinutes" GameSessionCreationLimitPolicyProperty = Value Prelude.Integer
  set newValue GameSessionCreationLimitPolicyProperty {..}
    = GameSessionCreationLimitPolicyProperty
        {policyPeriodInMinutes = Prelude.pure newValue, ..}