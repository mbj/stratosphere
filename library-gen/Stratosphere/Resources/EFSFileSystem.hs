{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-efs-filesystem.html

module Stratosphere.Resources.EFSFileSystem where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.ResourceProperties.EFSFileSystemElasticFileSystemTag

-- | Full data type definition for EFSFileSystem. See 'efsFileSystem' for a
-- | more convenient constructor.
data EFSFileSystem =
  EFSFileSystem
  { _eFSFileSystemFileSystemTags :: Maybe [EFSFileSystemElasticFileSystemTag]
  , _eFSFileSystemPerformanceMode :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON EFSFileSystem where
  toJSON EFSFileSystem{..} =
    object
    [ "FileSystemTags" .= _eFSFileSystemFileSystemTags
    , "PerformanceMode" .= _eFSFileSystemPerformanceMode
    ]

instance FromJSON EFSFileSystem where
  parseJSON (Object obj) =
    EFSFileSystem <$>
      obj .: "FileSystemTags" <*>
      obj .: "PerformanceMode"
  parseJSON _ = mempty

-- | Constructor for 'EFSFileSystem' containing required fields as arguments.
efsFileSystem
  :: EFSFileSystem
efsFileSystem  =
  EFSFileSystem
  { _eFSFileSystemFileSystemTags = Nothing
  , _eFSFileSystemPerformanceMode = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-efs-filesystem.html#cfn-efs-filesystem-filesystemtags
efsfsFileSystemTags :: Lens' EFSFileSystem (Maybe [EFSFileSystemElasticFileSystemTag])
efsfsFileSystemTags = lens _eFSFileSystemFileSystemTags (\s a -> s { _eFSFileSystemFileSystemTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-efs-filesystem.html#cfn-efs-filesystem-performancemode
efsfsPerformanceMode :: Lens' EFSFileSystem (Maybe (Val Text))
efsfsPerformanceMode = lens _eFSFileSystemPerformanceMode (\s a -> s { _eFSFileSystemPerformanceMode = a })
