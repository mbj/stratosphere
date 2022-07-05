{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-fsx-filesystem.html

module Stratosphere.Resources.FSxFileSystem where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.FSxFileSystemLustreConfiguration
import Stratosphere.ResourceProperties.Tag
import Stratosphere.ResourceProperties.FSxFileSystemWindowsConfiguration

-- | Full data type definition for FSxFileSystem. See 'fSxFileSystem' for a
-- more convenient constructor.
data FSxFileSystem =
  FSxFileSystem
  { _fSxFileSystemBackupId :: Maybe (Val Text)
  , _fSxFileSystemFileSystemType :: Val Text
  , _fSxFileSystemKmsKeyId :: Maybe (Val Text)
  , _fSxFileSystemLustreConfiguration :: Maybe FSxFileSystemLustreConfiguration
  , _fSxFileSystemSecurityGroupIds :: Maybe (ValList Text)
  , _fSxFileSystemStorageCapacity :: Maybe (Val Integer)
  , _fSxFileSystemStorageType :: Maybe (Val Text)
  , _fSxFileSystemSubnetIds :: ValList Text
  , _fSxFileSystemTags :: Maybe [Tag]
  , _fSxFileSystemWindowsConfiguration :: Maybe FSxFileSystemWindowsConfiguration
  } deriving (Show, Eq)

instance ToResourceProperties FSxFileSystem where
  toResourceProperties FSxFileSystem{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::FSx::FileSystem"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("BackupId",) . toJSON) _fSxFileSystemBackupId
        , (Just . ("FileSystemType",) . toJSON) _fSxFileSystemFileSystemType
        , fmap (("KmsKeyId",) . toJSON) _fSxFileSystemKmsKeyId
        , fmap (("LustreConfiguration",) . toJSON) _fSxFileSystemLustreConfiguration
        , fmap (("SecurityGroupIds",) . toJSON) _fSxFileSystemSecurityGroupIds
        , fmap (("StorageCapacity",) . toJSON) _fSxFileSystemStorageCapacity
        , fmap (("StorageType",) . toJSON) _fSxFileSystemStorageType
        , (Just . ("SubnetIds",) . toJSON) _fSxFileSystemSubnetIds
        , fmap (("Tags",) . toJSON) _fSxFileSystemTags
        , fmap (("WindowsConfiguration",) . toJSON) _fSxFileSystemWindowsConfiguration
        ]
    }

-- | Constructor for 'FSxFileSystem' containing required fields as arguments.
fSxFileSystem
  :: Val Text -- ^ 'fsfsFileSystemType'
  -> ValList Text -- ^ 'fsfsSubnetIds'
  -> FSxFileSystem
fSxFileSystem fileSystemTypearg subnetIdsarg =
  FSxFileSystem
  { _fSxFileSystemBackupId = Nothing
  , _fSxFileSystemFileSystemType = fileSystemTypearg
  , _fSxFileSystemKmsKeyId = Nothing
  , _fSxFileSystemLustreConfiguration = Nothing
  , _fSxFileSystemSecurityGroupIds = Nothing
  , _fSxFileSystemStorageCapacity = Nothing
  , _fSxFileSystemStorageType = Nothing
  , _fSxFileSystemSubnetIds = subnetIdsarg
  , _fSxFileSystemTags = Nothing
  , _fSxFileSystemWindowsConfiguration = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-fsx-filesystem.html#cfn-fsx-filesystem-backupid
fsfsBackupId :: Lens' FSxFileSystem (Maybe (Val Text))
fsfsBackupId = lens _fSxFileSystemBackupId (\s a -> s { _fSxFileSystemBackupId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-fsx-filesystem.html#cfn-fsx-filesystem-filesystemtype
fsfsFileSystemType :: Lens' FSxFileSystem (Val Text)
fsfsFileSystemType = lens _fSxFileSystemFileSystemType (\s a -> s { _fSxFileSystemFileSystemType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-fsx-filesystem.html#cfn-fsx-filesystem-kmskeyid
fsfsKmsKeyId :: Lens' FSxFileSystem (Maybe (Val Text))
fsfsKmsKeyId = lens _fSxFileSystemKmsKeyId (\s a -> s { _fSxFileSystemKmsKeyId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-fsx-filesystem.html#cfn-fsx-filesystem-lustreconfiguration
fsfsLustreConfiguration :: Lens' FSxFileSystem (Maybe FSxFileSystemLustreConfiguration)
fsfsLustreConfiguration = lens _fSxFileSystemLustreConfiguration (\s a -> s { _fSxFileSystemLustreConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-fsx-filesystem.html#cfn-fsx-filesystem-securitygroupids
fsfsSecurityGroupIds :: Lens' FSxFileSystem (Maybe (ValList Text))
fsfsSecurityGroupIds = lens _fSxFileSystemSecurityGroupIds (\s a -> s { _fSxFileSystemSecurityGroupIds = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-fsx-filesystem.html#cfn-fsx-filesystem-storagecapacity
fsfsStorageCapacity :: Lens' FSxFileSystem (Maybe (Val Integer))
fsfsStorageCapacity = lens _fSxFileSystemStorageCapacity (\s a -> s { _fSxFileSystemStorageCapacity = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-fsx-filesystem.html#cfn-fsx-filesystem-storagetype
fsfsStorageType :: Lens' FSxFileSystem (Maybe (Val Text))
fsfsStorageType = lens _fSxFileSystemStorageType (\s a -> s { _fSxFileSystemStorageType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-fsx-filesystem.html#cfn-fsx-filesystem-subnetids
fsfsSubnetIds :: Lens' FSxFileSystem (ValList Text)
fsfsSubnetIds = lens _fSxFileSystemSubnetIds (\s a -> s { _fSxFileSystemSubnetIds = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-fsx-filesystem.html#cfn-fsx-filesystem-tags
fsfsTags :: Lens' FSxFileSystem (Maybe [Tag])
fsfsTags = lens _fSxFileSystemTags (\s a -> s { _fSxFileSystemTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-fsx-filesystem.html#cfn-fsx-filesystem-windowsconfiguration
fsfsWindowsConfiguration :: Lens' FSxFileSystem (Maybe FSxFileSystemWindowsConfiguration)
fsfsWindowsConfiguration = lens _fSxFileSystemWindowsConfiguration (\s a -> s { _fSxFileSystemWindowsConfiguration = a })
