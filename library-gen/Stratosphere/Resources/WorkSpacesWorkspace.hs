{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-workspaces-workspace.html

module Stratosphere.Resources.WorkSpacesWorkspace where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for WorkSpacesWorkspace. See
-- | 'workSpacesWorkspace' for a more convenient constructor.
data WorkSpacesWorkspace =
  WorkSpacesWorkspace
  { _workSpacesWorkspaceBundleId :: Val Text
  , _workSpacesWorkspaceDirectoryId :: Val Text
  , _workSpacesWorkspaceRootVolumeEncryptionEnabled :: Maybe (Val Bool')
  , _workSpacesWorkspaceUserName :: Val Text
  , _workSpacesWorkspaceUserVolumeEncryptionEnabled :: Maybe (Val Bool')
  , _workSpacesWorkspaceVolumeEncryptionKey :: Maybe (Val Text)
  } deriving (Show, Generic)

instance ToJSON WorkSpacesWorkspace where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 20, omitNothingFields = True }

instance FromJSON WorkSpacesWorkspace where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 20, omitNothingFields = True }

-- | Constructor for 'WorkSpacesWorkspace' containing required fields as
-- | arguments.
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
wswRootVolumeEncryptionEnabled :: Lens' WorkSpacesWorkspace (Maybe (Val Bool'))
wswRootVolumeEncryptionEnabled = lens _workSpacesWorkspaceRootVolumeEncryptionEnabled (\s a -> s { _workSpacesWorkspaceRootVolumeEncryptionEnabled = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-workspaces-workspace.html#cfn-workspaces-workspace-username
wswUserName :: Lens' WorkSpacesWorkspace (Val Text)
wswUserName = lens _workSpacesWorkspaceUserName (\s a -> s { _workSpacesWorkspaceUserName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-workspaces-workspace.html#cfn-workspaces-workspace-uservolumeencryptionenabled
wswUserVolumeEncryptionEnabled :: Lens' WorkSpacesWorkspace (Maybe (Val Bool'))
wswUserVolumeEncryptionEnabled = lens _workSpacesWorkspaceUserVolumeEncryptionEnabled (\s a -> s { _workSpacesWorkspaceUserVolumeEncryptionEnabled = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-workspaces-workspace.html#cfn-workspaces-workspace-volumeencryptionkey
wswVolumeEncryptionKey :: Lens' WorkSpacesWorkspace (Maybe (Val Text))
wswVolumeEncryptionKey = lens _workSpacesWorkspaceVolumeEncryptionKey (\s a -> s { _workSpacesWorkspaceVolumeEncryptionKey = a })
