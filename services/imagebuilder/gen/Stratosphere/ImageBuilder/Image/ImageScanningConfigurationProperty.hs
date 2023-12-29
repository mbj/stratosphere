module Stratosphere.ImageBuilder.Image.ImageScanningConfigurationProperty (
        module Exports, ImageScanningConfigurationProperty(..),
        mkImageScanningConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ImageBuilder.Image.EcrConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ImageScanningConfigurationProperty
  = ImageScanningConfigurationProperty {ecrConfiguration :: (Prelude.Maybe EcrConfigurationProperty),
                                        imageScanningEnabled :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkImageScanningConfigurationProperty ::
  ImageScanningConfigurationProperty
mkImageScanningConfigurationProperty
  = ImageScanningConfigurationProperty
      {ecrConfiguration = Prelude.Nothing,
       imageScanningEnabled = Prelude.Nothing}
instance ToResourceProperties ImageScanningConfigurationProperty where
  toResourceProperties ImageScanningConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::ImageBuilder::Image.ImageScanningConfiguration",
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