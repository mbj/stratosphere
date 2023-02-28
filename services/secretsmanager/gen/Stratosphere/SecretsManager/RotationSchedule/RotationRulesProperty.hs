module Stratosphere.SecretsManager.RotationSchedule.RotationRulesProperty (
        RotationRulesProperty(..), mkRotationRulesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RotationRulesProperty
  = RotationRulesProperty {automaticallyAfterDays :: (Prelude.Maybe (Value Prelude.Integer)),
                           duration :: (Prelude.Maybe (Value Prelude.Text)),
                           scheduleExpression :: (Prelude.Maybe (Value Prelude.Text))}
mkRotationRulesProperty :: RotationRulesProperty
mkRotationRulesProperty
  = RotationRulesProperty
      {automaticallyAfterDays = Prelude.Nothing,
       duration = Prelude.Nothing, scheduleExpression = Prelude.Nothing}
instance ToResourceProperties RotationRulesProperty where
  toResourceProperties RotationRulesProperty {..}
    = ResourceProperties
        {awsType = "AWS::SecretsManager::RotationSchedule.RotationRules",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AutomaticallyAfterDays"
                              Prelude.<$> automaticallyAfterDays,
                            (JSON..=) "Duration" Prelude.<$> duration,
                            (JSON..=) "ScheduleExpression" Prelude.<$> scheduleExpression])}
instance JSON.ToJSON RotationRulesProperty where
  toJSON RotationRulesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AutomaticallyAfterDays"
                 Prelude.<$> automaticallyAfterDays,
               (JSON..=) "Duration" Prelude.<$> duration,
               (JSON..=) "ScheduleExpression" Prelude.<$> scheduleExpression]))
instance Property "AutomaticallyAfterDays" RotationRulesProperty where
  type PropertyType "AutomaticallyAfterDays" RotationRulesProperty = Value Prelude.Integer
  set newValue RotationRulesProperty {..}
    = RotationRulesProperty
        {automaticallyAfterDays = Prelude.pure newValue, ..}
instance Property "Duration" RotationRulesProperty where
  type PropertyType "Duration" RotationRulesProperty = Value Prelude.Text
  set newValue RotationRulesProperty {..}
    = RotationRulesProperty {duration = Prelude.pure newValue, ..}
instance Property "ScheduleExpression" RotationRulesProperty where
  type PropertyType "ScheduleExpression" RotationRulesProperty = Value Prelude.Text
  set newValue RotationRulesProperty {..}
    = RotationRulesProperty
        {scheduleExpression = Prelude.pure newValue, ..}