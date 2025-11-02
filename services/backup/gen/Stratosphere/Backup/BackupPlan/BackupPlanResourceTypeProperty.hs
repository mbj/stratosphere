module Stratosphere.Backup.BackupPlan.BackupPlanResourceTypeProperty (
        module Exports, BackupPlanResourceTypeProperty(..),
        mkBackupPlanResourceTypeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Backup.BackupPlan.AdvancedBackupSettingResourceTypeProperty as Exports
import {-# SOURCE #-} Stratosphere.Backup.BackupPlan.BackupRuleResourceTypeProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BackupPlanResourceTypeProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupplan-backupplanresourcetype.html>
    BackupPlanResourceTypeProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupplan-backupplanresourcetype.html#cfn-backup-backupplan-backupplanresourcetype-advancedbackupsettings>
                                    advancedBackupSettings :: (Prelude.Maybe [AdvancedBackupSettingResourceTypeProperty]),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupplan-backupplanresourcetype.html#cfn-backup-backupplan-backupplanresourcetype-backupplanname>
                                    backupPlanName :: (Value Prelude.Text),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupplan-backupplanresourcetype.html#cfn-backup-backupplan-backupplanresourcetype-backupplanrule>
                                    backupPlanRule :: [BackupRuleResourceTypeProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBackupPlanResourceTypeProperty ::
  Value Prelude.Text
  -> [BackupRuleResourceTypeProperty]
     -> BackupPlanResourceTypeProperty
mkBackupPlanResourceTypeProperty backupPlanName backupPlanRule
  = BackupPlanResourceTypeProperty
      {haddock_workaround_ = (), backupPlanName = backupPlanName,
       backupPlanRule = backupPlanRule,
       advancedBackupSettings = Prelude.Nothing}
instance ToResourceProperties BackupPlanResourceTypeProperty where
  toResourceProperties BackupPlanResourceTypeProperty {..}
    = ResourceProperties
        {awsType = "AWS::Backup::BackupPlan.BackupPlanResourceType",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["BackupPlanName" JSON..= backupPlanName,
                            "BackupPlanRule" JSON..= backupPlanRule]
                           (Prelude.catMaybes
                              [(JSON..=) "AdvancedBackupSettings"
                                 Prelude.<$> advancedBackupSettings]))}
instance JSON.ToJSON BackupPlanResourceTypeProperty where
  toJSON BackupPlanResourceTypeProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["BackupPlanName" JSON..= backupPlanName,
               "BackupPlanRule" JSON..= backupPlanRule]
              (Prelude.catMaybes
                 [(JSON..=) "AdvancedBackupSettings"
                    Prelude.<$> advancedBackupSettings])))
instance Property "AdvancedBackupSettings" BackupPlanResourceTypeProperty where
  type PropertyType "AdvancedBackupSettings" BackupPlanResourceTypeProperty = [AdvancedBackupSettingResourceTypeProperty]
  set newValue BackupPlanResourceTypeProperty {..}
    = BackupPlanResourceTypeProperty
        {advancedBackupSettings = Prelude.pure newValue, ..}
instance Property "BackupPlanName" BackupPlanResourceTypeProperty where
  type PropertyType "BackupPlanName" BackupPlanResourceTypeProperty = Value Prelude.Text
  set newValue BackupPlanResourceTypeProperty {..}
    = BackupPlanResourceTypeProperty {backupPlanName = newValue, ..}
instance Property "BackupPlanRule" BackupPlanResourceTypeProperty where
  type PropertyType "BackupPlanRule" BackupPlanResourceTypeProperty = [BackupRuleResourceTypeProperty]
  set newValue BackupPlanResourceTypeProperty {..}
    = BackupPlanResourceTypeProperty {backupPlanRule = newValue, ..}