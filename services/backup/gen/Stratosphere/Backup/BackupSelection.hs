module Stratosphere.Backup.BackupSelection (
        module Exports, BackupSelection(..), mkBackupSelection
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Backup.BackupSelection.BackupSelectionResourceTypeProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BackupSelection
  = BackupSelection {backupPlanId :: (Value Prelude.Text),
                     backupSelection :: BackupSelectionResourceTypeProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBackupSelection ::
  Value Prelude.Text
  -> BackupSelectionResourceTypeProperty -> BackupSelection
mkBackupSelection backupPlanId backupSelection
  = BackupSelection
      {backupPlanId = backupPlanId, backupSelection = backupSelection}
instance ToResourceProperties BackupSelection where
  toResourceProperties BackupSelection {..}
    = ResourceProperties
        {awsType = "AWS::Backup::BackupSelection",
         supportsTags = Prelude.False,
         properties = ["BackupPlanId" JSON..= backupPlanId,
                       "BackupSelection" JSON..= backupSelection]}
instance JSON.ToJSON BackupSelection where
  toJSON BackupSelection {..}
    = JSON.object
        ["BackupPlanId" JSON..= backupPlanId,
         "BackupSelection" JSON..= backupSelection]
instance Property "BackupPlanId" BackupSelection where
  type PropertyType "BackupPlanId" BackupSelection = Value Prelude.Text
  set newValue BackupSelection {..}
    = BackupSelection {backupPlanId = newValue, ..}
instance Property "BackupSelection" BackupSelection where
  type PropertyType "BackupSelection" BackupSelection = BackupSelectionResourceTypeProperty
  set newValue BackupSelection {..}
    = BackupSelection {backupSelection = newValue, ..}