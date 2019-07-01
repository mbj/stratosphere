{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupselection-backupselectionresourcetype.html

module Stratosphere.ResourceProperties.BackupBackupSelectionBackupSelectionResourceType where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.BackupBackupSelectionConditionResourceType

-- | Full data type definition for
-- BackupBackupSelectionBackupSelectionResourceType. See
-- 'backupBackupSelectionBackupSelectionResourceType' for a more convenient
-- constructor.
data BackupBackupSelectionBackupSelectionResourceType =
  BackupBackupSelectionBackupSelectionResourceType
  { _backupBackupSelectionBackupSelectionResourceTypeIamRoleArn :: Val Text
  , _backupBackupSelectionBackupSelectionResourceTypeListOfTags :: Maybe [BackupBackupSelectionConditionResourceType]
  , _backupBackupSelectionBackupSelectionResourceTypeResources :: Maybe (ValList Text)
  , _backupBackupSelectionBackupSelectionResourceTypeSelectionName :: Val Text
  } deriving (Show, Eq)

instance ToJSON BackupBackupSelectionBackupSelectionResourceType where
  toJSON BackupBackupSelectionBackupSelectionResourceType{..} =
    object $
    catMaybes
    [ (Just . ("IamRoleArn",) . toJSON) _backupBackupSelectionBackupSelectionResourceTypeIamRoleArn
    , fmap (("ListOfTags",) . toJSON) _backupBackupSelectionBackupSelectionResourceTypeListOfTags
    , fmap (("Resources",) . toJSON) _backupBackupSelectionBackupSelectionResourceTypeResources
    , (Just . ("SelectionName",) . toJSON) _backupBackupSelectionBackupSelectionResourceTypeSelectionName
    ]

-- | Constructor for 'BackupBackupSelectionBackupSelectionResourceType'
-- containing required fields as arguments.
backupBackupSelectionBackupSelectionResourceType
  :: Val Text -- ^ 'bbsbsrtIamRoleArn'
  -> Val Text -- ^ 'bbsbsrtSelectionName'
  -> BackupBackupSelectionBackupSelectionResourceType
backupBackupSelectionBackupSelectionResourceType iamRoleArnarg selectionNamearg =
  BackupBackupSelectionBackupSelectionResourceType
  { _backupBackupSelectionBackupSelectionResourceTypeIamRoleArn = iamRoleArnarg
  , _backupBackupSelectionBackupSelectionResourceTypeListOfTags = Nothing
  , _backupBackupSelectionBackupSelectionResourceTypeResources = Nothing
  , _backupBackupSelectionBackupSelectionResourceTypeSelectionName = selectionNamearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupselection-backupselectionresourcetype.html#cfn-backup-backupselection-backupselectionresourcetype-iamrolearn
bbsbsrtIamRoleArn :: Lens' BackupBackupSelectionBackupSelectionResourceType (Val Text)
bbsbsrtIamRoleArn = lens _backupBackupSelectionBackupSelectionResourceTypeIamRoleArn (\s a -> s { _backupBackupSelectionBackupSelectionResourceTypeIamRoleArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupselection-backupselectionresourcetype.html#cfn-backup-backupselection-backupselectionresourcetype-listoftags
bbsbsrtListOfTags :: Lens' BackupBackupSelectionBackupSelectionResourceType (Maybe [BackupBackupSelectionConditionResourceType])
bbsbsrtListOfTags = lens _backupBackupSelectionBackupSelectionResourceTypeListOfTags (\s a -> s { _backupBackupSelectionBackupSelectionResourceTypeListOfTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupselection-backupselectionresourcetype.html#cfn-backup-backupselection-backupselectionresourcetype-resources
bbsbsrtResources :: Lens' BackupBackupSelectionBackupSelectionResourceType (Maybe (ValList Text))
bbsbsrtResources = lens _backupBackupSelectionBackupSelectionResourceTypeResources (\s a -> s { _backupBackupSelectionBackupSelectionResourceTypeResources = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupselection-backupselectionresourcetype.html#cfn-backup-backupselection-backupselectionresourcetype-selectionname
bbsbsrtSelectionName :: Lens' BackupBackupSelectionBackupSelectionResourceType (Val Text)
bbsbsrtSelectionName = lens _backupBackupSelectionBackupSelectionResourceTypeSelectionName (\s a -> s { _backupBackupSelectionBackupSelectionResourceTypeSelectionName = a })
