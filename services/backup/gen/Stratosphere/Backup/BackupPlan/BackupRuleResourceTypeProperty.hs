module Stratosphere.Backup.BackupPlan.BackupRuleResourceTypeProperty (
        module Exports, BackupRuleResourceTypeProperty(..),
        mkBackupRuleResourceTypeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Backup.BackupPlan.CopyActionResourceTypeProperty as Exports
import {-# SOURCE #-} Stratosphere.Backup.BackupPlan.IndexActionsResourceTypeProperty as Exports
import {-# SOURCE #-} Stratosphere.Backup.BackupPlan.LifecycleResourceTypeProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BackupRuleResourceTypeProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupplan-backupruleresourcetype.html>
    BackupRuleResourceTypeProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupplan-backupruleresourcetype.html#cfn-backup-backupplan-backupruleresourcetype-completionwindowminutes>
                                    completionWindowMinutes :: (Prelude.Maybe (Value Prelude.Double)),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupplan-backupruleresourcetype.html#cfn-backup-backupplan-backupruleresourcetype-copyactions>
                                    copyActions :: (Prelude.Maybe [CopyActionResourceTypeProperty]),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupplan-backupruleresourcetype.html#cfn-backup-backupplan-backupruleresourcetype-enablecontinuousbackup>
                                    enableContinuousBackup :: (Prelude.Maybe (Value Prelude.Bool)),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupplan-backupruleresourcetype.html#cfn-backup-backupplan-backupruleresourcetype-indexactions>
                                    indexActions :: (Prelude.Maybe [IndexActionsResourceTypeProperty]),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupplan-backupruleresourcetype.html#cfn-backup-backupplan-backupruleresourcetype-lifecycle>
                                    lifecycle :: (Prelude.Maybe LifecycleResourceTypeProperty),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupplan-backupruleresourcetype.html#cfn-backup-backupplan-backupruleresourcetype-recoverypointtags>
                                    recoveryPointTags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupplan-backupruleresourcetype.html#cfn-backup-backupplan-backupruleresourcetype-rulename>
                                    ruleName :: (Value Prelude.Text),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupplan-backupruleresourcetype.html#cfn-backup-backupplan-backupruleresourcetype-scheduleexpression>
                                    scheduleExpression :: (Prelude.Maybe (Value Prelude.Text)),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupplan-backupruleresourcetype.html#cfn-backup-backupplan-backupruleresourcetype-scheduleexpressiontimezone>
                                    scheduleExpressionTimezone :: (Prelude.Maybe (Value Prelude.Text)),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupplan-backupruleresourcetype.html#cfn-backup-backupplan-backupruleresourcetype-startwindowminutes>
                                    startWindowMinutes :: (Prelude.Maybe (Value Prelude.Double)),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupplan-backupruleresourcetype.html#cfn-backup-backupplan-backupruleresourcetype-targetbackupvault>
                                    targetBackupVault :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBackupRuleResourceTypeProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> BackupRuleResourceTypeProperty
mkBackupRuleResourceTypeProperty ruleName targetBackupVault
  = BackupRuleResourceTypeProperty
      {haddock_workaround_ = (), ruleName = ruleName,
       targetBackupVault = targetBackupVault,
       completionWindowMinutes = Prelude.Nothing,
       copyActions = Prelude.Nothing,
       enableContinuousBackup = Prelude.Nothing,
       indexActions = Prelude.Nothing, lifecycle = Prelude.Nothing,
       recoveryPointTags = Prelude.Nothing,
       scheduleExpression = Prelude.Nothing,
       scheduleExpressionTimezone = Prelude.Nothing,
       startWindowMinutes = Prelude.Nothing}
instance ToResourceProperties BackupRuleResourceTypeProperty where
  toResourceProperties BackupRuleResourceTypeProperty {..}
    = ResourceProperties
        {awsType = "AWS::Backup::BackupPlan.BackupRuleResourceType",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["RuleName" JSON..= ruleName,
                            "TargetBackupVault" JSON..= targetBackupVault]
                           (Prelude.catMaybes
                              [(JSON..=) "CompletionWindowMinutes"
                                 Prelude.<$> completionWindowMinutes,
                               (JSON..=) "CopyActions" Prelude.<$> copyActions,
                               (JSON..=) "EnableContinuousBackup"
                                 Prelude.<$> enableContinuousBackup,
                               (JSON..=) "IndexActions" Prelude.<$> indexActions,
                               (JSON..=) "Lifecycle" Prelude.<$> lifecycle,
                               (JSON..=) "RecoveryPointTags" Prelude.<$> recoveryPointTags,
                               (JSON..=) "ScheduleExpression" Prelude.<$> scheduleExpression,
                               (JSON..=) "ScheduleExpressionTimezone"
                                 Prelude.<$> scheduleExpressionTimezone,
                               (JSON..=) "StartWindowMinutes" Prelude.<$> startWindowMinutes]))}
instance JSON.ToJSON BackupRuleResourceTypeProperty where
  toJSON BackupRuleResourceTypeProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["RuleName" JSON..= ruleName,
               "TargetBackupVault" JSON..= targetBackupVault]
              (Prelude.catMaybes
                 [(JSON..=) "CompletionWindowMinutes"
                    Prelude.<$> completionWindowMinutes,
                  (JSON..=) "CopyActions" Prelude.<$> copyActions,
                  (JSON..=) "EnableContinuousBackup"
                    Prelude.<$> enableContinuousBackup,
                  (JSON..=) "IndexActions" Prelude.<$> indexActions,
                  (JSON..=) "Lifecycle" Prelude.<$> lifecycle,
                  (JSON..=) "RecoveryPointTags" Prelude.<$> recoveryPointTags,
                  (JSON..=) "ScheduleExpression" Prelude.<$> scheduleExpression,
                  (JSON..=) "ScheduleExpressionTimezone"
                    Prelude.<$> scheduleExpressionTimezone,
                  (JSON..=) "StartWindowMinutes" Prelude.<$> startWindowMinutes])))
instance Property "CompletionWindowMinutes" BackupRuleResourceTypeProperty where
  type PropertyType "CompletionWindowMinutes" BackupRuleResourceTypeProperty = Value Prelude.Double
  set newValue BackupRuleResourceTypeProperty {..}
    = BackupRuleResourceTypeProperty
        {completionWindowMinutes = Prelude.pure newValue, ..}
instance Property "CopyActions" BackupRuleResourceTypeProperty where
  type PropertyType "CopyActions" BackupRuleResourceTypeProperty = [CopyActionResourceTypeProperty]
  set newValue BackupRuleResourceTypeProperty {..}
    = BackupRuleResourceTypeProperty
        {copyActions = Prelude.pure newValue, ..}
instance Property "EnableContinuousBackup" BackupRuleResourceTypeProperty where
  type PropertyType "EnableContinuousBackup" BackupRuleResourceTypeProperty = Value Prelude.Bool
  set newValue BackupRuleResourceTypeProperty {..}
    = BackupRuleResourceTypeProperty
        {enableContinuousBackup = Prelude.pure newValue, ..}
instance Property "IndexActions" BackupRuleResourceTypeProperty where
  type PropertyType "IndexActions" BackupRuleResourceTypeProperty = [IndexActionsResourceTypeProperty]
  set newValue BackupRuleResourceTypeProperty {..}
    = BackupRuleResourceTypeProperty
        {indexActions = Prelude.pure newValue, ..}
instance Property "Lifecycle" BackupRuleResourceTypeProperty where
  type PropertyType "Lifecycle" BackupRuleResourceTypeProperty = LifecycleResourceTypeProperty
  set newValue BackupRuleResourceTypeProperty {..}
    = BackupRuleResourceTypeProperty
        {lifecycle = Prelude.pure newValue, ..}
instance Property "RecoveryPointTags" BackupRuleResourceTypeProperty where
  type PropertyType "RecoveryPointTags" BackupRuleResourceTypeProperty = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue BackupRuleResourceTypeProperty {..}
    = BackupRuleResourceTypeProperty
        {recoveryPointTags = Prelude.pure newValue, ..}
instance Property "RuleName" BackupRuleResourceTypeProperty where
  type PropertyType "RuleName" BackupRuleResourceTypeProperty = Value Prelude.Text
  set newValue BackupRuleResourceTypeProperty {..}
    = BackupRuleResourceTypeProperty {ruleName = newValue, ..}
instance Property "ScheduleExpression" BackupRuleResourceTypeProperty where
  type PropertyType "ScheduleExpression" BackupRuleResourceTypeProperty = Value Prelude.Text
  set newValue BackupRuleResourceTypeProperty {..}
    = BackupRuleResourceTypeProperty
        {scheduleExpression = Prelude.pure newValue, ..}
instance Property "ScheduleExpressionTimezone" BackupRuleResourceTypeProperty where
  type PropertyType "ScheduleExpressionTimezone" BackupRuleResourceTypeProperty = Value Prelude.Text
  set newValue BackupRuleResourceTypeProperty {..}
    = BackupRuleResourceTypeProperty
        {scheduleExpressionTimezone = Prelude.pure newValue, ..}
instance Property "StartWindowMinutes" BackupRuleResourceTypeProperty where
  type PropertyType "StartWindowMinutes" BackupRuleResourceTypeProperty = Value Prelude.Double
  set newValue BackupRuleResourceTypeProperty {..}
    = BackupRuleResourceTypeProperty
        {startWindowMinutes = Prelude.pure newValue, ..}
instance Property "TargetBackupVault" BackupRuleResourceTypeProperty where
  type PropertyType "TargetBackupVault" BackupRuleResourceTypeProperty = Value Prelude.Text
  set newValue BackupRuleResourceTypeProperty {..}
    = BackupRuleResourceTypeProperty {targetBackupVault = newValue, ..}