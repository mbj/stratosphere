{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-efs-filesystem.html

module Stratosphere.Resources.EFSFileSystem where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.EFSFileSystemBackupPolicy
import Stratosphere.ResourceProperties.EFSFileSystemElasticFileSystemTag
import Stratosphere.ResourceProperties.EFSFileSystemLifecyclePolicy

-- | Full data type definition for EFSFileSystem. See 'efsFileSystem' for a
-- more convenient constructor.
data EFSFileSystem =
  EFSFileSystem
  { _eFSFileSystemBackupPolicy :: Maybe EFSFileSystemBackupPolicy
  , _eFSFileSystemEncrypted :: Maybe (Val Bool)
  , _eFSFileSystemFileSystemPolicy :: Maybe Object
  , _eFSFileSystemFileSystemTags :: Maybe [EFSFileSystemElasticFileSystemTag]
  , _eFSFileSystemKmsKeyId :: Maybe (Val Text)
  , _eFSFileSystemLifecyclePolicies :: Maybe [EFSFileSystemLifecyclePolicy]
  , _eFSFileSystemPerformanceMode :: Maybe (Val Text)
  , _eFSFileSystemProvisionedThroughputInMibps :: Maybe (Val Double)
  , _eFSFileSystemThroughputMode :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToResourceProperties EFSFileSystem where
  toResourceProperties EFSFileSystem{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::EFS::FileSystem"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("BackupPolicy",) . toJSON) _eFSFileSystemBackupPolicy
        , fmap (("Encrypted",) . toJSON) _eFSFileSystemEncrypted
        , fmap (("FileSystemPolicy",) . toJSON) _eFSFileSystemFileSystemPolicy
        , fmap (("FileSystemTags",) . toJSON) _eFSFileSystemFileSystemTags
        , fmap (("KmsKeyId",) . toJSON) _eFSFileSystemKmsKeyId
        , fmap (("LifecyclePolicies",) . toJSON) _eFSFileSystemLifecyclePolicies
        , fmap (("PerformanceMode",) . toJSON) _eFSFileSystemPerformanceMode
        , fmap (("ProvisionedThroughputInMibps",) . toJSON) _eFSFileSystemProvisionedThroughputInMibps
        , fmap (("ThroughputMode",) . toJSON) _eFSFileSystemThroughputMode
        ]
    }

-- | Constructor for 'EFSFileSystem' containing required fields as arguments.
efsFileSystem
  :: EFSFileSystem
efsFileSystem  =
  EFSFileSystem
  { _eFSFileSystemBackupPolicy = Nothing
  , _eFSFileSystemEncrypted = Nothing
  , _eFSFileSystemFileSystemPolicy = Nothing
  , _eFSFileSystemFileSystemTags = Nothing
  , _eFSFileSystemKmsKeyId = Nothing
  , _eFSFileSystemLifecyclePolicies = Nothing
  , _eFSFileSystemPerformanceMode = Nothing
  , _eFSFileSystemProvisionedThroughputInMibps = Nothing
  , _eFSFileSystemThroughputMode = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-efs-filesystem.html#cfn-efs-filesystem-backuppolicy
efsfsBackupPolicy :: Lens' EFSFileSystem (Maybe EFSFileSystemBackupPolicy)
efsfsBackupPolicy = lens _eFSFileSystemBackupPolicy (\s a -> s { _eFSFileSystemBackupPolicy = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-efs-filesystem.html#cfn-efs-filesystem-encrypted
efsfsEncrypted :: Lens' EFSFileSystem (Maybe (Val Bool))
efsfsEncrypted = lens _eFSFileSystemEncrypted (\s a -> s { _eFSFileSystemEncrypted = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-efs-filesystem.html#cfn-efs-filesystem-filesystempolicy
efsfsFileSystemPolicy :: Lens' EFSFileSystem (Maybe Object)
efsfsFileSystemPolicy = lens _eFSFileSystemFileSystemPolicy (\s a -> s { _eFSFileSystemFileSystemPolicy = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-efs-filesystem.html#cfn-efs-filesystem-filesystemtags
efsfsFileSystemTags :: Lens' EFSFileSystem (Maybe [EFSFileSystemElasticFileSystemTag])
efsfsFileSystemTags = lens _eFSFileSystemFileSystemTags (\s a -> s { _eFSFileSystemFileSystemTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-efs-filesystem.html#cfn-efs-filesystem-kmskeyid
efsfsKmsKeyId :: Lens' EFSFileSystem (Maybe (Val Text))
efsfsKmsKeyId = lens _eFSFileSystemKmsKeyId (\s a -> s { _eFSFileSystemKmsKeyId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-efs-filesystem.html#cfn-efs-filesystem-lifecyclepolicies
efsfsLifecyclePolicies :: Lens' EFSFileSystem (Maybe [EFSFileSystemLifecyclePolicy])
efsfsLifecyclePolicies = lens _eFSFileSystemLifecyclePolicies (\s a -> s { _eFSFileSystemLifecyclePolicies = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-efs-filesystem.html#cfn-efs-filesystem-performancemode
efsfsPerformanceMode :: Lens' EFSFileSystem (Maybe (Val Text))
efsfsPerformanceMode = lens _eFSFileSystemPerformanceMode (\s a -> s { _eFSFileSystemPerformanceMode = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-efs-filesystem.html#cfn-efs-filesystem-provisionedthroughputinmibps
efsfsProvisionedThroughputInMibps :: Lens' EFSFileSystem (Maybe (Val Double))
efsfsProvisionedThroughputInMibps = lens _eFSFileSystemProvisionedThroughputInMibps (\s a -> s { _eFSFileSystemProvisionedThroughputInMibps = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-efs-filesystem.html#cfn-efs-filesystem-throughputmode
efsfsThroughputMode :: Lens' EFSFileSystem (Maybe (Val Text))
efsfsThroughputMode = lens _eFSFileSystemThroughputMode (\s a -> s { _eFSFileSystemThroughputMode = a })
