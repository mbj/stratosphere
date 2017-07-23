{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-workspaces-workspace.html

module Stratosphere.Resources.WorkSpacesWorkspace where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for WorkSpacesWorkspace. See
-- 'workSpacesWorkspace' for a more convenient constructor.
data WorkSpacesWorkspace =
  WorkSpacesWorkspace
  { _workSpacesWorkspaceBundleId :: Val Text
  , _workSpacesWorkspaceDirectoryId :: Val Text
  , _workSpacesWorkspaceRootVolumeEncryptionEnabled :: Maybe (Val Bool)
  , _workSpacesWorkspaceUserName :: Val Text
  , _workSpacesWorkspaceUserVolumeEncryptionEnabled :: Maybe (Val Bool)
  , _workSpacesWorkspaceVolumeEncryptionKey :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON WorkSpacesWorkspace where
  toJSON WorkSpacesWorkspace{..} =
    object $
    catMaybes
    [ (Just . ("BundleId",) . toJSON) _workSpacesWorkspaceBundleId
    , (Just . ("DirectoryId",) . toJSON) _workSpacesWorkspaceDirectoryId
    , fmap (("RootVolumeEncryptionEnabled",) . toJSON . fmap Bool') _workSpacesWorkspaceRootVolumeEncryptionEnabled
    , (Just . ("UserName",) . toJSON) _workSpacesWorkspaceUserName
    , fmap (("UserVolumeEncryptionEnabled",) . toJSON . fmap Bool') _workSpacesWorkspaceUserVolumeEncryptionEnabled
    , fmap (("VolumeEncryptionKey",) . toJSON) _workSpacesWorkspaceVolumeEncryptionKey
    ]

instance FromJSON WorkSpacesWorkspace where
  parseJSON (Object obj) =
    WorkSpacesWorkspace <$>
      (obj .: "BundleId") <*>
      (obj .: "DirectoryId") <*>
      fmap (fmap (fmap unBool')) (obj .:? "RootVolumeEncryptionEnabled") <*>
      (obj .: "UserName") <*>
      fmap (fmap (fmap unBool')) (obj .:? "UserVolumeEncryptionEnabled") <*>
      (obj .:? "VolumeEncryptionKey")
  parseJSON _ = mempty

-- | Constructor for 'WorkSpacesWorkspace' containing required fields as
-- arguments.
workSpacesWorkspace
  :: Val Text -- ^ 'wswBundleId'
  -> Val Text -- ^ 'wswDirectoryId'
  -> Val Text -- ^ 'wswUserName'
  -> WorkSpacesWorkspace
workSpacesWorkspace bundleIdarg directoryIdarg userNamearg =
  WorkSpacesWorkspace
  { _workSpacesWorkspaceBundleId = bundleIdarg
  , _workSpacesWorkspaceDirectoryId = directoryIdarg
  , _workSpacesWorkspaceRootVolumeEncryptionEnabled = Nothing
  , _workSpacesWorkspaceUserName = userNamearg
  , _workSpacesWorkspaceUserVolumeEncryptionEnabled = Nothing
  , _workSpacesWorkspaceVolumeEncryptionKey = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-workspaces-workspace.html#cfn-workspaces-workspace-bundleid
wswBundleId :: Lens' WorkSpacesWorkspace (Val Text)
wswBundleId = lens _workSpacesWorkspaceBundleId (\s a -> s { _workSpacesWorkspaceBundleId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-workspaces-workspace.html#cfn-workspaces-workspace-directoryid
wswDirectoryId :: Lens' WorkSpacesWorkspace (Val Text)
wswDirectoryId = lens _workSpacesWorkspaceDirectoryId (\s a -> s { _workSpacesWorkspaceDirectoryId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-workspaces-workspace.html#cfn-workspaces-workspace-rootvolumeencryptionenabled
wswRootVolumeEncryptionEnabled :: Lens' WorkSpacesWorkspace (Maybe (Val Bool))
wswRootVolumeEncryptionEnabled = lens _workSpacesWorkspaceRootVolumeEncryptionEnabled (\s a -> s { _workSpacesWorkspaceRootVolumeEncryptionEnabled = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-workspaces-workspace.html#cfn-workspaces-workspace-username
wswUserName :: Lens' WorkSpacesWorkspace (Val Text)
wswUserName = lens _workSpacesWorkspaceUserName (\s a -> s { _workSpacesWorkspaceUserName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-workspaces-workspace.html#cfn-workspaces-workspace-uservolumeencryptionenabled
wswUserVolumeEncryptionEnabled :: Lens' WorkSpacesWorkspace (Maybe (Val Bool))
wswUserVolumeEncryptionEnabled = lens _workSpacesWorkspaceUserVolumeEncryptionEnabled (\s a -> s { _workSpacesWorkspaceUserVolumeEncryptionEnabled = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-workspaces-workspace.html#cfn-workspaces-workspace-volumeencryptionkey
wswVolumeEncryptionKey :: Lens' WorkSpacesWorkspace (Maybe (Val Text))
wswVolumeEncryptionKey = lens _workSpacesWorkspaceVolumeEncryptionKey (\s a -> s { _workSpacesWorkspaceVolumeEncryptionKey = a })
