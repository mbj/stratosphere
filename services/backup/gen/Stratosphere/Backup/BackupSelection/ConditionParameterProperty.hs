module Stratosphere.Backup.BackupSelection.ConditionParameterProperty (
        ConditionParameterProperty(..), mkConditionParameterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ConditionParameterProperty
  = ConditionParameterProperty {conditionKey :: (Prelude.Maybe (Value Prelude.Text)),
                                conditionValue :: (Prelude.Maybe (Value Prelude.Text))}
mkConditionParameterProperty :: ConditionParameterProperty
mkConditionParameterProperty
  = ConditionParameterProperty
      {conditionKey = Prelude.Nothing, conditionValue = Prelude.Nothing}
instance ToResourceProperties ConditionParameterProperty where
  toResourceProperties ConditionParameterProperty {..}
    = ResourceProperties
        {awsType = "AWS::Backup::BackupSelection.ConditionParameter",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ConditionKey" Prelude.<$> conditionKey,
                            (JSON..=) "ConditionValue" Prelude.<$> conditionValue])}
instance JSON.ToJSON ConditionParameterProperty where
  toJSON ConditionParameterProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ConditionKey" Prelude.<$> conditionKey,
               (JSON..=) "ConditionValue" Prelude.<$> conditionValue]))
instance Property "ConditionKey" ConditionParameterProperty where
  type PropertyType "ConditionKey" ConditionParameterProperty = Value Prelude.Text
  set newValue ConditionParameterProperty {..}
    = ConditionParameterProperty
        {conditionKey = Prelude.pure newValue, ..}
instance Property "ConditionValue" ConditionParameterProperty where
  type PropertyType "ConditionValue" ConditionParameterProperty = Value Prelude.Text
  set newValue ConditionParameterProperty {..}
    = ConditionParameterProperty
        {conditionValue = Prelude.pure newValue, ..}