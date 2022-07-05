{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-backup-backupselection.html

module Stratosphere.Resources.BackupBackupSelection where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.BackupBackupSelectionBackupSelectionResourceType

-- | Full data type definition for BackupBackupSelection. See
-- 'backupBackupSelection' for a more convenient constructor.
data BackupBackupSelection =
  BackupBackupSelection
  { _backupBackupSelectionBackupPlanId :: Val Text
  , _backupBackupSelectionBackupSelection :: BackupBackupSelectionBackupSelectionResourceType
  } deriving (Show, Eq)

instance ToResourceProperties BackupBackupSelection where
  toResourceProperties BackupBackupSelection{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::Backup::BackupSelection"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("BackupPlanId",) . toJSON) _backupBackupSelectionBackupPlanId
        , (Just . ("BackupSelection",) . toJSON) _backupBackupSelectionBackupSelection
        ]
    }

-- | Constructor for 'BackupBackupSelection' containing required fields as
-- arguments.
backupBackupSelection
  :: Val Text -- ^ 'bbsBackupPlanId'
  -> BackupBackupSelectionBackupSelectionResourceType -- ^ 'bbsBackupSelection'
  -> BackupBackupSelection
backupBackupSelection backupPlanIdarg backupSelectionarg =
  BackupBackupSelection
  { _backupBackupSelectionBackupPlanId = backupPlanIdarg
  , _backupBackupSelectionBackupSelection = backupSelectionarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-backup-backupselection.html#cfn-backup-backupselection-backupplanid
bbsBackupPlanId :: Lens' BackupBackupSelection (Val Text)
bbsBackupPlanId = lens _backupBackupSelectionBackupPlanId (\s a -> s { _backupBackupSelectionBackupPlanId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-backup-backupselection.html#cfn-backup-backupselection-backupselection
bbsBackupSelection :: Lens' BackupBackupSelection BackupBackupSelectionBackupSelectionResourceType
bbsBackupSelection = lens _backupBackupSelectionBackupSelection (\s a -> s { _backupBackupSelectionBackupSelection = a })
