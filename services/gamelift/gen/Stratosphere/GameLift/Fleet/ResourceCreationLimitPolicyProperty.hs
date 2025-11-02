module Stratosphere.GameLift.Fleet.ResourceCreationLimitPolicyProperty (
        ResourceCreationLimitPolicyProperty(..),
        mkResourceCreationLimitPolicyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ResourceCreationLimitPolicyProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-fleet-resourcecreationlimitpolicy.html>
    ResourceCreationLimitPolicyProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-fleet-resourcecreationlimitpolicy.html#cfn-gamelift-fleet-resourcecreationlimitpolicy-newgamesessionspercreator>
                                         newGameSessionsPerCreator :: (Prelude.Maybe (Value Prelude.Integer)),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-fleet-resourcecreationlimitpolicy.html#cfn-gamelift-fleet-resourcecreationlimitpolicy-policyperiodinminutes>
                                         policyPeriodInMinutes :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkResourceCreationLimitPolicyProperty ::
  ResourceCreationLimitPolicyProperty
mkResourceCreationLimitPolicyProperty
  = ResourceCreationLimitPolicyProperty
      {haddock_workaround_ = (),
       newGameSessionsPerCreator = Prelude.Nothing,
       policyPeriodInMinutes = Prelude.Nothing}
instance ToResourceProperties ResourceCreationLimitPolicyProperty where
  toResourceProperties ResourceCreationLimitPolicyProperty {..}
    = ResourceProperties
        {awsType = "AWS::GameLift::Fleet.ResourceCreationLimitPolicy",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "NewGameSessionsPerCreator"
                              Prelude.<$> newGameSessionsPerCreator,
                            (JSON..=) "PolicyPeriodInMinutes"
                              Prelude.<$> policyPeriodInMinutes])}
instance JSON.ToJSON ResourceCreationLimitPolicyProperty where
  toJSON ResourceCreationLimitPolicyProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "NewGameSessionsPerCreator"
                 Prelude.<$> newGameSessionsPerCreator,
               (JSON..=) "PolicyPeriodInMinutes"
                 Prelude.<$> policyPeriodInMinutes]))
instance Property "NewGameSessionsPerCreator" ResourceCreationLimitPolicyProperty where
  type PropertyType "NewGameSessionsPerCreator" ResourceCreationLimitPolicyProperty = Value Prelude.Integer
  set newValue ResourceCreationLimitPolicyProperty {..}
    = ResourceCreationLimitPolicyProperty
        {newGameSessionsPerCreator = Prelude.pure newValue, ..}
instance Property "PolicyPeriodInMinutes" ResourceCreationLimitPolicyProperty where
  type PropertyType "PolicyPeriodInMinutes" ResourceCreationLimitPolicyProperty = Value Prelude.Integer
  set newValue ResourceCreationLimitPolicyProperty {..}
    = ResourceCreationLimitPolicyProperty
        {policyPeriodInMinutes = Prelude.pure newValue, ..}