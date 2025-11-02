module Stratosphere.IoTTwinMaker.Scene (
        Scene(..), mkScene
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Scene
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iottwinmaker-scene.html>
    Scene {haddock_workaround_ :: (),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iottwinmaker-scene.html#cfn-iottwinmaker-scene-capabilities>
           capabilities :: (Prelude.Maybe (ValueList Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iottwinmaker-scene.html#cfn-iottwinmaker-scene-contentlocation>
           contentLocation :: (Value Prelude.Text),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iottwinmaker-scene.html#cfn-iottwinmaker-scene-description>
           description :: (Prelude.Maybe (Value Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iottwinmaker-scene.html#cfn-iottwinmaker-scene-sceneid>
           sceneId :: (Value Prelude.Text),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iottwinmaker-scene.html#cfn-iottwinmaker-scene-scenemetadata>
           sceneMetadata :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iottwinmaker-scene.html#cfn-iottwinmaker-scene-tags>
           tags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iottwinmaker-scene.html#cfn-iottwinmaker-scene-workspaceid>
           workspaceId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkScene ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> Scene
mkScene contentLocation sceneId workspaceId
  = Scene
      {haddock_workaround_ = (), contentLocation = contentLocation,
       sceneId = sceneId, workspaceId = workspaceId,
       capabilities = Prelude.Nothing, description = Prelude.Nothing,
       sceneMetadata = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Scene where
  toResourceProperties Scene {..}
    = ResourceProperties
        {awsType = "AWS::IoTTwinMaker::Scene", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ContentLocation" JSON..= contentLocation,
                            "SceneId" JSON..= sceneId, "WorkspaceId" JSON..= workspaceId]
                           (Prelude.catMaybes
                              [(JSON..=) "Capabilities" Prelude.<$> capabilities,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "SceneMetadata" Prelude.<$> sceneMetadata,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Scene where
  toJSON Scene {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ContentLocation" JSON..= contentLocation,
               "SceneId" JSON..= sceneId, "WorkspaceId" JSON..= workspaceId]
              (Prelude.catMaybes
                 [(JSON..=) "Capabilities" Prelude.<$> capabilities,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "SceneMetadata" Prelude.<$> sceneMetadata,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Capabilities" Scene where
  type PropertyType "Capabilities" Scene = ValueList Prelude.Text
  set newValue Scene {..}
    = Scene {capabilities = Prelude.pure newValue, ..}
instance Property "ContentLocation" Scene where
  type PropertyType "ContentLocation" Scene = Value Prelude.Text
  set newValue Scene {..} = Scene {contentLocation = newValue, ..}
instance Property "Description" Scene where
  type PropertyType "Description" Scene = Value Prelude.Text
  set newValue Scene {..}
    = Scene {description = Prelude.pure newValue, ..}
instance Property "SceneId" Scene where
  type PropertyType "SceneId" Scene = Value Prelude.Text
  set newValue Scene {..} = Scene {sceneId = newValue, ..}
instance Property "SceneMetadata" Scene where
  type PropertyType "SceneMetadata" Scene = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue Scene {..}
    = Scene {sceneMetadata = Prelude.pure newValue, ..}
instance Property "Tags" Scene where
  type PropertyType "Tags" Scene = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue Scene {..} = Scene {tags = Prelude.pure newValue, ..}
instance Property "WorkspaceId" Scene where
  type PropertyType "WorkspaceId" Scene = Value Prelude.Text
  set newValue Scene {..} = Scene {workspaceId = newValue, ..}