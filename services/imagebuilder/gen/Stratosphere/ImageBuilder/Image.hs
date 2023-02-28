module Stratosphere.ImageBuilder.Image (
        module Exports, Image(..), mkImage
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ImageBuilder.Image.ImageScanningConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.ImageBuilder.Image.ImageTestsConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Image
  = Image {containerRecipeArn :: (Prelude.Maybe (Value Prelude.Text)),
           distributionConfigurationArn :: (Prelude.Maybe (Value Prelude.Text)),
           enhancedImageMetadataEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
           imageRecipeArn :: (Prelude.Maybe (Value Prelude.Text)),
           imageScanningConfiguration :: (Prelude.Maybe ImageScanningConfigurationProperty),
           imageTestsConfiguration :: (Prelude.Maybe ImageTestsConfigurationProperty),
           infrastructureConfigurationArn :: (Value Prelude.Text),
           tags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text)))}
mkImage :: Value Prelude.Text -> Image
mkImage infrastructureConfigurationArn
  = Image
      {infrastructureConfigurationArn = infrastructureConfigurationArn,
       containerRecipeArn = Prelude.Nothing,
       distributionConfigurationArn = Prelude.Nothing,
       enhancedImageMetadataEnabled = Prelude.Nothing,
       imageRecipeArn = Prelude.Nothing,
       imageScanningConfiguration = Prelude.Nothing,
       imageTestsConfiguration = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Image where
  toResourceProperties Image {..}
    = ResourceProperties
        {awsType = "AWS::ImageBuilder::Image", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["InfrastructureConfigurationArn"
                              JSON..= infrastructureConfigurationArn]
                           (Prelude.catMaybes
                              [(JSON..=) "ContainerRecipeArn" Prelude.<$> containerRecipeArn,
                               (JSON..=) "DistributionConfigurationArn"
                                 Prelude.<$> distributionConfigurationArn,
                               (JSON..=) "EnhancedImageMetadataEnabled"
                                 Prelude.<$> enhancedImageMetadataEnabled,
                               (JSON..=) "ImageRecipeArn" Prelude.<$> imageRecipeArn,
                               (JSON..=) "ImageScanningConfiguration"
                                 Prelude.<$> imageScanningConfiguration,
                               (JSON..=) "ImageTestsConfiguration"
                                 Prelude.<$> imageTestsConfiguration,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Image where
  toJSON Image {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["InfrastructureConfigurationArn"
                 JSON..= infrastructureConfigurationArn]
              (Prelude.catMaybes
                 [(JSON..=) "ContainerRecipeArn" Prelude.<$> containerRecipeArn,
                  (JSON..=) "DistributionConfigurationArn"
                    Prelude.<$> distributionConfigurationArn,
                  (JSON..=) "EnhancedImageMetadataEnabled"
                    Prelude.<$> enhancedImageMetadataEnabled,
                  (JSON..=) "ImageRecipeArn" Prelude.<$> imageRecipeArn,
                  (JSON..=) "ImageScanningConfiguration"
                    Prelude.<$> imageScanningConfiguration,
                  (JSON..=) "ImageTestsConfiguration"
                    Prelude.<$> imageTestsConfiguration,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "ContainerRecipeArn" Image where
  type PropertyType "ContainerRecipeArn" Image = Value Prelude.Text
  set newValue Image {..}
    = Image {containerRecipeArn = Prelude.pure newValue, ..}
instance Property "DistributionConfigurationArn" Image where
  type PropertyType "DistributionConfigurationArn" Image = Value Prelude.Text
  set newValue Image {..}
    = Image {distributionConfigurationArn = Prelude.pure newValue, ..}
instance Property "EnhancedImageMetadataEnabled" Image where
  type PropertyType "EnhancedImageMetadataEnabled" Image = Value Prelude.Bool
  set newValue Image {..}
    = Image {enhancedImageMetadataEnabled = Prelude.pure newValue, ..}
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
    = Image {infrastructureConfigurationArn = newValue, ..}
instance Property "Tags" Image where
  type PropertyType "Tags" Image = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue Image {..} = Image {tags = Prelude.pure newValue, ..}