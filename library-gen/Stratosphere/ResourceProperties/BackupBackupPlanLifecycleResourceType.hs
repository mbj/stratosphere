
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupplan-lifecycleresourcetype.html

module Stratosphere.ResourceProperties.BackupBackupPlanLifecycleResourceType where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for BackupBackupPlanLifecycleResourceType. See
-- 'backupBackupPlanLifecycleResourceType' for a more convenient
-- constructor.
data BackupBackupPlanLifecycleResourceType =
  BackupBackupPlanLifecycleResourceType
  { _backupBackupPlanLifecycleResourceTypeDeleteAfterDays :: Maybe (Val Double)
  , _backupBackupPlanLifecycleResourceTypeMoveToColdStorageAfterDays :: Maybe (Val Double)
  } deriving (Show, Eq)

instance ToJSON BackupBackupPlanLifecycleResourceType where
  toJSON BackupBackupPlanLifecycleResourceType{..} =
    object $
    catMaybes
    [ fmap (("DeleteAfterDays",) . toJSON) _backupBackupPlanLifecycleResourceTypeDeleteAfterDays
    , fmap (("MoveToColdStorageAfterDays",) . toJSON) _backupBackupPlanLifecycleResourceTypeMoveToColdStorageAfterDays
    ]

-- | Constructor for 'BackupBackupPlanLifecycleResourceType' containing
-- required fields as arguments.
backupBackupPlanLifecycleResourceType
  :: BackupBackupPlanLifecycleResourceType
backupBackupPlanLifecycleResourceType  =
  BackupBackupPlanLifecycleResourceType
  { _backupBackupPlanLifecycleResourceTypeDeleteAfterDays = Nothing
  , _backupBackupPlanLifecycleResourceTypeMoveToColdStorageAfterDays = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupplan-lifecycleresourcetype.html#cfn-backup-backupplan-lifecycleresourcetype-deleteafterdays
bbplrtDeleteAfterDays :: Lens' BackupBackupPlanLifecycleResourceType (Maybe (Val Double))
bbplrtDeleteAfterDays = lens _backupBackupPlanLifecycleResourceTypeDeleteAfterDays (\s a -> s { _backupBackupPlanLifecycleResourceTypeDeleteAfterDays = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupplan-lifecycleresourcetype.html#cfn-backup-backupplan-lifecycleresourcetype-movetocoldstorageafterdays
bbplrtMoveToColdStorageAfterDays :: Lens' BackupBackupPlanLifecycleResourceType (Maybe (Val Double))
bbplrtMoveToColdStorageAfterDays = lens _backupBackupPlanLifecycleResourceTypeMoveToColdStorageAfterDays (\s a -> s { _backupBackupPlanLifecycleResourceTypeMoveToColdStorageAfterDays = a })
