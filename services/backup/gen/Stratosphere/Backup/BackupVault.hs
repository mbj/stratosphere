module Stratosphere.Backup.BackupVault (
        module Exports, BackupVault(..), mkBackupVault
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Backup.BackupVault.LockConfigurationTypeProperty as Exports
import {-# SOURCE #-} Stratosphere.Backup.BackupVault.NotificationObjectTypeProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BackupVault
  = BackupVault {accessPolicy :: (Prelude.Maybe JSON.Object),
                 backupVaultName :: (Value Prelude.Text),
                 backupVaultTags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                 encryptionKeyArn :: (Prelude.Maybe (Value Prelude.Text)),
                 lockConfiguration :: (Prelude.Maybe LockConfigurationTypeProperty),
                 notifications :: (Prelude.Maybe NotificationObjectTypeProperty)}
mkBackupVault :: Value Prelude.Text -> BackupVault
mkBackupVault backupVaultName
  = BackupVault
      {backupVaultName = backupVaultName, accessPolicy = Prelude.Nothing,
       backupVaultTags = Prelude.Nothing,
       encryptionKeyArn = Prelude.Nothing,
       lockConfiguration = Prelude.Nothing,
       notifications = Prelude.Nothing}
instance ToResourceProperties BackupVault where
  toResourceProperties BackupVault {..}
    = ResourceProperties
        {awsType = "AWS::Backup::BackupVault",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["BackupVaultName" JSON..= backupVaultName]
                           (Prelude.catMaybes
                              [(JSON..=) "AccessPolicy" Prelude.<$> accessPolicy,
                               (JSON..=) "BackupVaultTags" Prelude.<$> backupVaultTags,
                               (JSON..=) "EncryptionKeyArn" Prelude.<$> encryptionKeyArn,
                               (JSON..=) "LockConfiguration" Prelude.<$> lockConfiguration,
                               (JSON..=) "Notifications" Prelude.<$> notifications]))}
instance JSON.ToJSON BackupVault where
  toJSON BackupVault {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["BackupVaultName" JSON..= backupVaultName]
              (Prelude.catMaybes
                 [(JSON..=) "AccessPolicy" Prelude.<$> accessPolicy,
                  (JSON..=) "BackupVaultTags" Prelude.<$> backupVaultTags,
                  (JSON..=) "EncryptionKeyArn" Prelude.<$> encryptionKeyArn,
                  (JSON..=) "LockConfiguration" Prelude.<$> lockConfiguration,
                  (JSON..=) "Notifications" Prelude.<$> notifications])))
instance Property "AccessPolicy" BackupVault where
  type PropertyType "AccessPolicy" BackupVault = JSON.Object
  set newValue BackupVault {..}
    = BackupVault {accessPolicy = Prelude.pure newValue, ..}
instance Property "BackupVaultName" BackupVault where
  type PropertyType "BackupVaultName" BackupVault = Value Prelude.Text
  set newValue BackupVault {..}
    = BackupVault {backupVaultName = newValue, ..}
instance Property "BackupVaultTags" BackupVault where
  type PropertyType "BackupVaultTags" BackupVault = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue BackupVault {..}
    = BackupVault {backupVaultTags = Prelude.pure newValue, ..}
instance Property "EncryptionKeyArn" BackupVault where
  type PropertyType "EncryptionKeyArn" BackupVault = Value Prelude.Text
  set newValue BackupVault {..}
    = BackupVault {encryptionKeyArn = Prelude.pure newValue, ..}
instance Property "LockConfiguration" BackupVault where
  type PropertyType "LockConfiguration" BackupVault = LockConfigurationTypeProperty
  set newValue BackupVault {..}
    = BackupVault {lockConfiguration = Prelude.pure newValue, ..}
instance Property "Notifications" BackupVault where
  type PropertyType "Notifications" BackupVault = NotificationObjectTypeProperty
  set newValue BackupVault {..}
    = BackupVault {notifications = Prelude.pure newValue, ..}