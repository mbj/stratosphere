module Stratosphere.Backup.BackupPlan (
        module Exports, BackupPlan(..), mkBackupPlan
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Backup.BackupPlan.BackupPlanResourceTypeProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BackupPlan
  = BackupPlan {backupPlan :: BackupPlanResourceTypeProperty,
                backupPlanTags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text)))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBackupPlan :: BackupPlanResourceTypeProperty -> BackupPlan
mkBackupPlan backupPlan
  = BackupPlan
      {backupPlan = backupPlan, backupPlanTags = Prelude.Nothing}
instance ToResourceProperties BackupPlan where
  toResourceProperties BackupPlan {..}
    = ResourceProperties
        {awsType = "AWS::Backup::BackupPlan", supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["BackupPlan" JSON..= backupPlan]
                           (Prelude.catMaybes
                              [(JSON..=) "BackupPlanTags" Prelude.<$> backupPlanTags]))}
instance JSON.ToJSON BackupPlan where
  toJSON BackupPlan {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["BackupPlan" JSON..= backupPlan]
              (Prelude.catMaybes
                 [(JSON..=) "BackupPlanTags" Prelude.<$> backupPlanTags])))
instance Property "BackupPlan" BackupPlan where
  type PropertyType "BackupPlan" BackupPlan = BackupPlanResourceTypeProperty
  set newValue BackupPlan {..}
    = BackupPlan {backupPlan = newValue, ..}
instance Property "BackupPlanTags" BackupPlan where
  type PropertyType "BackupPlanTags" BackupPlan = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue BackupPlan {..}
    = BackupPlan {backupPlanTags = Prelude.pure newValue, ..}