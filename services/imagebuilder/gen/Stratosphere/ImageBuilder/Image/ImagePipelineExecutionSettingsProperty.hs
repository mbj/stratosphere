module Stratosphere.ImageBuilder.Image.ImagePipelineExecutionSettingsProperty (
        ImagePipelineExecutionSettingsProperty(..),
        mkImagePipelineExecutionSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ImagePipelineExecutionSettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-image-imagepipelineexecutionsettings.html>
    ImagePipelineExecutionSettingsProperty {haddock_workaround_ :: (),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-image-imagepipelineexecutionsettings.html#cfn-imagebuilder-image-imagepipelineexecutionsettings-deploymentid>
                                            deploymentId :: (Prelude.Maybe (Value Prelude.Text)),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-image-imagepipelineexecutionsettings.html#cfn-imagebuilder-image-imagepipelineexecutionsettings-onupdate>
                                            onUpdate :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkImagePipelineExecutionSettingsProperty ::
  ImagePipelineExecutionSettingsProperty
mkImagePipelineExecutionSettingsProperty
  = ImagePipelineExecutionSettingsProperty
      {haddock_workaround_ = (), deploymentId = Prelude.Nothing,
       onUpdate = Prelude.Nothing}
instance ToResourceProperties ImagePipelineExecutionSettingsProperty where
  toResourceProperties ImagePipelineExecutionSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::ImageBuilder::Image.ImagePipelineExecutionSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DeploymentId" Prelude.<$> deploymentId,
                            (JSON..=) "OnUpdate" Prelude.<$> onUpdate])}
instance JSON.ToJSON ImagePipelineExecutionSettingsProperty where
  toJSON ImagePipelineExecutionSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DeploymentId" Prelude.<$> deploymentId,
               (JSON..=) "OnUpdate" Prelude.<$> onUpdate]))
instance Property "DeploymentId" ImagePipelineExecutionSettingsProperty where
  type PropertyType "DeploymentId" ImagePipelineExecutionSettingsProperty = Value Prelude.Text
  set newValue ImagePipelineExecutionSettingsProperty {..}
    = ImagePipelineExecutionSettingsProperty
        {deploymentId = Prelude.pure newValue, ..}
instance Property "OnUpdate" ImagePipelineExecutionSettingsProperty where
  type PropertyType "OnUpdate" ImagePipelineExecutionSettingsProperty = Value Prelude.Bool
  set newValue ImagePipelineExecutionSettingsProperty {..}
    = ImagePipelineExecutionSettingsProperty
        {onUpdate = Prelude.pure newValue, ..}