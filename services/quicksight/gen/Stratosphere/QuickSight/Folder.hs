module Stratosphere.QuickSight.Folder (
        module Exports, Folder(..), mkFolder
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Folder.ResourcePermissionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Folder
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-quicksight-folder.html>
    Folder {haddock_workaround_ :: (),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-quicksight-folder.html#cfn-quicksight-folder-awsaccountid>
            awsAccountId :: (Prelude.Maybe (Value Prelude.Text)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-quicksight-folder.html#cfn-quicksight-folder-folderid>
            folderId :: (Prelude.Maybe (Value Prelude.Text)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-quicksight-folder.html#cfn-quicksight-folder-foldertype>
            folderType :: (Prelude.Maybe (Value Prelude.Text)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-quicksight-folder.html#cfn-quicksight-folder-name>
            name :: (Prelude.Maybe (Value Prelude.Text)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-quicksight-folder.html#cfn-quicksight-folder-parentfolderarn>
            parentFolderArn :: (Prelude.Maybe (Value Prelude.Text)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-quicksight-folder.html#cfn-quicksight-folder-permissions>
            permissions :: (Prelude.Maybe [ResourcePermissionProperty]),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-quicksight-folder.html#cfn-quicksight-folder-sharingmodel>
            sharingModel :: (Prelude.Maybe (Value Prelude.Text)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-quicksight-folder.html#cfn-quicksight-folder-tags>
            tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFolder :: Folder
mkFolder
  = Folder
      {haddock_workaround_ = (), awsAccountId = Prelude.Nothing,
       folderId = Prelude.Nothing, folderType = Prelude.Nothing,
       name = Prelude.Nothing, parentFolderArn = Prelude.Nothing,
       permissions = Prelude.Nothing, sharingModel = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties Folder where
  toResourceProperties Folder {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Folder", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AwsAccountId" Prelude.<$> awsAccountId,
                            (JSON..=) "FolderId" Prelude.<$> folderId,
                            (JSON..=) "FolderType" Prelude.<$> folderType,
                            (JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "ParentFolderArn" Prelude.<$> parentFolderArn,
                            (JSON..=) "Permissions" Prelude.<$> permissions,
                            (JSON..=) "SharingModel" Prelude.<$> sharingModel,
                            (JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON Folder where
  toJSON Folder {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AwsAccountId" Prelude.<$> awsAccountId,
               (JSON..=) "FolderId" Prelude.<$> folderId,
               (JSON..=) "FolderType" Prelude.<$> folderType,
               (JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "ParentFolderArn" Prelude.<$> parentFolderArn,
               (JSON..=) "Permissions" Prelude.<$> permissions,
               (JSON..=) "SharingModel" Prelude.<$> sharingModel,
               (JSON..=) "Tags" Prelude.<$> tags]))
instance Property "AwsAccountId" Folder where
  type PropertyType "AwsAccountId" Folder = Value Prelude.Text
  set newValue Folder {..}
    = Folder {awsAccountId = Prelude.pure newValue, ..}
instance Property "FolderId" Folder where
  type PropertyType "FolderId" Folder = Value Prelude.Text
  set newValue Folder {..}
    = Folder {folderId = Prelude.pure newValue, ..}
instance Property "FolderType" Folder where
  type PropertyType "FolderType" Folder = Value Prelude.Text
  set newValue Folder {..}
    = Folder {folderType = Prelude.pure newValue, ..}
instance Property "Name" Folder where
  type PropertyType "Name" Folder = Value Prelude.Text
  set newValue Folder {..}
    = Folder {name = Prelude.pure newValue, ..}
instance Property "ParentFolderArn" Folder where
  type PropertyType "ParentFolderArn" Folder = Value Prelude.Text
  set newValue Folder {..}
    = Folder {parentFolderArn = Prelude.pure newValue, ..}
instance Property "Permissions" Folder where
  type PropertyType "Permissions" Folder = [ResourcePermissionProperty]
  set newValue Folder {..}
    = Folder {permissions = Prelude.pure newValue, ..}
instance Property "SharingModel" Folder where
  type PropertyType "SharingModel" Folder = Value Prelude.Text
  set newValue Folder {..}
    = Folder {sharingModel = Prelude.pure newValue, ..}
instance Property "Tags" Folder where
  type PropertyType "Tags" Folder = [Tag]
  set newValue Folder {..}
    = Folder {tags = Prelude.pure newValue, ..}