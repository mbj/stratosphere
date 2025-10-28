module Stratosphere.SageMaker.AppImageConfig.ContainerConfigProperty (
        module Exports, ContainerConfigProperty(..),
        mkContainerConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.AppImageConfig.CustomImageContainerEnvironmentVariableProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ContainerConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-appimageconfig-containerconfig.html>
    ContainerConfigProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-appimageconfig-containerconfig.html#cfn-sagemaker-appimageconfig-containerconfig-containerarguments>
                             containerArguments :: (Prelude.Maybe (ValueList Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-appimageconfig-containerconfig.html#cfn-sagemaker-appimageconfig-containerconfig-containerentrypoint>
                             containerEntrypoint :: (Prelude.Maybe (ValueList Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-appimageconfig-containerconfig.html#cfn-sagemaker-appimageconfig-containerconfig-containerenvironmentvariables>
                             containerEnvironmentVariables :: (Prelude.Maybe [CustomImageContainerEnvironmentVariableProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkContainerConfigProperty :: ContainerConfigProperty
mkContainerConfigProperty
  = ContainerConfigProperty
      {haddock_workaround_ = (), containerArguments = Prelude.Nothing,
       containerEntrypoint = Prelude.Nothing,
       containerEnvironmentVariables = Prelude.Nothing}
instance ToResourceProperties ContainerConfigProperty where
  toResourceProperties ContainerConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::AppImageConfig.ContainerConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ContainerArguments" Prelude.<$> containerArguments,
                            (JSON..=) "ContainerEntrypoint" Prelude.<$> containerEntrypoint,
                            (JSON..=) "ContainerEnvironmentVariables"
                              Prelude.<$> containerEnvironmentVariables])}
instance JSON.ToJSON ContainerConfigProperty where
  toJSON ContainerConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ContainerArguments" Prelude.<$> containerArguments,
               (JSON..=) "ContainerEntrypoint" Prelude.<$> containerEntrypoint,
               (JSON..=) "ContainerEnvironmentVariables"
                 Prelude.<$> containerEnvironmentVariables]))
instance Property "ContainerArguments" ContainerConfigProperty where
  type PropertyType "ContainerArguments" ContainerConfigProperty = ValueList Prelude.Text
  set newValue ContainerConfigProperty {..}
    = ContainerConfigProperty
        {containerArguments = Prelude.pure newValue, ..}
instance Property "ContainerEntrypoint" ContainerConfigProperty where
  type PropertyType "ContainerEntrypoint" ContainerConfigProperty = ValueList Prelude.Text
  set newValue ContainerConfigProperty {..}
    = ContainerConfigProperty
        {containerEntrypoint = Prelude.pure newValue, ..}
instance Property "ContainerEnvironmentVariables" ContainerConfigProperty where
  type PropertyType "ContainerEnvironmentVariables" ContainerConfigProperty = [CustomImageContainerEnvironmentVariableProperty]
  set newValue ContainerConfigProperty {..}
    = ContainerConfigProperty
        {containerEnvironmentVariables = Prelude.pure newValue, ..}