{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupselection-conditionresourcetype.html

module Stratosphere.ResourceProperties.BackupBackupSelectionConditionResourceType where

import Stratosphere.ResourceImports


-- | Full data type definition for BackupBackupSelectionConditionResourceType.
-- See 'backupBackupSelectionConditionResourceType' for a more convenient
-- constructor.
data BackupBackupSelectionConditionResourceType =
  BackupBackupSelectionConditionResourceType
  { _backupBackupSelectionConditionResourceTypeConditionKey :: Val Text
  , _backupBackupSelectionConditionResourceTypeConditionType :: Val Text
  , _backupBackupSelectionConditionResourceTypeConditionValue :: Val Text
  } deriving (Show, Eq)

instance ToJSON BackupBackupSelectionConditionResourceType where
  toJSON BackupBackupSelectionConditionResourceType{..} =
    object $
    catMaybes
    [ (Just . ("ConditionKey",) . toJSON) _backupBackupSelectionConditionResourceTypeConditionKey
    , (Just . ("ConditionType",) . toJSON) _backupBackupSelectionConditionResourceTypeConditionType
    , (Just . ("ConditionValue",) . toJSON) _backupBackupSelectionConditionResourceTypeConditionValue
    ]

-- | Constructor for 'BackupBackupSelectionConditionResourceType' containing
-- required fields as arguments.
backupBackupSelectionConditionResourceType
  :: Val Text -- ^ 'bbscrtConditionKey'
  -> Val Text -- ^ 'bbscrtConditionType'
  -> Val Text -- ^ 'bbscrtConditionValue'
  -> BackupBackupSelectionConditionResourceType
backupBackupSelectionConditionResourceType conditionKeyarg conditionTypearg conditionValuearg =
  BackupBackupSelectionConditionResourceType
  { _backupBackupSelectionConditionResourceTypeConditionKey = conditionKeyarg
  , _backupBackupSelectionConditionResourceTypeConditionType = conditionTypearg
  , _backupBackupSelectionConditionResourceTypeConditionValue = conditionValuearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupselection-conditionresourcetype.html#cfn-backup-backupselection-conditionresourcetype-conditionkey
bbscrtConditionKey :: Lens' BackupBackupSelectionConditionResourceType (Val Text)
bbscrtConditionKey = lens _backupBackupSelectionConditionResourceTypeConditionKey (\s a -> s { _backupBackupSelectionConditionResourceTypeConditionKey = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupselection-conditionresourcetype.html#cfn-backup-backupselection-conditionresourcetype-conditiontype
bbscrtConditionType :: Lens' BackupBackupSelectionConditionResourceType (Val Text)
bbscrtConditionType = lens _backupBackupSelectionConditionResourceTypeConditionType (\s a -> s { _backupBackupSelectionConditionResourceTypeConditionType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupselection-conditionresourcetype.html#cfn-backup-backupselection-conditionresourcetype-conditionvalue
bbscrtConditionValue :: Lens' BackupBackupSelectionConditionResourceType (Val Text)
bbscrtConditionValue = lens _backupBackupSelectionConditionResourceTypeConditionValue (\s a -> s { _backupBackupSelectionConditionResourceTypeConditionValue = a })
