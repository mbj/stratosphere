module Stratosphere.ImageBuilder.ImagePipeline.ImageScanningConfigurationProperty (
        module Exports, ImageScanningConfigurationProperty(..),
        mkImageScanningConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ImageBuilder.ImagePipeline.EcrConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ImageScanningConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-imagepipeline-imagescanningconfiguration.html>
    ImageScanningConfigurationProperty {haddock_workaround_ :: (),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-imagepipeline-imagescanningconfiguration.html#cfn-imagebuilder-imagepipeline-imagescanningconfiguration-ecrconfiguration>
                                        ecrConfiguration :: (Prelude.Maybe EcrConfigurationProperty),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-imagepipeline-imagescanningconfiguration.html#cfn-imagebuilder-imagepipeline-imagescanningconfiguration-imagescanningenabled>
                                        imageScanningEnabled :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkImageScanningConfigurationProperty ::
  ImageScanningConfigurationProperty
mkImageScanningConfigurationProperty
  = ImageScanningConfigurationProperty
      {haddock_workaround_ = (), ecrConfiguration = Prelude.Nothing,
       imageScanningEnabled = Prelude.Nothing}
instance ToResourceProperties ImageScanningConfigurationProperty where
  toResourceProperties ImageScanningConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::ImageBuilder::ImagePipeline.ImageScanningConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "EcrConfiguration" Prelude.<$> ecrConfiguration,
                            (JSON..=) "ImageScanningEnabled"
                              Prelude.<$> imageScanningEnabled])}
instance JSON.ToJSON ImageScanningConfigurationProperty where
  toJSON ImageScanningConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "EcrConfiguration" Prelude.<$> ecrConfiguration,
               (JSON..=) "ImageScanningEnabled"
                 Prelude.<$> imageScanningEnabled]))
instance Property "EcrConfiguration" ImageScanningConfigurationProperty where
  type PropertyType "EcrConfiguration" ImageScanningConfigurationProperty = EcrConfigurationProperty
  set newValue ImageScanningConfigurationProperty {..}
    = ImageScanningConfigurationProperty
        {ecrConfiguration = Prelude.pure newValue, ..}
instance Property "ImageScanningEnabled" ImageScanningConfigurationProperty where
  type PropertyType "ImageScanningEnabled" ImageScanningConfigurationProperty = Value Prelude.Bool
  set newValue ImageScanningConfigurationProperty {..}
    = ImageScanningConfigurationProperty
        {imageScanningEnabled = Prelude.pure newValue, ..}