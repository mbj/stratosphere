{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-workspaces-workspace.html

module Stratosphere.Resources.WorkSpacesWorkspace where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.Tag
import Stratosphere.ResourceProperties.WorkSpacesWorkspaceWorkspaceProperties

-- | Full data type definition for WorkSpacesWorkspace. See
-- 'workSpacesWorkspace' for a more convenient constructor.
data WorkSpacesWorkspace =
  WorkSpacesWorkspace
  { _workSpacesWorkspaceBundleId :: Val Text
  , _workSpacesWorkspaceDirectoryId :: Val Text
  , _workSpacesWorkspaceRootVolumeEncryptionEnabled :: Maybe (Val Bool)
  , _workSpacesWorkspaceTags :: Maybe [Tag]
  , _workSpacesWorkspaceUserName :: Val Text
  , _workSpacesWorkspaceUserVolumeEncryptionEnabled :: Maybe (Val Bool)
  , _workSpacesWorkspaceVolumeEncryptionKey :: Maybe (Val Text)
  , _workSpacesWorkspaceWorkspaceProperties :: Maybe WorkSpacesWorkspaceWorkspaceProperties
  } deriving (Show, Eq)

instance ToResourceProperties WorkSpacesWorkspace where
  toResourceProperties WorkSpacesWorkspace{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::WorkSpaces::Workspace"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("BundleId",) . toJSON) _workSpacesWorkspaceBundleId
        , (Just . ("DirectoryId",) . toJSON) _workSpacesWorkspaceDirectoryId
        , fmap (("RootVolumeEncryptionEnabled",) . toJSON) _workSpacesWorkspaceRootVolumeEncryptionEnabled
        , fmap (("Tags",) . toJSON) _workSpacesWorkspaceTags
        , (Just . ("UserName",) . toJSON) _workSpacesWorkspaceUserName
        , fmap (("UserVolumeEncryptionEnabled",) . toJSON) _workSpacesWorkspaceUserVolumeEncryptionEnabled
        , fmap (("VolumeEncryptionKey",) . toJSON) _workSpacesWorkspaceVolumeEncryptionKey
        , fmap (("WorkspaceProperties",) . toJSON) _workSpacesWorkspaceWorkspaceProperties
        ]
    }

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
  , _workSpacesWorkspaceTags = Nothing
  , _workSpacesWorkspaceUserName = userNamearg
  , _workSpacesWorkspaceUserVolumeEncryptionEnabled = Nothing
  , _workSpacesWorkspaceVolumeEncryptionKey = Nothing
  , _workSpacesWorkspaceWorkspaceProperties = Nothing
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

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-workspaces-workspace.html#cfn-workspaces-workspace-tags
wswTags :: Lens' WorkSpacesWorkspace (Maybe [Tag])
wswTags = lens _workSpacesWorkspaceTags (\s a -> s { _workSpacesWorkspaceTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-workspaces-workspace.html#cfn-workspaces-workspace-username
wswUserName :: Lens' WorkSpacesWorkspace (Val Text)
wswUserName = lens _workSpacesWorkspaceUserName (\s a -> s { _workSpacesWorkspaceUserName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-workspaces-workspace.html#cfn-workspaces-workspace-uservolumeencryptionenabled
wswUserVolumeEncryptionEnabled :: Lens' WorkSpacesWorkspace (Maybe (Val Bool))
wswUserVolumeEncryptionEnabled = lens _workSpacesWorkspaceUserVolumeEncryptionEnabled (\s a -> s { _workSpacesWorkspaceUserVolumeEncryptionEnabled = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-workspaces-workspace.html#cfn-workspaces-workspace-volumeencryptionkey
wswVolumeEncryptionKey :: Lens' WorkSpacesWorkspace (Maybe (Val Text))
wswVolumeEncryptionKey = lens _workSpacesWorkspaceVolumeEncryptionKey (\s a -> s { _workSpacesWorkspaceVolumeEncryptionKey = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-workspaces-workspace.html#cfn-workspaces-workspace-workspaceproperties
wswWorkspaceProperties :: Lens' WorkSpacesWorkspace (Maybe WorkSpacesWorkspaceWorkspaceProperties)
wswWorkspaceProperties = lens _workSpacesWorkspaceWorkspaceProperties (\s a -> s { _workSpacesWorkspaceWorkspaceProperties = a })
