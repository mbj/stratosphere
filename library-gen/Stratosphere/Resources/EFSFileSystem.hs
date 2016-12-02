{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-efs-filesystem.html

module Stratosphere.Resources.EFSFileSystem where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.EFSFileSystemElasticFileSystemTag

-- | Full data type definition for EFSFileSystem. See 'efsFileSystem' for a
-- | more convenient constructor.
data EFSFileSystem =
  EFSFileSystem
  { _eFSFileSystemFileSystemTags :: Maybe [EFSFileSystemElasticFileSystemTag]
  , _eFSFileSystemPerformanceMode :: Maybe (Val Text)
  } deriving (Show, Generic)

instance ToJSON EFSFileSystem where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 14, omitNothingFields = True }

instance FromJSON EFSFileSystem where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 14, omitNothingFields = True }

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
