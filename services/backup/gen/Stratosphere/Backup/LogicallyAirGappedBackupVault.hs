module Stratosphere.Backup.LogicallyAirGappedBackupVault (
        module Exports, LogicallyAirGappedBackupVault(..),
        mkLogicallyAirGappedBackupVault
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Backup.LogicallyAirGappedBackupVault.NotificationObjectTypeProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LogicallyAirGappedBackupVault
  = LogicallyAirGappedBackupVault {accessPolicy :: (Prelude.Maybe JSON.Object),
                                   backupVaultName :: (Value Prelude.Text),
                                   backupVaultTags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                                   maxRetentionDays :: (Value Prelude.Integer),
                                   minRetentionDays :: (Value Prelude.Integer),
                                   notifications :: (Prelude.Maybe NotificationObjectTypeProperty),
                                   vaultState :: (Prelude.Maybe (Value Prelude.Text)),
                                   vaultType :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLogicallyAirGappedBackupVault ::
  Value Prelude.Text
  -> Value Prelude.Integer
     -> Value Prelude.Integer -> LogicallyAirGappedBackupVault
mkLogicallyAirGappedBackupVault
  backupVaultName
  maxRetentionDays
  minRetentionDays
  = LogicallyAirGappedBackupVault
      {backupVaultName = backupVaultName,
       maxRetentionDays = maxRetentionDays,
       minRetentionDays = minRetentionDays,
       accessPolicy = Prelude.Nothing, backupVaultTags = Prelude.Nothing,
       notifications = Prelude.Nothing, vaultState = Prelude.Nothing,
       vaultType = Prelude.Nothing}
instance ToResourceProperties LogicallyAirGappedBackupVault where
  toResourceProperties LogicallyAirGappedBackupVault {..}
    = ResourceProperties
        {awsType = "AWS::Backup::LogicallyAirGappedBackupVault",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["BackupVaultName" JSON..= backupVaultName,
                            "MaxRetentionDays" JSON..= maxRetentionDays,
                            "MinRetentionDays" JSON..= minRetentionDays]
                           (Prelude.catMaybes
                              [(JSON..=) "AccessPolicy" Prelude.<$> accessPolicy,
                               (JSON..=) "BackupVaultTags" Prelude.<$> backupVaultTags,
                               (JSON..=) "Notifications" Prelude.<$> notifications,
                               (JSON..=) "VaultState" Prelude.<$> vaultState,
                               (JSON..=) "VaultType" Prelude.<$> vaultType]))}
instance JSON.ToJSON LogicallyAirGappedBackupVault where
  toJSON LogicallyAirGappedBackupVault {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["BackupVaultName" JSON..= backupVaultName,
               "MaxRetentionDays" JSON..= maxRetentionDays,
               "MinRetentionDays" JSON..= minRetentionDays]
              (Prelude.catMaybes
                 [(JSON..=) "AccessPolicy" Prelude.<$> accessPolicy,
                  (JSON..=) "BackupVaultTags" Prelude.<$> backupVaultTags,
                  (JSON..=) "Notifications" Prelude.<$> notifications,
                  (JSON..=) "VaultState" Prelude.<$> vaultState,
                  (JSON..=) "VaultType" Prelude.<$> vaultType])))
instance Property "AccessPolicy" LogicallyAirGappedBackupVault where
  type PropertyType "AccessPolicy" LogicallyAirGappedBackupVault = JSON.Object
  set newValue LogicallyAirGappedBackupVault {..}
    = LogicallyAirGappedBackupVault
        {accessPolicy = Prelude.pure newValue, ..}
instance Property "BackupVaultName" LogicallyAirGappedBackupVault where
  type PropertyType "BackupVaultName" LogicallyAirGappedBackupVault = Value Prelude.Text
  set newValue LogicallyAirGappedBackupVault {..}
    = LogicallyAirGappedBackupVault {backupVaultName = newValue, ..}
instance Property "BackupVaultTags" LogicallyAirGappedBackupVault where
  type PropertyType "BackupVaultTags" LogicallyAirGappedBackupVault = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue LogicallyAirGappedBackupVault {..}
    = LogicallyAirGappedBackupVault
        {backupVaultTags = Prelude.pure newValue, ..}
instance Property "MaxRetentionDays" LogicallyAirGappedBackupVault where
  type PropertyType "MaxRetentionDays" LogicallyAirGappedBackupVault = Value Prelude.Integer
  set newValue LogicallyAirGappedBackupVault {..}
    = LogicallyAirGappedBackupVault {maxRetentionDays = newValue, ..}
instance Property "MinRetentionDays" LogicallyAirGappedBackupVault where
  type PropertyType "MinRetentionDays" LogicallyAirGappedBackupVault = Value Prelude.Integer
  set newValue LogicallyAirGappedBackupVault {..}
    = LogicallyAirGappedBackupVault {minRetentionDays = newValue, ..}
instance Property "Notifications" LogicallyAirGappedBackupVault where
  type PropertyType "Notifications" LogicallyAirGappedBackupVault = NotificationObjectTypeProperty
  set newValue LogicallyAirGappedBackupVault {..}
    = LogicallyAirGappedBackupVault
        {notifications = Prelude.pure newValue, ..}
instance Property "VaultState" LogicallyAirGappedBackupVault where
  type PropertyType "VaultState" LogicallyAirGappedBackupVault = Value Prelude.Text
  set newValue LogicallyAirGappedBackupVault {..}
    = LogicallyAirGappedBackupVault
        {vaultState = Prelude.pure newValue, ..}
instance Property "VaultType" LogicallyAirGappedBackupVault where
  type PropertyType "VaultType" LogicallyAirGappedBackupVault = Value Prelude.Text
  set newValue LogicallyAirGappedBackupVault {..}
    = LogicallyAirGappedBackupVault
        {vaultType = Prelude.pure newValue, ..}