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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecr-repository-imagescanningconfiguration.html>
    ImageScanningConfigurationProperty {haddock_workaround_ :: (),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecr-repository-imagescanningconfiguration.html#cfn-ecr-repository-imagescanningconfiguration-scanonpush>
                                        scanOnPush :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkImageScanningConfigurationProperty ::
  ImageScanningConfigurationProperty
mkImageScanningConfigurationProperty
  = ImageScanningConfigurationProperty
      {haddock_workaround_ = (), scanOnPush = Prelude.Nothing}
instance ToResourceProperties ImageScanningConfigurationProperty where
  toResourceProperties ImageScanningConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::ECR::Repository.ImageScanningConfiguration",
         supportsTags = Prelude.False,
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
  set newValue ImageScanningConfigurationProperty {..}
    = ImageScanningConfigurationProperty
        {scanOnPush = Prelude.pure newValue, ..}