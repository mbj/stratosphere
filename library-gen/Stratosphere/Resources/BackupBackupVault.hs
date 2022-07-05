{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-backup-backupvault.html

module Stratosphere.Resources.BackupBackupVault where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.BackupBackupVaultNotificationObjectType

-- | Full data type definition for BackupBackupVault. See 'backupBackupVault'
-- for a more convenient constructor.
data BackupBackupVault =
  BackupBackupVault
  { _backupBackupVaultAccessPolicy :: Maybe Object
  , _backupBackupVaultBackupVaultName :: Val Text
  , _backupBackupVaultBackupVaultTags :: Maybe Object
  , _backupBackupVaultEncryptionKeyArn :: Maybe (Val Text)
  , _backupBackupVaultNotifications :: Maybe BackupBackupVaultNotificationObjectType
  } deriving (Show, Eq)

instance ToResourceProperties BackupBackupVault where
  toResourceProperties BackupBackupVault{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::Backup::BackupVault"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("AccessPolicy",) . toJSON) _backupBackupVaultAccessPolicy
        , (Just . ("BackupVaultName",) . toJSON) _backupBackupVaultBackupVaultName
        , fmap (("BackupVaultTags",) . toJSON) _backupBackupVaultBackupVaultTags
        , fmap (("EncryptionKeyArn",) . toJSON) _backupBackupVaultEncryptionKeyArn
        , fmap (("Notifications",) . toJSON) _backupBackupVaultNotifications
        ]
    }

-- | Constructor for 'BackupBackupVault' containing required fields as
-- arguments.
backupBackupVault
  :: Val Text -- ^ 'bbvBackupVaultName'
  -> BackupBackupVault
backupBackupVault backupVaultNamearg =
  BackupBackupVault
  { _backupBackupVaultAccessPolicy = Nothing
  , _backupBackupVaultBackupVaultName = backupVaultNamearg
  , _backupBackupVaultBackupVaultTags = Nothing
  , _backupBackupVaultEncryptionKeyArn = Nothing
  , _backupBackupVaultNotifications = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-backup-backupvault.html#cfn-backup-backupvault-accesspolicy
bbvAccessPolicy :: Lens' BackupBackupVault (Maybe Object)
bbvAccessPolicy = lens _backupBackupVaultAccessPolicy (\s a -> s { _backupBackupVaultAccessPolicy = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-backup-backupvault.html#cfn-backup-backupvault-backupvaultname
bbvBackupVaultName :: Lens' BackupBackupVault (Val Text)
bbvBackupVaultName = lens _backupBackupVaultBackupVaultName (\s a -> s { _backupBackupVaultBackupVaultName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-backup-backupvault.html#cfn-backup-backupvault-backupvaulttags
bbvBackupVaultTags :: Lens' BackupBackupVault (Maybe Object)
bbvBackupVaultTags = lens _backupBackupVaultBackupVaultTags (\s a -> s { _backupBackupVaultBackupVaultTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-backup-backupvault.html#cfn-backup-backupvault-encryptionkeyarn
bbvEncryptionKeyArn :: Lens' BackupBackupVault (Maybe (Val Text))
bbvEncryptionKeyArn = lens _backupBackupVaultEncryptionKeyArn (\s a -> s { _backupBackupVaultEncryptionKeyArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-backup-backupvault.html#cfn-backup-backupvault-notifications
bbvNotifications :: Lens' BackupBackupVault (Maybe BackupBackupVaultNotificationObjectType)
bbvNotifications = lens _backupBackupVaultNotifications (\s a -> s { _backupBackupVaultNotifications = a })
