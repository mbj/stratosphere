module Stratosphere.ECS.TaskDefinition.RestartPolicyProperty (
        RestartPolicyProperty(..), mkRestartPolicyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RestartPolicyProperty
  = RestartPolicyProperty {enabled :: (Prelude.Maybe (Value Prelude.Bool)),
                           ignoredExitCodes :: (Prelude.Maybe (ValueList Prelude.Integer)),
                           restartAttemptPeriod :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRestartPolicyProperty :: RestartPolicyProperty
mkRestartPolicyProperty
  = RestartPolicyProperty
      {enabled = Prelude.Nothing, ignoredExitCodes = Prelude.Nothing,
       restartAttemptPeriod = Prelude.Nothing}
instance ToResourceProperties RestartPolicyProperty where
  toResourceProperties RestartPolicyProperty {..}
    = ResourceProperties
        {awsType = "AWS::ECS::TaskDefinition.RestartPolicy",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Enabled" Prelude.<$> enabled,
                            (JSON..=) "IgnoredExitCodes" Prelude.<$> ignoredExitCodes,
                            (JSON..=) "RestartAttemptPeriod"
                              Prelude.<$> restartAttemptPeriod])}
instance JSON.ToJSON RestartPolicyProperty where
  toJSON RestartPolicyProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Enabled" Prelude.<$> enabled,
               (JSON..=) "IgnoredExitCodes" Prelude.<$> ignoredExitCodes,
               (JSON..=) "RestartAttemptPeriod"
                 Prelude.<$> restartAttemptPeriod]))
instance Property "Enabled" RestartPolicyProperty where
  type PropertyType "Enabled" RestartPolicyProperty = Value Prelude.Bool
  set newValue RestartPolicyProperty {..}
    = RestartPolicyProperty {enabled = Prelude.pure newValue, ..}
instance Property "IgnoredExitCodes" RestartPolicyProperty where
  type PropertyType "IgnoredExitCodes" RestartPolicyProperty = ValueList Prelude.Integer
  set newValue RestartPolicyProperty {..}
    = RestartPolicyProperty
        {ignoredExitCodes = Prelude.pure newValue, ..}
instance Property "RestartAttemptPeriod" RestartPolicyProperty where
  type PropertyType "RestartAttemptPeriod" RestartPolicyProperty = Value Prelude.Integer
  set newValue RestartPolicyProperty {..}
    = RestartPolicyProperty
        {restartAttemptPeriod = Prelude.pure newValue, ..}