
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupplan-copyactionresourcetype.html

module Stratosphere.ResourceProperties.BackupBackupPlanCopyActionResourceType where

import Prelude
import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.BackupBackupPlanLifecycleResourceType

-- | Full data type definition for BackupBackupPlanCopyActionResourceType. See
-- 'backupBackupPlanCopyActionResourceType' for a more convenient
-- constructor.
data BackupBackupPlanCopyActionResourceType =
  BackupBackupPlanCopyActionResourceType
  { _backupBackupPlanCopyActionResourceTypeDestinationBackupVaultArn :: Val Text
  , _backupBackupPlanCopyActionResourceTypeLifecycle :: Maybe BackupBackupPlanLifecycleResourceType
  } deriving (Show, Eq)

instance ToJSON BackupBackupPlanCopyActionResourceType where
  toJSON BackupBackupPlanCopyActionResourceType{..} =
    object $
    catMaybes
    [ (Just . ("DestinationBackupVaultArn",) . toJSON) _backupBackupPlanCopyActionResourceTypeDestinationBackupVaultArn
    , fmap (("Lifecycle",) . toJSON) _backupBackupPlanCopyActionResourceTypeLifecycle
    ]

-- | Constructor for 'BackupBackupPlanCopyActionResourceType' containing
-- required fields as arguments.
backupBackupPlanCopyActionResourceType
  :: Val Text -- ^ 'bbpcartDestinationBackupVaultArn'
  -> BackupBackupPlanCopyActionResourceType
backupBackupPlanCopyActionResourceType destinationBackupVaultArnarg =
  BackupBackupPlanCopyActionResourceType
  { _backupBackupPlanCopyActionResourceTypeDestinationBackupVaultArn = destinationBackupVaultArnarg
  , _backupBackupPlanCopyActionResourceTypeLifecycle = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupplan-copyactionresourcetype.html#cfn-backup-backupplan-copyactionresourcetype-destinationbackupvaultarn
bbpcartDestinationBackupVaultArn :: Lens' BackupBackupPlanCopyActionResourceType (Val Text)
bbpcartDestinationBackupVaultArn = lens _backupBackupPlanCopyActionResourceTypeDestinationBackupVaultArn (\s a -> s { _backupBackupPlanCopyActionResourceTypeDestinationBackupVaultArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupplan-copyactionresourcetype.html#cfn-backup-backupplan-copyactionresourcetype-lifecycle
bbpcartLifecycle :: Lens' BackupBackupPlanCopyActionResourceType (Maybe BackupBackupPlanLifecycleResourceType)
bbpcartLifecycle = lens _backupBackupPlanCopyActionResourceTypeLifecycle (\s a -> s { _backupBackupPlanCopyActionResourceTypeLifecycle = a })
