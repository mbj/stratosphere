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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-computeenvironment-ec2configurationobject.html>
    Ec2ConfigurationObjectProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-computeenvironment-ec2configurationobject.html#cfn-batch-computeenvironment-ec2configurationobject-imageidoverride>
                                    imageIdOverride :: (Prelude.Maybe (Value Prelude.Text)),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-computeenvironment-ec2configurationobject.html#cfn-batch-computeenvironment-ec2configurationobject-imagekubernetesversion>
                                    imageKubernetesVersion :: (Prelude.Maybe (Value Prelude.Text)),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-computeenvironment-ec2configurationobject.html#cfn-batch-computeenvironment-ec2configurationobject-imagetype>
                                    imageType :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEc2ConfigurationObjectProperty ::
  Value Prelude.Text -> Ec2ConfigurationObjectProperty
mkEc2ConfigurationObjectProperty imageType
  = Ec2ConfigurationObjectProperty
      {haddock_workaround_ = (), imageType = imageType,
       imageIdOverride = Prelude.Nothing,
       imageKubernetesVersion = Prelude.Nothing}
instance ToResourceProperties Ec2ConfigurationObjectProperty where
  toResourceProperties Ec2ConfigurationObjectProperty {..}
    = ResourceProperties
        {awsType = "AWS::Batch::ComputeEnvironment.Ec2ConfigurationObject",
         supportsTags = Prelude.False,
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