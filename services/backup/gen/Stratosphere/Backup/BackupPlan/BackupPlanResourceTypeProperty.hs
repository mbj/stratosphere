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
  = BackupPlanResourceTypeProperty {advancedBackupSettings :: (Prelude.Maybe [AdvancedBackupSettingResourceTypeProperty]),
                                    backupPlanName :: (Value Prelude.Text),
                                    backupPlanRule :: [BackupRuleResourceTypeProperty]}
mkBackupPlanResourceTypeProperty ::
  Value Prelude.Text
  -> [BackupRuleResourceTypeProperty]
     -> BackupPlanResourceTypeProperty
mkBackupPlanResourceTypeProperty backupPlanName backupPlanRule
  = BackupPlanResourceTypeProperty
      {backupPlanName = backupPlanName, backupPlanRule = backupPlanRule,
       advancedBackupSettings = Prelude.Nothing}
instance ToResourceProperties BackupPlanResourceTypeProperty where
  toResourceProperties BackupPlanResourceTypeProperty {..}
    = ResourceProperties
        {awsType = "AWS::Backup::BackupPlan.BackupPlanResourceType",
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