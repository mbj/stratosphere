module Stratosphere.WorkSpaces.Workspace (
        module Exports, Workspace(..), mkWorkspace
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.WorkSpaces.Workspace.WorkspacePropertiesProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Workspace
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-workspaces-workspace.html>
    Workspace {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-workspaces-workspace.html#cfn-workspaces-workspace-bundleid>
               bundleId :: (Value Prelude.Text),
               -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-workspaces-workspace.html#cfn-workspaces-workspace-directoryid>
               directoryId :: (Value Prelude.Text),
               -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-workspaces-workspace.html#cfn-workspaces-workspace-rootvolumeencryptionenabled>
               rootVolumeEncryptionEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
               -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-workspaces-workspace.html#cfn-workspaces-workspace-tags>
               tags :: (Prelude.Maybe [Tag]),
               -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-workspaces-workspace.html#cfn-workspaces-workspace-username>
               userName :: (Value Prelude.Text),
               -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-workspaces-workspace.html#cfn-workspaces-workspace-uservolumeencryptionenabled>
               userVolumeEncryptionEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
               -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-workspaces-workspace.html#cfn-workspaces-workspace-volumeencryptionkey>
               volumeEncryptionKey :: (Prelude.Maybe (Value Prelude.Text)),
               -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-workspaces-workspace.html#cfn-workspaces-workspace-workspaceproperties>
               workspaceProperties :: (Prelude.Maybe WorkspacePropertiesProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkWorkspace ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> Workspace
mkWorkspace bundleId directoryId userName
  = Workspace
      {bundleId = bundleId, directoryId = directoryId,
       userName = userName, rootVolumeEncryptionEnabled = Prelude.Nothing,
       tags = Prelude.Nothing,
       userVolumeEncryptionEnabled = Prelude.Nothing,
       volumeEncryptionKey = Prelude.Nothing,
       workspaceProperties = Prelude.Nothing}
instance ToResourceProperties Workspace where
  toResourceProperties Workspace {..}
    = ResourceProperties
        {awsType = "AWS::WorkSpaces::Workspace",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["BundleId" JSON..= bundleId, "DirectoryId" JSON..= directoryId,
                            "UserName" JSON..= userName]
                           (Prelude.catMaybes
                              [(JSON..=) "RootVolumeEncryptionEnabled"
                                 Prelude.<$> rootVolumeEncryptionEnabled,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "UserVolumeEncryptionEnabled"
                                 Prelude.<$> userVolumeEncryptionEnabled,
                               (JSON..=) "VolumeEncryptionKey" Prelude.<$> volumeEncryptionKey,
                               (JSON..=) "WorkspaceProperties" Prelude.<$> workspaceProperties]))}
instance JSON.ToJSON Workspace where
  toJSON Workspace {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["BundleId" JSON..= bundleId, "DirectoryId" JSON..= directoryId,
               "UserName" JSON..= userName]
              (Prelude.catMaybes
                 [(JSON..=) "RootVolumeEncryptionEnabled"
                    Prelude.<$> rootVolumeEncryptionEnabled,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "UserVolumeEncryptionEnabled"
                    Prelude.<$> userVolumeEncryptionEnabled,
                  (JSON..=) "VolumeEncryptionKey" Prelude.<$> volumeEncryptionKey,
                  (JSON..=) "WorkspaceProperties" Prelude.<$> workspaceProperties])))
instance Property "BundleId" Workspace where
  type PropertyType "BundleId" Workspace = Value Prelude.Text
  set newValue Workspace {..} = Workspace {bundleId = newValue, ..}
instance Property "DirectoryId" Workspace where
  type PropertyType "DirectoryId" Workspace = Value Prelude.Text
  set newValue Workspace {..}
    = Workspace {directoryId = newValue, ..}
instance Property "RootVolumeEncryptionEnabled" Workspace where
  type PropertyType "RootVolumeEncryptionEnabled" Workspace = Value Prelude.Bool
  set newValue Workspace {..}
    = Workspace
        {rootVolumeEncryptionEnabled = Prelude.pure newValue, ..}
instance Property "Tags" Workspace where
  type PropertyType "Tags" Workspace = [Tag]
  set newValue Workspace {..}
    = Workspace {tags = Prelude.pure newValue, ..}
instance Property "UserName" Workspace where
  type PropertyType "UserName" Workspace = Value Prelude.Text
  set newValue Workspace {..} = Workspace {userName = newValue, ..}
instance Property "UserVolumeEncryptionEnabled" Workspace where
  type PropertyType "UserVolumeEncryptionEnabled" Workspace = Value Prelude.Bool
  set newValue Workspace {..}
    = Workspace
        {userVolumeEncryptionEnabled = Prelude.pure newValue, ..}
instance Property "VolumeEncryptionKey" Workspace where
  type PropertyType "VolumeEncryptionKey" Workspace = Value Prelude.Text
  set newValue Workspace {..}
    = Workspace {volumeEncryptionKey = Prelude.pure newValue, ..}
instance Property "WorkspaceProperties" Workspace where
  type PropertyType "WorkspaceProperties" Workspace = WorkspacePropertiesProperty
  set newValue Workspace {..}
    = Workspace {workspaceProperties = Prelude.pure newValue, ..}