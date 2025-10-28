module Stratosphere.IoTTwinMaker.Workspace (
        Workspace(..), mkWorkspace
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Workspace
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iottwinmaker-workspace.html>
    Workspace {haddock_workaround_ :: (),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iottwinmaker-workspace.html#cfn-iottwinmaker-workspace-description>
               description :: (Prelude.Maybe (Value Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iottwinmaker-workspace.html#cfn-iottwinmaker-workspace-role>
               role :: (Value Prelude.Text),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iottwinmaker-workspace.html#cfn-iottwinmaker-workspace-s3location>
               s3Location :: (Value Prelude.Text),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iottwinmaker-workspace.html#cfn-iottwinmaker-workspace-tags>
               tags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iottwinmaker-workspace.html#cfn-iottwinmaker-workspace-workspaceid>
               workspaceId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkWorkspace ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> Workspace
mkWorkspace role s3Location workspaceId
  = Workspace
      {haddock_workaround_ = (), role = role, s3Location = s3Location,
       workspaceId = workspaceId, description = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties Workspace where
  toResourceProperties Workspace {..}
    = ResourceProperties
        {awsType = "AWS::IoTTwinMaker::Workspace",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Role" JSON..= role, "S3Location" JSON..= s3Location,
                            "WorkspaceId" JSON..= workspaceId]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Workspace where
  toJSON Workspace {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Role" JSON..= role, "S3Location" JSON..= s3Location,
               "WorkspaceId" JSON..= workspaceId]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Description" Workspace where
  type PropertyType "Description" Workspace = Value Prelude.Text
  set newValue Workspace {..}
    = Workspace {description = Prelude.pure newValue, ..}
instance Property "Role" Workspace where
  type PropertyType "Role" Workspace = Value Prelude.Text
  set newValue Workspace {..} = Workspace {role = newValue, ..}
instance Property "S3Location" Workspace where
  type PropertyType "S3Location" Workspace = Value Prelude.Text
  set newValue Workspace {..} = Workspace {s3Location = newValue, ..}
instance Property "Tags" Workspace where
  type PropertyType "Tags" Workspace = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue Workspace {..}
    = Workspace {tags = Prelude.pure newValue, ..}
instance Property "WorkspaceId" Workspace where
  type PropertyType "WorkspaceId" Workspace = Value Prelude.Text
  set newValue Workspace {..}
    = Workspace {workspaceId = newValue, ..}