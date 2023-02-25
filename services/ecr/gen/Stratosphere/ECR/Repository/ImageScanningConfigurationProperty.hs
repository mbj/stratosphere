module Stratosphere.ECR.Repository.ImageScanningConfigurationProperty (
        ImageScanningConfigurationProperty(..),
        mkImageScanningConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ImageScanningConfigurationProperty
  = ImageScanningConfigurationProperty {scanOnPush :: (Prelude.Maybe (Value Prelude.Bool))}
mkImageScanningConfigurationProperty ::
  ImageScanningConfigurationProperty
mkImageScanningConfigurationProperty
  = ImageScanningConfigurationProperty {scanOnPush = Prelude.Nothing}
instance ToResourceProperties ImageScanningConfigurationProperty where
  toResourceProperties ImageScanningConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::ECR::Repository.ImageScanningConfiguration",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ScanOnPush" Prelude.<$> scanOnPush])}
instance JSON.ToJSON ImageScanningConfigurationProperty where
  toJSON ImageScanningConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ScanOnPush" Prelude.<$> scanOnPush]))
instance Property "ScanOnPush" ImageScanningConfigurationProperty where
  type PropertyType "ScanOnPush" ImageScanningConfigurationProperty = Value Prelude.Bool
  set newValue ImageScanningConfigurationProperty {}
    = ImageScanningConfigurationProperty
        {scanOnPush = Prelude.pure newValue, ..}