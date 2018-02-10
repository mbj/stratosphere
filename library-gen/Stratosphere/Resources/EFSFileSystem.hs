{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-efs-filesystem.html

module Stratosphere.Resources.EFSFileSystem where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.EFSFileSystemElasticFileSystemTag

-- | Full data type definition for EFSFileSystem. See 'efsFileSystem' for a
-- more convenient constructor.
data EFSFileSystem =
  EFSFileSystem
  { _eFSFileSystemEncrypted :: Maybe (Val Bool)
  , _eFSFileSystemFileSystemTags :: Maybe [EFSFileSystemElasticFileSystemTag]
  , _eFSFileSystemKmsKeyId :: Maybe (Val Text)
  , _eFSFileSystemPerformanceMode :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON EFSFileSystem where
  toJSON EFSFileSystem{..} =
    object $
    catMaybes
    [ fmap (("Encrypted",) . toJSON . fmap Bool') _eFSFileSystemEncrypted
    , fmap (("FileSystemTags",) . toJSON) _eFSFileSystemFileSystemTags
    , fmap (("KmsKeyId",) . toJSON) _eFSFileSystemKmsKeyId
    , fmap (("PerformanceMode",) . toJSON) _eFSFileSystemPerformanceMode
    ]

instance FromJSON EFSFileSystem where
  parseJSON (Object obj) =
    EFSFileSystem <$>
      fmap (fmap (fmap unBool')) (obj .:? "Encrypted") <*>
      (obj .:? "FileSystemTags") <*>
      (obj .:? "KmsKeyId") <*>
      (obj .:? "PerformanceMode")
  parseJSON _ = mempty

-- | Constructor for 'EFSFileSystem' containing required fields as arguments.
efsFileSystem
  :: EFSFileSystem
efsFileSystem  =
  EFSFileSystem
  { _eFSFileSystemEncrypted = Nothing
  , _eFSFileSystemFileSystemTags = Nothing
  , _eFSFileSystemKmsKeyId = Nothing
  , _eFSFileSystemPerformanceMode = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-efs-filesystem.html#cfn-efs-filesystem-encrypted
efsfsEncrypted :: Lens' EFSFileSystem (Maybe (Val Bool))
efsfsEncrypted = lens _eFSFileSystemEncrypted (\s a -> s { _eFSFileSystemEncrypted = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-efs-filesystem.html#cfn-efs-filesystem-filesystemtags
efsfsFileSystemTags :: Lens' EFSFileSystem (Maybe [EFSFileSystemElasticFileSystemTag])
efsfsFileSystemTags = lens _eFSFileSystemFileSystemTags (\s a -> s { _eFSFileSystemFileSystemTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-efs-filesystem.html#cfn-efs-filesystem-kmskeyid
efsfsKmsKeyId :: Lens' EFSFileSystem (Maybe (Val Text))
efsfsKmsKeyId = lens _eFSFileSystemKmsKeyId (\s a -> s { _eFSFileSystemKmsKeyId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-efs-filesystem.html#cfn-efs-filesystem-performancemode
efsfsPerformanceMode :: Lens' EFSFileSystem (Maybe (Val Text))
efsfsPerformanceMode = lens _eFSFileSystemPerformanceMode (\s a -> s { _eFSFileSystemPerformanceMode = a })
