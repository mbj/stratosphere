module Stratosphere.Backup.BackupSelection.ConditionParameterProperty (
        ConditionParameterProperty(..), mkConditionParameterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ConditionParameterProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupselection-conditionparameter.html>
    ConditionParameterProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupselection-conditionparameter.html#cfn-backup-backupselection-conditionparameter-conditionkey>
                                conditionKey :: (Prelude.Maybe (Value Prelude.Text)),
                                -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupselection-conditionparameter.html#cfn-backup-backupselection-conditionparameter-conditionvalue>
                                conditionValue :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConditionParameterProperty :: ConditionParameterProperty
mkConditionParameterProperty
  = ConditionParameterProperty
      {conditionKey = Prelude.Nothing, conditionValue = Prelude.Nothing}
instance ToResourceProperties ConditionParameterProperty where
  toResourceProperties ConditionParameterProperty {..}
    = ResourceProperties
        {awsType = "AWS::Backup::BackupSelection.ConditionParameter",
         supportsTags = Prelude.False,
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