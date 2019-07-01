{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupplan-backupplanresourcetype.html

module Stratosphere.ResourceProperties.BackupBackupPlanBackupPlanResourceType where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.BackupBackupPlanBackupRuleResourceType

-- | Full data type definition for BackupBackupPlanBackupPlanResourceType. See
-- 'backupBackupPlanBackupPlanResourceType' for a more convenient
-- constructor.
data BackupBackupPlanBackupPlanResourceType =
  BackupBackupPlanBackupPlanResourceType
  { _backupBackupPlanBackupPlanResourceTypeBackupPlanName :: Val Text
  , _backupBackupPlanBackupPlanResourceTypeBackupPlanRule :: [BackupBackupPlanBackupRuleResourceType]
  } deriving (Show, Eq)

instance ToJSON BackupBackupPlanBackupPlanResourceType where
  toJSON BackupBackupPlanBackupPlanResourceType{..} =
    object $
    catMaybes
    [ (Just . ("BackupPlanName",) . toJSON) _backupBackupPlanBackupPlanResourceTypeBackupPlanName
    , (Just . ("BackupPlanRule",) . toJSON) _backupBackupPlanBackupPlanResourceTypeBackupPlanRule
    ]

-- | Constructor for 'BackupBackupPlanBackupPlanResourceType' containing
-- required fields as arguments.
backupBackupPlanBackupPlanResourceType
  :: Val Text -- ^ 'bbpbprtBackupPlanName'
  -> [BackupBackupPlanBackupRuleResourceType] -- ^ 'bbpbprtBackupPlanRule'
  -> BackupBackupPlanBackupPlanResourceType
backupBackupPlanBackupPlanResourceType backupPlanNamearg backupPlanRulearg =
  BackupBackupPlanBackupPlanResourceType
  { _backupBackupPlanBackupPlanResourceTypeBackupPlanName = backupPlanNamearg
  , _backupBackupPlanBackupPlanResourceTypeBackupPlanRule = backupPlanRulearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupplan-backupplanresourcetype.html#cfn-backup-backupplan-backupplanresourcetype-backupplanname
bbpbprtBackupPlanName :: Lens' BackupBackupPlanBackupPlanResourceType (Val Text)
bbpbprtBackupPlanName = lens _backupBackupPlanBackupPlanResourceTypeBackupPlanName (\s a -> s { _backupBackupPlanBackupPlanResourceTypeBackupPlanName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupplan-backupplanresourcetype.html#cfn-backup-backupplan-backupplanresourcetype-backupplanrule
bbpbprtBackupPlanRule :: Lens' BackupBackupPlanBackupPlanResourceType [BackupBackupPlanBackupRuleResourceType]
bbpbprtBackupPlanRule = lens _backupBackupPlanBackupPlanResourceTypeBackupPlanRule (\s a -> s { _backupBackupPlanBackupPlanResourceTypeBackupPlanRule = a })
