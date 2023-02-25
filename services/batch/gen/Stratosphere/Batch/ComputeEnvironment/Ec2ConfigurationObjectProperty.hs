module Stratosphere.Batch.ComputeEnvironment.Ec2ConfigurationObjectProperty (
        Ec2ConfigurationObjectProperty(..),
        mkEc2ConfigurationObjectProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Ec2ConfigurationObjectProperty
  = Ec2ConfigurationObjectProperty {imageIdOverride :: (Prelude.Maybe (Value Prelude.Text)),
                                    imageKubernetesVersion :: (Prelude.Maybe (Value Prelude.Text)),
                                    imageType :: (Value Prelude.Text)}
mkEc2ConfigurationObjectProperty ::
  Value Prelude.Text -> Ec2ConfigurationObjectProperty
mkEc2ConfigurationObjectProperty imageType
  = Ec2ConfigurationObjectProperty
      {imageType = imageType, imageIdOverride = Prelude.Nothing,
       imageKubernetesVersion = Prelude.Nothing}
instance ToResourceProperties Ec2ConfigurationObjectProperty where
  toResourceProperties Ec2ConfigurationObjectProperty {..}
    = ResourceProperties
        {awsType = "AWS::Batch::ComputeEnvironment.Ec2ConfigurationObject",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ImageType" JSON..= imageType]
                           (Prelude.catMaybes
                              [(JSON..=) "ImageIdOverride" Prelude.<$> imageIdOverride,
                               (JSON..=) "ImageKubernetesVersion"
                                 Prelude.<$> imageKubernetesVersion]))}
instance JSON.ToJSON Ec2ConfigurationObjectProperty where
  toJSON Ec2ConfigurationObjectProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ImageType" JSON..= imageType]
              (Prelude.catMaybes
                 [(JSON..=) "ImageIdOverride" Prelude.<$> imageIdOverride,
                  (JSON..=) "ImageKubernetesVersion"
                    Prelude.<$> imageKubernetesVersion])))
instance Property "ImageIdOverride" Ec2ConfigurationObjectProperty where
  type PropertyType "ImageIdOverride" Ec2ConfigurationObjectProperty = Value Prelude.Text
  set newValue Ec2ConfigurationObjectProperty {..}
    = Ec2ConfigurationObjectProperty
        {imageIdOverride = Prelude.pure newValue, ..}
instance Property "ImageKubernetesVersion" Ec2ConfigurationObjectProperty where
  type PropertyType "ImageKubernetesVersion" Ec2ConfigurationObjectProperty = Value Prelude.Text
  set newValue Ec2ConfigurationObjectProperty {..}
    = Ec2ConfigurationObjectProperty
        {imageKubernetesVersion = Prelude.pure newValue, ..}
instance Property "ImageType" Ec2ConfigurationObjectProperty where
  type PropertyType "ImageType" Ec2ConfigurationObjectProperty = Value Prelude.Text
  set newValue Ec2ConfigurationObjectProperty {..}
    = Ec2ConfigurationObjectProperty {imageType = newValue, ..}