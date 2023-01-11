
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupvault-notificationobjecttype.html

module Stratosphere.ResourceProperties.BackupBackupVaultNotificationObjectType where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for BackupBackupVaultNotificationObjectType.
-- See 'backupBackupVaultNotificationObjectType' for a more convenient
-- constructor.
data BackupBackupVaultNotificationObjectType =
  BackupBackupVaultNotificationObjectType
  { _backupBackupVaultNotificationObjectTypeBackupVaultEvents :: ValList Text
  , _backupBackupVaultNotificationObjectTypeSNSTopicArn :: Val Text
  } deriving (Show, Eq)

instance ToJSON BackupBackupVaultNotificationObjectType where
  toJSON BackupBackupVaultNotificationObjectType{..} =
    object $
    catMaybes
    [ (Just . ("BackupVaultEvents",) . toJSON) _backupBackupVaultNotificationObjectTypeBackupVaultEvents
    , (Just . ("SNSTopicArn",) . toJSON) _backupBackupVaultNotificationObjectTypeSNSTopicArn
    ]

-- | Constructor for 'BackupBackupVaultNotificationObjectType' containing
-- required fields as arguments.
backupBackupVaultNotificationObjectType
  :: ValList Text -- ^ 'bbvnotBackupVaultEvents'
  -> Val Text -- ^ 'bbvnotSNSTopicArn'
  -> BackupBackupVaultNotificationObjectType
backupBackupVaultNotificationObjectType backupVaultEventsarg sNSTopicArnarg =
  BackupBackupVaultNotificationObjectType
  { _backupBackupVaultNotificationObjectTypeBackupVaultEvents = backupVaultEventsarg
  , _backupBackupVaultNotificationObjectTypeSNSTopicArn = sNSTopicArnarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupvault-notificationobjecttype.html#cfn-backup-backupvault-notificationobjecttype-backupvaultevents
bbvnotBackupVaultEvents :: Lens' BackupBackupVaultNotificationObjectType (ValList Text)
bbvnotBackupVaultEvents = lens _backupBackupVaultNotificationObjectTypeBackupVaultEvents (\s a -> s { _backupBackupVaultNotificationObjectTypeBackupVaultEvents = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupvault-notificationobjecttype.html#cfn-backup-backupvault-notificationobjecttype-snstopicarn
bbvnotSNSTopicArn :: Lens' BackupBackupVaultNotificationObjectType (Val Text)
bbvnotSNSTopicArn = lens _backupBackupVaultNotificationObjectTypeSNSTopicArn (\s a -> s { _backupBackupVaultNotificationObjectTypeSNSTopicArn = a })
