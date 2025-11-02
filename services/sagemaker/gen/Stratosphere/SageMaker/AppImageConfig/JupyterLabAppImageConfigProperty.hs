module Stratosphere.SageMaker.AppImageConfig.JupyterLabAppImageConfigProperty (
        module Exports, JupyterLabAppImageConfigProperty(..),
        mkJupyterLabAppImageConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.AppImageConfig.ContainerConfigProperty as Exports
import Stratosphere.ResourceProperties
data JupyterLabAppImageConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-appimageconfig-jupyterlabappimageconfig.html>
    JupyterLabAppImageConfigProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-appimageconfig-jupyterlabappimageconfig.html#cfn-sagemaker-appimageconfig-jupyterlabappimageconfig-containerconfig>
                                      containerConfig :: (Prelude.Maybe ContainerConfigProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkJupyterLabAppImageConfigProperty ::
  JupyterLabAppImageConfigProperty
mkJupyterLabAppImageConfigProperty
  = JupyterLabAppImageConfigProperty
      {haddock_workaround_ = (), containerConfig = Prelude.Nothing}
instance ToResourceProperties JupyterLabAppImageConfigProperty where
  toResourceProperties JupyterLabAppImageConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::AppImageConfig.JupyterLabAppImageConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ContainerConfig" Prelude.<$> containerConfig])}
instance JSON.ToJSON JupyterLabAppImageConfigProperty where
  toJSON JupyterLabAppImageConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ContainerConfig" Prelude.<$> containerConfig]))
instance Property "ContainerConfig" JupyterLabAppImageConfigProperty where
  type PropertyType "ContainerConfig" JupyterLabAppImageConfigProperty = ContainerConfigProperty
  set newValue JupyterLabAppImageConfigProperty {..}
    = JupyterLabAppImageConfigProperty
        {containerConfig = Prelude.pure newValue, ..}