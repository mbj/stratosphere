{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-backup-backupplan.html

module Stratosphere.Resources.BackupBackupPlan where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.BackupBackupPlanBackupPlanResourceType

-- | Full data type definition for BackupBackupPlan. See 'backupBackupPlan'
-- for a more convenient constructor.
data BackupBackupPlan =
  BackupBackupPlan
  { _backupBackupPlanBackupPlan :: BackupBackupPlanBackupPlanResourceType
  , _backupBackupPlanBackupPlanTags :: Maybe Object
  } deriving (Show, Eq)

instance ToResourceProperties BackupBackupPlan where
  toResourceProperties BackupBackupPlan{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::Backup::BackupPlan"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("BackupPlan",) . toJSON) _backupBackupPlanBackupPlan
        , fmap (("BackupPlanTags",) . toJSON) _backupBackupPlanBackupPlanTags
        ]
    }

-- | Constructor for 'BackupBackupPlan' containing required fields as
-- arguments.
backupBackupPlan
  :: BackupBackupPlanBackupPlanResourceType -- ^ 'bbpBackupPlan'
  -> BackupBackupPlan
backupBackupPlan backupPlanarg =
  BackupBackupPlan
  { _backupBackupPlanBackupPlan = backupPlanarg
  , _backupBackupPlanBackupPlanTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-backup-backupplan.html#cfn-backup-backupplan-backupplan
bbpBackupPlan :: Lens' BackupBackupPlan BackupBackupPlanBackupPlanResourceType
bbpBackupPlan = lens _backupBackupPlanBackupPlan (\s a -> s { _backupBackupPlanBackupPlan = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-backup-backupplan.html#cfn-backup-backupplan-backupplantags
bbpBackupPlanTags :: Lens' BackupBackupPlan (Maybe Object)
bbpBackupPlanTags = lens _backupBackupPlanBackupPlanTags (\s a -> s { _backupBackupPlanBackupPlanTags = a })
