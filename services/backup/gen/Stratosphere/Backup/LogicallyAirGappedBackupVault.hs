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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-backup-logicallyairgappedbackupvault.html>
    LogicallyAirGappedBackupVault {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-backup-logicallyairgappedbackupvault.html#cfn-backup-logicallyairgappedbackupvault-accesspolicy>
                                   accessPolicy :: (Prelude.Maybe JSON.Object),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-backup-logicallyairgappedbackupvault.html#cfn-backup-logicallyairgappedbackupvault-backupvaultname>
                                   backupVaultName :: (Value Prelude.Text),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-backup-logicallyairgappedbackupvault.html#cfn-backup-logicallyairgappedbackupvault-backupvaulttags>
                                   backupVaultTags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-backup-logicallyairgappedbackupvault.html#cfn-backup-logicallyairgappedbackupvault-maxretentiondays>
                                   maxRetentionDays :: (Value Prelude.Integer),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-backup-logicallyairgappedbackupvault.html#cfn-backup-logicallyairgappedbackupvault-minretentiondays>
                                   minRetentionDays :: (Value Prelude.Integer),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-backup-logicallyairgappedbackupvault.html#cfn-backup-logicallyairgappedbackupvault-notifications>
                                   notifications :: (Prelude.Maybe NotificationObjectTypeProperty)}
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
      {haddock_workaround_ = (), backupVaultName = backupVaultName,
       maxRetentionDays = maxRetentionDays,
       minRetentionDays = minRetentionDays,
       accessPolicy = Prelude.Nothing, backupVaultTags = Prelude.Nothing,
       notifications = Prelude.Nothing}
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
                               (JSON..=) "Notifications" Prelude.<$> notifications]))}
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
                  (JSON..=) "Notifications" Prelude.<$> notifications])))
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