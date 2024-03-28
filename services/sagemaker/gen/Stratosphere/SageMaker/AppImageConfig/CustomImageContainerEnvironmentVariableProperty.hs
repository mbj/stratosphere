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
  = CustomImageContainerEnvironmentVariableProperty {key :: (Value Prelude.Text),
                                                     value :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCustomImageContainerEnvironmentVariableProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> CustomImageContainerEnvironmentVariableProperty
mkCustomImageContainerEnvironmentVariableProperty key value
  = CustomImageContainerEnvironmentVariableProperty
      {key = key, value = value}
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