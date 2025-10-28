module Stratosphere.Backup.BackupPlan.CopyActionResourceTypeProperty (
        module Exports, CopyActionResourceTypeProperty(..),
        mkCopyActionResourceTypeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Backup.BackupPlan.LifecycleResourceTypeProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CopyActionResourceTypeProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupplan-copyactionresourcetype.html>
    CopyActionResourceTypeProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupplan-copyactionresourcetype.html#cfn-backup-backupplan-copyactionresourcetype-destinationbackupvaultarn>
                                    destinationBackupVaultArn :: (Value Prelude.Text),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupplan-copyactionresourcetype.html#cfn-backup-backupplan-copyactionresourcetype-lifecycle>
                                    lifecycle :: (Prelude.Maybe LifecycleResourceTypeProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCopyActionResourceTypeProperty ::
  Value Prelude.Text -> CopyActionResourceTypeProperty
mkCopyActionResourceTypeProperty destinationBackupVaultArn
  = CopyActionResourceTypeProperty
      {haddock_workaround_ = (),
       destinationBackupVaultArn = destinationBackupVaultArn,
       lifecycle = Prelude.Nothing}
instance ToResourceProperties CopyActionResourceTypeProperty where
  toResourceProperties CopyActionResourceTypeProperty {..}
    = ResourceProperties
        {awsType = "AWS::Backup::BackupPlan.CopyActionResourceType",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DestinationBackupVaultArn" JSON..= destinationBackupVaultArn]
                           (Prelude.catMaybes [(JSON..=) "Lifecycle" Prelude.<$> lifecycle]))}
instance JSON.ToJSON CopyActionResourceTypeProperty where
  toJSON CopyActionResourceTypeProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DestinationBackupVaultArn" JSON..= destinationBackupVaultArn]
              (Prelude.catMaybes [(JSON..=) "Lifecycle" Prelude.<$> lifecycle])))
instance Property "DestinationBackupVaultArn" CopyActionResourceTypeProperty where
  type PropertyType "DestinationBackupVaultArn" CopyActionResourceTypeProperty = Value Prelude.Text
  set newValue CopyActionResourceTypeProperty {..}
    = CopyActionResourceTypeProperty
        {destinationBackupVaultArn = newValue, ..}
instance Property "Lifecycle" CopyActionResourceTypeProperty where
  type PropertyType "Lifecycle" CopyActionResourceTypeProperty = LifecycleResourceTypeProperty
  set newValue CopyActionResourceTypeProperty {..}
    = CopyActionResourceTypeProperty
        {lifecycle = Prelude.pure newValue, ..}