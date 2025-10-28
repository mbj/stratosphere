module Stratosphere.SageMaker.AppImageConfig.CustomImageContainerEnvironmentVariableProperty (
        CustomImageContainerEnvironmentVariableProperty(..),
        mkCustomImageContainerEnvironmentVariableProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CustomImageContainerEnvironmentVariableProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-appimageconfig-customimagecontainerenvironmentvariable.html>
    CustomImageContainerEnvironmentVariableProperty {haddock_workaround_ :: (),
                                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-appimageconfig-customimagecontainerenvironmentvariable.html#cfn-sagemaker-appimageconfig-customimagecontainerenvironmentvariable-key>
                                                     key :: (Value Prelude.Text),
                                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-appimageconfig-customimagecontainerenvironmentvariable.html#cfn-sagemaker-appimageconfig-customimagecontainerenvironmentvariable-value>
                                                     value :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCustomImageContainerEnvironmentVariableProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> CustomImageContainerEnvironmentVariableProperty
mkCustomImageContainerEnvironmentVariableProperty key value
  = CustomImageContainerEnvironmentVariableProperty
      {haddock_workaround_ = (), key = key, value = value}
instance ToResourceProperties CustomImageContainerEnvironmentVariableProperty where
  toResourceProperties
    CustomImageContainerEnvironmentVariableProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::AppImageConfig.CustomImageContainerEnvironmentVariable",
         supportsTags = Prelude.False,
         properties = ["Key" JSON..= key, "Value" JSON..= value]}
instance JSON.ToJSON CustomImageContainerEnvironmentVariableProperty where
  toJSON CustomImageContainerEnvironmentVariableProperty {..}
    = JSON.object ["Key" JSON..= key, "Value" JSON..= value]
instance Property "Key" CustomImageContainerEnvironmentVariableProperty where
  type PropertyType "Key" CustomImageContainerEnvironmentVariableProperty = Value Prelude.Text
  set newValue CustomImageContainerEnvironmentVariableProperty {..}
    = CustomImageContainerEnvironmentVariableProperty
        {key = newValue, ..}
instance Property "Value" CustomImageContainerEnvironmentVariableProperty where
  type PropertyType "Value" CustomImageContainerEnvironmentVariableProperty = Value Prelude.Text
  set newValue CustomImageContainerEnvironmentVariableProperty {..}
    = CustomImageContainerEnvironmentVariableProperty
        {value = newValue, ..}