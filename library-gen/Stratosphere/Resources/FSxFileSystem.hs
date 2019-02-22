{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-fsx-filesystem.html

module Stratosphere.Resources.FSxFileSystem where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.FSxFileSystemLustreConfiguration
import Stratosphere.ResourceProperties.FSxFileSystemTagEntry
import Stratosphere.ResourceProperties.FSxFileSystemWindowsConfiguration

-- | Full data type definition for FSxFileSystem. See 'fSxFileSystem' for a
-- more convenient constructor.
data FSxFileSystem =
  FSxFileSystem
  { _fSxFileSystemBackupId :: Maybe (Val Text)
  , _fSxFileSystemFileSystemType :: Maybe (Val Text)
  , _fSxFileSystemKmsKeyId :: Maybe (Val Text)
  , _fSxFileSystemLustreConfiguration :: Maybe FSxFileSystemLustreConfiguration
  , _fSxFileSystemSecurityGroupIds :: Maybe (ValList Text)
  , _fSxFileSystemStorageCapacity :: Maybe (Val Integer)
  , _fSxFileSystemSubnetIds :: Maybe (ValList Text)
  , _fSxFileSystemTags :: Maybe [FSxFileSystemTagEntry]
  , _fSxFileSystemWindowsConfiguration :: Maybe FSxFileSystemWindowsConfiguration
  } deriving (Show, Eq)

instance ToJSON FSxFileSystem where
  toJSON FSxFileSystem{..} =
    object $
    catMaybes
    [ fmap (("BackupId",) . toJSON) _fSxFileSystemBackupId
    , fmap (("FileSystemType",) . toJSON) _fSxFileSystemFileSystemType
    , fmap (("KmsKeyId",) . toJSON) _fSxFileSystemKmsKeyId
    , fmap (("LustreConfiguration",) . toJSON) _fSxFileSystemLustreConfiguration
    , fmap (("SecurityGroupIds",) . toJSON) _fSxFileSystemSecurityGroupIds
    , fmap (("StorageCapacity",) . toJSON . fmap Integer') _fSxFileSystemStorageCapacity
    , fmap (("SubnetIds",) . toJSON) _fSxFileSystemSubnetIds
    , fmap (("Tags",) . toJSON) _fSxFileSystemTags
    , fmap (("WindowsConfiguration",) . toJSON) _fSxFileSystemWindowsConfiguration
    ]

instance FromJSON FSxFileSystem where
  parseJSON (Object obj) =
    FSxFileSystem <$>
      (obj .:? "BackupId") <*>
      (obj .:? "FileSystemType") <*>
      (obj .:? "KmsKeyId") <*>
      (obj .:? "LustreConfiguration") <*>
      (obj .:? "SecurityGroupIds") <*>
      fmap (fmap (fmap unInteger')) (obj .:? "StorageCapacity") <*>
      (obj .:? "SubnetIds") <*>
      (obj .:? "Tags") <*>
      (obj .:? "WindowsConfiguration")
  parseJSON _ = mempty

-- | Constructor for 'FSxFileSystem' containing required fields as arguments.
fSxFileSystem
  :: FSxFileSystem
fSxFileSystem  =
  FSxFileSystem
  { _fSxFileSystemBackupId = Nothing
  , _fSxFileSystemFileSystemType = Nothing
  , _fSxFileSystemKmsKeyId = Nothing
  , _fSxFileSystemLustreConfiguration = Nothing
  , _fSxFileSystemSecurityGroupIds = Nothing
  , _fSxFileSystemStorageCapacity = Nothing
  , _fSxFileSystemSubnetIds = Nothing
  , _fSxFileSystemTags = Nothing
  , _fSxFileSystemWindowsConfiguration = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-fsx-filesystem.html#cfn-fsx-filesystem-backupid
fsfsBackupId :: Lens' FSxFileSystem (Maybe (Val Text))
fsfsBackupId = lens _fSxFileSystemBackupId (\s a -> s { _fSxFileSystemBackupId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-fsx-filesystem.html#cfn-fsx-filesystem-filesystemtype
fsfsFileSystemType :: Lens' FSxFileSystem (Maybe (Val Text))
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

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-fsx-filesystem.html#cfn-fsx-filesystem-subnetids
fsfsSubnetIds :: Lens' FSxFileSystem (Maybe (ValList Text))
fsfsSubnetIds = lens _fSxFileSystemSubnetIds (\s a -> s { _fSxFileSystemSubnetIds = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-fsx-filesystem.html#cfn-fsx-filesystem-tags
fsfsTags :: Lens' FSxFileSystem (Maybe [FSxFileSystemTagEntry])
fsfsTags = lens _fSxFileSystemTags (\s a -> s { _fSxFileSystemTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-fsx-filesystem.html#cfn-fsx-filesystem-windowsconfiguration
fsfsWindowsConfiguration :: Lens' FSxFileSystem (Maybe FSxFileSystemWindowsConfiguration)
fsfsWindowsConfiguration = lens _fSxFileSystemWindowsConfiguration (\s a -> s { _fSxFileSystemWindowsConfiguration = a })
