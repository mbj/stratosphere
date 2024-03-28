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
  = JupyterLabAppImageConfigProperty {containerConfig :: (Prelude.Maybe ContainerConfigProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkJupyterLabAppImageConfigProperty ::
  JupyterLabAppImageConfigProperty
mkJupyterLabAppImageConfigProperty
  = JupyterLabAppImageConfigProperty
      {containerConfig = Prelude.Nothing}
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
  set newValue JupyterLabAppImageConfigProperty {}
    = JupyterLabAppImageConfigProperty
        {containerConfig = Prelude.pure newValue, ..}