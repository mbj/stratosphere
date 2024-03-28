module Stratosphere.Backup.RestoreTestingPlan (
        module Exports, RestoreTestingPlan(..), mkRestoreTestingPlan
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Backup.RestoreTestingPlan.RestoreTestingRecoveryPointSelectionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data RestoreTestingPlan
  = RestoreTestingPlan {recoveryPointSelection :: RestoreTestingRecoveryPointSelectionProperty,
                        restoreTestingPlanName :: (Value Prelude.Text),
                        scheduleExpression :: (Value Prelude.Text),
                        scheduleExpressionTimezone :: (Prelude.Maybe (Value Prelude.Text)),
                        startWindowHours :: (Prelude.Maybe (Value Prelude.Integer)),
                        tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRestoreTestingPlan ::
  RestoreTestingRecoveryPointSelectionProperty
  -> Value Prelude.Text -> Value Prelude.Text -> RestoreTestingPlan
mkRestoreTestingPlan
  recoveryPointSelection
  restoreTestingPlanName
  scheduleExpression
  = RestoreTestingPlan
      {recoveryPointSelection = recoveryPointSelection,
       restoreTestingPlanName = restoreTestingPlanName,
       scheduleExpression = scheduleExpression,
       scheduleExpressionTimezone = Prelude.Nothing,
       startWindowHours = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties RestoreTestingPlan where
  toResourceProperties RestoreTestingPlan {..}
    = ResourceProperties
        {awsType = "AWS::Backup::RestoreTestingPlan",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["RecoveryPointSelection" JSON..= recoveryPointSelection,
                            "RestoreTestingPlanName" JSON..= restoreTestingPlanName,
                            "ScheduleExpression" JSON..= scheduleExpression]
                           (Prelude.catMaybes
                              [(JSON..=) "ScheduleExpressionTimezone"
                                 Prelude.<$> scheduleExpressionTimezone,
                               (JSON..=) "StartWindowHours" Prelude.<$> startWindowHours,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON RestoreTestingPlan where
  toJSON RestoreTestingPlan {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["RecoveryPointSelection" JSON..= recoveryPointSelection,
               "RestoreTestingPlanName" JSON..= restoreTestingPlanName,
               "ScheduleExpression" JSON..= scheduleExpression]
              (Prelude.catMaybes
                 [(JSON..=) "ScheduleExpressionTimezone"
                    Prelude.<$> scheduleExpressionTimezone,
                  (JSON..=) "StartWindowHours" Prelude.<$> startWindowHours,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "RecoveryPointSelection" RestoreTestingPlan where
  type PropertyType "RecoveryPointSelection" RestoreTestingPlan = RestoreTestingRecoveryPointSelectionProperty
  set newValue RestoreTestingPlan {..}
    = RestoreTestingPlan {recoveryPointSelection = newValue, ..}
instance Property "RestoreTestingPlanName" RestoreTestingPlan where
  type PropertyType "RestoreTestingPlanName" RestoreTestingPlan = Value Prelude.Text
  set newValue RestoreTestingPlan {..}
    = RestoreTestingPlan {restoreTestingPlanName = newValue, ..}
instance Property "ScheduleExpression" RestoreTestingPlan where
  type PropertyType "ScheduleExpression" RestoreTestingPlan = Value Prelude.Text
  set newValue RestoreTestingPlan {..}
    = RestoreTestingPlan {scheduleExpression = newValue, ..}
instance Property "ScheduleExpressionTimezone" RestoreTestingPlan where
  type PropertyType "ScheduleExpressionTimezone" RestoreTestingPlan = Value Prelude.Text
  set newValue RestoreTestingPlan {..}
    = RestoreTestingPlan
        {scheduleExpressionTimezone = Prelude.pure newValue, ..}
instance Property "StartWindowHours" RestoreTestingPlan where
  type PropertyType "StartWindowHours" RestoreTestingPlan = Value Prelude.Integer
  set newValue RestoreTestingPlan {..}
    = RestoreTestingPlan {startWindowHours = Prelude.pure newValue, ..}
instance Property "Tags" RestoreTestingPlan where
  type PropertyType "Tags" RestoreTestingPlan = [Tag]
  set newValue RestoreTestingPlan {..}
    = RestoreTestingPlan {tags = Prelude.pure newValue, ..}