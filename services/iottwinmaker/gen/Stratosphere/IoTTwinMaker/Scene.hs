module Stratosphere.IoTTwinMaker.Scene (
        Scene(..), mkScene
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Scene
  = Scene {capabilities :: (Prelude.Maybe (ValueList Prelude.Text)),
           contentLocation :: (Value Prelude.Text),
           description :: (Prelude.Maybe (Value Prelude.Text)),
           sceneId :: (Value Prelude.Text),
           tags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
           workspaceId :: (Value Prelude.Text)}
mkScene ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> Scene
mkScene contentLocation sceneId workspaceId
  = Scene
      {contentLocation = contentLocation, sceneId = sceneId,
       workspaceId = workspaceId, capabilities = Prelude.Nothing,
       description = Prelude.Nothing, tags = Prelude.Nothing}
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
instance Property "Tags" Scene where
  type PropertyType "Tags" Scene = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue Scene {..} = Scene {tags = Prelude.pure newValue, ..}
instance Property "WorkspaceId" Scene where
  type PropertyType "WorkspaceId" Scene = Value Prelude.Text
  set newValue Scene {..} = Scene {workspaceId = newValue, ..}