module Stratosphere.ImageBuilder.ImagePipeline (
        module Exports, ImagePipeline(..), mkImagePipeline
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ImageBuilder.ImagePipeline.ImageScanningConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.ImageBuilder.ImagePipeline.ImageTestsConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.ImageBuilder.ImagePipeline.PipelineLoggingConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.ImageBuilder.ImagePipeline.ScheduleProperty as Exports
import {-# SOURCE #-} Stratosphere.ImageBuilder.ImagePipeline.WorkflowConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ImagePipeline
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-imagebuilder-imagepipeline.html>
    ImagePipeline {haddock_workaround_ :: (),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-imagebuilder-imagepipeline.html#cfn-imagebuilder-imagepipeline-containerrecipearn>
                   containerRecipeArn :: (Prelude.Maybe (Value Prelude.Text)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-imagebuilder-imagepipeline.html#cfn-imagebuilder-imagepipeline-description>
                   description :: (Prelude.Maybe (Value Prelude.Text)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-imagebuilder-imagepipeline.html#cfn-imagebuilder-imagepipeline-distributionconfigurationarn>
                   distributionConfigurationArn :: (Prelude.Maybe (Value Prelude.Text)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-imagebuilder-imagepipeline.html#cfn-imagebuilder-imagepipeline-enhancedimagemetadataenabled>
                   enhancedImageMetadataEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-imagebuilder-imagepipeline.html#cfn-imagebuilder-imagepipeline-executionrole>
                   executionRole :: (Prelude.Maybe (Value Prelude.Text)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-imagebuilder-imagepipeline.html#cfn-imagebuilder-imagepipeline-imagerecipearn>
                   imageRecipeArn :: (Prelude.Maybe (Value Prelude.Text)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-imagebuilder-imagepipeline.html#cfn-imagebuilder-imagepipeline-imagescanningconfiguration>
                   imageScanningConfiguration :: (Prelude.Maybe ImageScanningConfigurationProperty),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-imagebuilder-imagepipeline.html#cfn-imagebuilder-imagepipeline-imagetestsconfiguration>
                   imageTestsConfiguration :: (Prelude.Maybe ImageTestsConfigurationProperty),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-imagebuilder-imagepipeline.html#cfn-imagebuilder-imagepipeline-infrastructureconfigurationarn>
                   infrastructureConfigurationArn :: (Value Prelude.Text),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-imagebuilder-imagepipeline.html#cfn-imagebuilder-imagepipeline-loggingconfiguration>
                   loggingConfiguration :: (Prelude.Maybe PipelineLoggingConfigurationProperty),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-imagebuilder-imagepipeline.html#cfn-imagebuilder-imagepipeline-name>
                   name :: (Value Prelude.Text),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-imagebuilder-imagepipeline.html#cfn-imagebuilder-imagepipeline-schedule>
                   schedule :: (Prelude.Maybe ScheduleProperty),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-imagebuilder-imagepipeline.html#cfn-imagebuilder-imagepipeline-status>
                   status :: (Prelude.Maybe (Value Prelude.Text)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-imagebuilder-imagepipeline.html#cfn-imagebuilder-imagepipeline-tags>
                   tags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-imagebuilder-imagepipeline.html#cfn-imagebuilder-imagepipeline-workflows>
                   workflows :: (Prelude.Maybe [WorkflowConfigurationProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkImagePipeline ::
  Value Prelude.Text -> Value Prelude.Text -> ImagePipeline
mkImagePipeline infrastructureConfigurationArn name
  = ImagePipeline
      {haddock_workaround_ = (),
       infrastructureConfigurationArn = infrastructureConfigurationArn,
       name = name, containerRecipeArn = Prelude.Nothing,
       description = Prelude.Nothing,
       distributionConfigurationArn = Prelude.Nothing,
       enhancedImageMetadataEnabled = Prelude.Nothing,
       executionRole = Prelude.Nothing, imageRecipeArn = Prelude.Nothing,
       imageScanningConfiguration = Prelude.Nothing,
       imageTestsConfiguration = Prelude.Nothing,
       loggingConfiguration = Prelude.Nothing, schedule = Prelude.Nothing,
       status = Prelude.Nothing, tags = Prelude.Nothing,
       workflows = Prelude.Nothing}
instance ToResourceProperties ImagePipeline where
  toResourceProperties ImagePipeline {..}
    = ResourceProperties
        {awsType = "AWS::ImageBuilder::ImagePipeline",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["InfrastructureConfigurationArn"
                              JSON..= infrastructureConfigurationArn,
                            "Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "ContainerRecipeArn" Prelude.<$> containerRecipeArn,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "DistributionConfigurationArn"
                                 Prelude.<$> distributionConfigurationArn,
                               (JSON..=) "EnhancedImageMetadataEnabled"
                                 Prelude.<$> enhancedImageMetadataEnabled,
                               (JSON..=) "ExecutionRole" Prelude.<$> executionRole,
                               (JSON..=) "ImageRecipeArn" Prelude.<$> imageRecipeArn,
                               (JSON..=) "ImageScanningConfiguration"
                                 Prelude.<$> imageScanningConfiguration,
                               (JSON..=) "ImageTestsConfiguration"
                                 Prelude.<$> imageTestsConfiguration,
                               (JSON..=) "LoggingConfiguration" Prelude.<$> loggingConfiguration,
                               (JSON..=) "Schedule" Prelude.<$> schedule,
                               (JSON..=) "Status" Prelude.<$> status,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "Workflows" Prelude.<$> workflows]))}
instance JSON.ToJSON ImagePipeline where
  toJSON ImagePipeline {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["InfrastructureConfigurationArn"
                 JSON..= infrastructureConfigurationArn,
               "Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "ContainerRecipeArn" Prelude.<$> containerRecipeArn,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "DistributionConfigurationArn"
                    Prelude.<$> distributionConfigurationArn,
                  (JSON..=) "EnhancedImageMetadataEnabled"
                    Prelude.<$> enhancedImageMetadataEnabled,
                  (JSON..=) "ExecutionRole" Prelude.<$> executionRole,
                  (JSON..=) "ImageRecipeArn" Prelude.<$> imageRecipeArn,
                  (JSON..=) "ImageScanningConfiguration"
                    Prelude.<$> imageScanningConfiguration,
                  (JSON..=) "ImageTestsConfiguration"
                    Prelude.<$> imageTestsConfiguration,
                  (JSON..=) "LoggingConfiguration" Prelude.<$> loggingConfiguration,
                  (JSON..=) "Schedule" Prelude.<$> schedule,
                  (JSON..=) "Status" Prelude.<$> status,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "Workflows" Prelude.<$> workflows])))
instance Property "ContainerRecipeArn" ImagePipeline where
  type PropertyType "ContainerRecipeArn" ImagePipeline = Value Prelude.Text
  set newValue ImagePipeline {..}
    = ImagePipeline {containerRecipeArn = Prelude.pure newValue, ..}
instance Property "Description" ImagePipeline where
  type PropertyType "Description" ImagePipeline = Value Prelude.Text
  set newValue ImagePipeline {..}
    = ImagePipeline {description = Prelude.pure newValue, ..}
instance Property "DistributionConfigurationArn" ImagePipeline where
  type PropertyType "DistributionConfigurationArn" ImagePipeline = Value Prelude.Text
  set newValue ImagePipeline {..}
    = ImagePipeline
        {distributionConfigurationArn = Prelude.pure newValue, ..}
instance Property "EnhancedImageMetadataEnabled" ImagePipeline where
  type PropertyType "EnhancedImageMetadataEnabled" ImagePipeline = Value Prelude.Bool
  set newValue ImagePipeline {..}
    = ImagePipeline
        {enhancedImageMetadataEnabled = Prelude.pure newValue, ..}
instance Property "ExecutionRole" ImagePipeline where
  type PropertyType "ExecutionRole" ImagePipeline = Value Prelude.Text
  set newValue ImagePipeline {..}
    = ImagePipeline {executionRole = Prelude.pure newValue, ..}
instance Property "ImageRecipeArn" ImagePipeline where
  type PropertyType "ImageRecipeArn" ImagePipeline = Value Prelude.Text
  set newValue ImagePipeline {..}
    = ImagePipeline {imageRecipeArn = Prelude.pure newValue, ..}
instance Property "ImageScanningConfiguration" ImagePipeline where
  type PropertyType "ImageScanningConfiguration" ImagePipeline = ImageScanningConfigurationProperty
  set newValue ImagePipeline {..}
    = ImagePipeline
        {imageScanningConfiguration = Prelude.pure newValue, ..}
instance Property "ImageTestsConfiguration" ImagePipeline where
  type PropertyType "ImageTestsConfiguration" ImagePipeline = ImageTestsConfigurationProperty
  set newValue ImagePipeline {..}
    = ImagePipeline
        {imageTestsConfiguration = Prelude.pure newValue, ..}
instance Property "InfrastructureConfigurationArn" ImagePipeline where
  type PropertyType "InfrastructureConfigurationArn" ImagePipeline = Value Prelude.Text
  set newValue ImagePipeline {..}
    = ImagePipeline {infrastructureConfigurationArn = newValue, ..}
instance Property "LoggingConfiguration" ImagePipeline where
  type PropertyType "LoggingConfiguration" ImagePipeline = PipelineLoggingConfigurationProperty
  set newValue ImagePipeline {..}
    = ImagePipeline {loggingConfiguration = Prelude.pure newValue, ..}
instance Property "Name" ImagePipeline where
  type PropertyType "Name" ImagePipeline = Value Prelude.Text
  set newValue ImagePipeline {..}
    = ImagePipeline {name = newValue, ..}
instance Property "Schedule" ImagePipeline where
  type PropertyType "Schedule" ImagePipeline = ScheduleProperty
  set newValue ImagePipeline {..}
    = ImagePipeline {schedule = Prelude.pure newValue, ..}
instance Property "Status" ImagePipeline where
  type PropertyType "Status" ImagePipeline = Value Prelude.Text
  set newValue ImagePipeline {..}
    = ImagePipeline {status = Prelude.pure newValue, ..}
instance Property "Tags" ImagePipeline where
  type PropertyType "Tags" ImagePipeline = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue ImagePipeline {..}
    = ImagePipeline {tags = Prelude.pure newValue, ..}
instance Property "Workflows" ImagePipeline where
  type PropertyType "Workflows" ImagePipeline = [WorkflowConfigurationProperty]
  set newValue ImagePipeline {..}
    = ImagePipeline {workflows = Prelude.pure newValue, ..}