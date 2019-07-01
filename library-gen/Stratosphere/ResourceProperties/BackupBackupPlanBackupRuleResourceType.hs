{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupplan-backupruleresourcetype.html

module Stratosphere.ResourceProperties.BackupBackupPlanBackupRuleResourceType where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.BackupBackupPlanLifecycleResourceType

-- | Full data type definition for BackupBackupPlanBackupRuleResourceType. See
-- 'backupBackupPlanBackupRuleResourceType' for a more convenient
-- constructor.
data BackupBackupPlanBackupRuleResourceType =
  BackupBackupPlanBackupRuleResourceType
  { _backupBackupPlanBackupRuleResourceTypeCompletionWindowMinutes :: Maybe (Val Double)
  , _backupBackupPlanBackupRuleResourceTypeLifecycle :: Maybe BackupBackupPlanLifecycleResourceType
  , _backupBackupPlanBackupRuleResourceTypeRecoveryPointTags :: Maybe Object
  , _backupBackupPlanBackupRuleResourceTypeRuleName :: Val Text
  , _backupBackupPlanBackupRuleResourceTypeScheduleExpression :: Maybe (Val Text)
  , _backupBackupPlanBackupRuleResourceTypeStartWindowMinutes :: Maybe (Val Double)
  , _backupBackupPlanBackupRuleResourceTypeTargetBackupVault :: Val Text
  } deriving (Show, Eq)

instance ToJSON BackupBackupPlanBackupRuleResourceType where
  toJSON BackupBackupPlanBackupRuleResourceType{..} =
    object $
    catMaybes
    [ fmap (("CompletionWindowMinutes",) . toJSON) _backupBackupPlanBackupRuleResourceTypeCompletionWindowMinutes
    , fmap (("Lifecycle",) . toJSON) _backupBackupPlanBackupRuleResourceTypeLifecycle
    , fmap (("RecoveryPointTags",) . toJSON) _backupBackupPlanBackupRuleResourceTypeRecoveryPointTags
    , (Just . ("RuleName",) . toJSON) _backupBackupPlanBackupRuleResourceTypeRuleName
    , fmap (("ScheduleExpression",) . toJSON) _backupBackupPlanBackupRuleResourceTypeScheduleExpression
    , fmap (("StartWindowMinutes",) . toJSON) _backupBackupPlanBackupRuleResourceTypeStartWindowMinutes
    , (Just . ("TargetBackupVault",) . toJSON) _backupBackupPlanBackupRuleResourceTypeTargetBackupVault
    ]

-- | Constructor for 'BackupBackupPlanBackupRuleResourceType' containing
-- required fields as arguments.
backupBackupPlanBackupRuleResourceType
  :: Val Text -- ^ 'bbpbrrtRuleName'
  -> Val Text -- ^ 'bbpbrrtTargetBackupVault'
  -> BackupBackupPlanBackupRuleResourceType
backupBackupPlanBackupRuleResourceType ruleNamearg targetBackupVaultarg =
  BackupBackupPlanBackupRuleResourceType
  { _backupBackupPlanBackupRuleResourceTypeCompletionWindowMinutes = Nothing
  , _backupBackupPlanBackupRuleResourceTypeLifecycle = Nothing
  , _backupBackupPlanBackupRuleResourceTypeRecoveryPointTags = Nothing
  , _backupBackupPlanBackupRuleResourceTypeRuleName = ruleNamearg
  , _backupBackupPlanBackupRuleResourceTypeScheduleExpression = Nothing
  , _backupBackupPlanBackupRuleResourceTypeStartWindowMinutes = Nothing
  , _backupBackupPlanBackupRuleResourceTypeTargetBackupVault = targetBackupVaultarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupplan-backupruleresourcetype.html#cfn-backup-backupplan-backupruleresourcetype-completionwindowminutes
bbpbrrtCompletionWindowMinutes :: Lens' BackupBackupPlanBackupRuleResourceType (Maybe (Val Double))
bbpbrrtCompletionWindowMinutes = lens _backupBackupPlanBackupRuleResourceTypeCompletionWindowMinutes (\s a -> s { _backupBackupPlanBackupRuleResourceTypeCompletionWindowMinutes = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupplan-backupruleresourcetype.html#cfn-backup-backupplan-backupruleresourcetype-lifecycle
bbpbrrtLifecycle :: Lens' BackupBackupPlanBackupRuleResourceType (Maybe BackupBackupPlanLifecycleResourceType)
bbpbrrtLifecycle = lens _backupBackupPlanBackupRuleResourceTypeLifecycle (\s a -> s { _backupBackupPlanBackupRuleResourceTypeLifecycle = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupplan-backupruleresourcetype.html#cfn-backup-backupplan-backupruleresourcetype-recoverypointtags
bbpbrrtRecoveryPointTags :: Lens' BackupBackupPlanBackupRuleResourceType (Maybe Object)
bbpbrrtRecoveryPointTags = lens _backupBackupPlanBackupRuleResourceTypeRecoveryPointTags (\s a -> s { _backupBackupPlanBackupRuleResourceTypeRecoveryPointTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupplan-backupruleresourcetype.html#cfn-backup-backupplan-backupruleresourcetype-rulename
bbpbrrtRuleName :: Lens' BackupBackupPlanBackupRuleResourceType (Val Text)
bbpbrrtRuleName = lens _backupBackupPlanBackupRuleResourceTypeRuleName (\s a -> s { _backupBackupPlanBackupRuleResourceTypeRuleName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupplan-backupruleresourcetype.html#cfn-backup-backupplan-backupruleresourcetype-scheduleexpression
bbpbrrtScheduleExpression :: Lens' BackupBackupPlanBackupRuleResourceType (Maybe (Val Text))
bbpbrrtScheduleExpression = lens _backupBackupPlanBackupRuleResourceTypeScheduleExpression (\s a -> s { _backupBackupPlanBackupRuleResourceTypeScheduleExpression = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupplan-backupruleresourcetype.html#cfn-backup-backupplan-backupruleresourcetype-startwindowminutes
bbpbrrtStartWindowMinutes :: Lens' BackupBackupPlanBackupRuleResourceType (Maybe (Val Double))
bbpbrrtStartWindowMinutes = lens _backupBackupPlanBackupRuleResourceTypeStartWindowMinutes (\s a -> s { _backupBackupPlanBackupRuleResourceTypeStartWindowMinutes = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupplan-backupruleresourcetype.html#cfn-backup-backupplan-backupruleresourcetype-targetbackupvault
bbpbrrtTargetBackupVault :: Lens' BackupBackupPlanBackupRuleResourceType (Val Text)
bbpbrrtTargetBackupVault = lens _backupBackupPlanBackupRuleResourceTypeTargetBackupVault (\s a -> s { _backupBackupPlanBackupRuleResourceTypeTargetBackupVault = a })
