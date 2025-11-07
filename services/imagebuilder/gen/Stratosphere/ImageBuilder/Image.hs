module Stratosphere.ImageBuilder.Image (
        module Exports, Image(..), mkImage
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ImageBuilder.Image.DeletionSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.ImageBuilder.Image.ImageLoggingConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.ImageBuilder.Image.ImagePipelineExecutionSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.ImageBuilder.Image.ImageScanningConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.ImageBuilder.Image.ImageTestsConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.ImageBuilder.Image.WorkflowConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Image
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-imagebuilder-image.html>
    Image {haddock_workaround_ :: (),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-imagebuilder-image.html#cfn-imagebuilder-image-containerrecipearn>
           containerRecipeArn :: (Prelude.Maybe (Value Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-imagebuilder-image.html#cfn-imagebuilder-image-deletionsettings>
           deletionSettings :: (Prelude.Maybe DeletionSettingsProperty),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-imagebuilder-image.html#cfn-imagebuilder-image-distributionconfigurationarn>
           distributionConfigurationArn :: (Prelude.Maybe (Value Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-imagebuilder-image.html#cfn-imagebuilder-image-enhancedimagemetadataenabled>
           enhancedImageMetadataEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-imagebuilder-image.html#cfn-imagebuilder-image-executionrole>
           executionRole :: (Prelude.Maybe (Value Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-imagebuilder-image.html#cfn-imagebuilder-image-imagepipelineexecutionsettings>
           imagePipelineExecutionSettings :: (Prelude.Maybe ImagePipelineExecutionSettingsProperty),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-imagebuilder-image.html#cfn-imagebuilder-image-imagerecipearn>
           imageRecipeArn :: (Prelude.Maybe (Value Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-imagebuilder-image.html#cfn-imagebuilder-image-imagescanningconfiguration>
           imageScanningConfiguration :: (Prelude.Maybe ImageScanningConfigurationProperty),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-imagebuilder-image.html#cfn-imagebuilder-image-imagetestsconfiguration>
           imageTestsConfiguration :: (Prelude.Maybe ImageTestsConfigurationProperty),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-imagebuilder-image.html#cfn-imagebuilder-image-infrastructureconfigurationarn>
           infrastructureConfigurationArn :: (Prelude.Maybe (Value Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-imagebuilder-image.html#cfn-imagebuilder-image-loggingconfiguration>
           loggingConfiguration :: (Prelude.Maybe ImageLoggingConfigurationProperty),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-imagebuilder-image.html#cfn-imagebuilder-image-tags>
           tags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-imagebuilder-image.html#cfn-imagebuilder-image-workflows>
           workflows :: (Prelude.Maybe [WorkflowConfigurationProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkImage :: Image
mkImage
  = Image
      {haddock_workaround_ = (), containerRecipeArn = Prelude.Nothing,
       deletionSettings = Prelude.Nothing,
       distributionConfigurationArn = Prelude.Nothing,
       enhancedImageMetadataEnabled = Prelude.Nothing,
       executionRole = Prelude.Nothing,
       imagePipelineExecutionSettings = Prelude.Nothing,
       imageRecipeArn = Prelude.Nothing,
       imageScanningConfiguration = Prelude.Nothing,
       imageTestsConfiguration = Prelude.Nothing,
       infrastructureConfigurationArn = Prelude.Nothing,
       loggingConfiguration = Prelude.Nothing, tags = Prelude.Nothing,
       workflows = Prelude.Nothing}
instance ToResourceProperties Image where
  toResourceProperties Image {..}
    = ResourceProperties
        {awsType = "AWS::ImageBuilder::Image", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ContainerRecipeArn" Prelude.<$> containerRecipeArn,
                            (JSON..=) "DeletionSettings" Prelude.<$> deletionSettings,
                            (JSON..=) "DistributionConfigurationArn"
                              Prelude.<$> distributionConfigurationArn,
                            (JSON..=) "EnhancedImageMetadataEnabled"
                              Prelude.<$> enhancedImageMetadataEnabled,
                            (JSON..=) "ExecutionRole" Prelude.<$> executionRole,
                            (JSON..=) "ImagePipelineExecutionSettings"
                              Prelude.<$> imagePipelineExecutionSettings,
                            (JSON..=) "ImageRecipeArn" Prelude.<$> imageRecipeArn,
                            (JSON..=) "ImageScanningConfiguration"
                              Prelude.<$> imageScanningConfiguration,
                            (JSON..=) "ImageTestsConfiguration"
                              Prelude.<$> imageTestsConfiguration,
                            (JSON..=) "InfrastructureConfigurationArn"
                              Prelude.<$> infrastructureConfigurationArn,
                            (JSON..=) "LoggingConfiguration" Prelude.<$> loggingConfiguration,
                            (JSON..=) "Tags" Prelude.<$> tags,
                            (JSON..=) "Workflows" Prelude.<$> workflows])}
instance JSON.ToJSON Image where
  toJSON Image {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ContainerRecipeArn" Prelude.<$> containerRecipeArn,
               (JSON..=) "DeletionSettings" Prelude.<$> deletionSettings,
               (JSON..=) "DistributionConfigurationArn"
                 Prelude.<$> distributionConfigurationArn,
               (JSON..=) "EnhancedImageMetadataEnabled"
                 Prelude.<$> enhancedImageMetadataEnabled,
               (JSON..=) "ExecutionRole" Prelude.<$> executionRole,
               (JSON..=) "ImagePipelineExecutionSettings"
                 Prelude.<$> imagePipelineExecutionSettings,
               (JSON..=) "ImageRecipeArn" Prelude.<$> imageRecipeArn,
               (JSON..=) "ImageScanningConfiguration"
                 Prelude.<$> imageScanningConfiguration,
               (JSON..=) "ImageTestsConfiguration"
                 Prelude.<$> imageTestsConfiguration,
               (JSON..=) "InfrastructureConfigurationArn"
                 Prelude.<$> infrastructureConfigurationArn,
               (JSON..=) "LoggingConfiguration" Prelude.<$> loggingConfiguration,
               (JSON..=) "Tags" Prelude.<$> tags,
               (JSON..=) "Workflows" Prelude.<$> workflows]))
instance Property "ContainerRecipeArn" Image where
  type PropertyType "ContainerRecipeArn" Image = Value Prelude.Text
  set newValue Image {..}
    = Image {containerRecipeArn = Prelude.pure newValue, ..}
instance Property "DeletionSettings" Image where
  type PropertyType "DeletionSettings" Image = DeletionSettingsProperty
  set newValue Image {..}
    = Image {deletionSettings = Prelude.pure newValue, ..}
instance Property "DistributionConfigurationArn" Image where
  type PropertyType "DistributionConfigurationArn" Image = Value Prelude.Text
  set newValue Image {..}
    = Image {distributionConfigurationArn = Prelude.pure newValue, ..}
instance Property "EnhancedImageMetadataEnabled" Image where
  type PropertyType "EnhancedImageMetadataEnabled" Image = Value Prelude.Bool
  set newValue Image {..}
    = Image {enhancedImageMetadataEnabled = Prelude.pure newValue, ..}
instance Property "ExecutionRole" Image where
  type PropertyType "ExecutionRole" Image = Value Prelude.Text
  set newValue Image {..}
    = Image {executionRole = Prelude.pure newValue, ..}
instance Property "ImagePipelineExecutionSettings" Image where
  type PropertyType "ImagePipelineExecutionSettings" Image = ImagePipelineExecutionSettingsProperty
  set newValue Image {..}
    = Image
        {imagePipelineExecutionSettings = Prelude.pure newValue, ..}
instance Property "ImageRecipeArn" Image where
  type PropertyType "ImageRecipeArn" Image = Value Prelude.Text
  set newValue Image {..}
    = Image {imageRecipeArn = Prelude.pure newValue, ..}
instance Property "ImageScanningConfiguration" Image where
  type PropertyType "ImageScanningConfiguration" Image = ImageScanningConfigurationProperty
  set newValue Image {..}
    = Image {imageScanningConfiguration = Prelude.pure newValue, ..}
instance Property "ImageTestsConfiguration" Image where
  type PropertyType "ImageTestsConfiguration" Image = ImageTestsConfigurationProperty
  set newValue Image {..}
    = Image {imageTestsConfiguration = Prelude.pure newValue, ..}
instance Property "InfrastructureConfigurationArn" Image where
  type PropertyType "InfrastructureConfigurationArn" Image = Value Prelude.Text
  set newValue Image {..}
    = Image
        {infrastructureConfigurationArn = Prelude.pure newValue, ..}
instance Property "LoggingConfiguration" Image where
  type PropertyType "LoggingConfiguration" Image = ImageLoggingConfigurationProperty
  set newValue Image {..}
    = Image {loggingConfiguration = Prelude.pure newValue, ..}
instance Property "Tags" Image where
  type PropertyType "Tags" Image = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue Image {..} = Image {tags = Prelude.pure newValue, ..}
instance Property "Workflows" Image where
  type PropertyType "Workflows" Image = [WorkflowConfigurationProperty]
  set newValue Image {..}
    = Image {workflows = Prelude.pure newValue, ..}