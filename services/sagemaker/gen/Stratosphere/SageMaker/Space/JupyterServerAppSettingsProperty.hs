module Stratosphere.SageMaker.Space.JupyterServerAppSettingsProperty (
        module Exports, JupyterServerAppSettingsProperty(..),
        mkJupyterServerAppSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.Space.ResourceSpecProperty as Exports
import Stratosphere.ResourceProperties
data JupyterServerAppSettingsProperty
  = JupyterServerAppSettingsProperty {defaultResourceSpec :: (Prelude.Maybe ResourceSpecProperty)}
mkJupyterServerAppSettingsProperty ::
  JupyterServerAppSettingsProperty
mkJupyterServerAppSettingsProperty
  = JupyterServerAppSettingsProperty
      {defaultResourceSpec = Prelude.Nothing}
instance ToResourceProperties JupyterServerAppSettingsProperty where
  toResourceProperties JupyterServerAppSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::Space.JupyterServerAppSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DefaultResourceSpec" Prelude.<$> defaultResourceSpec])}
instance JSON.ToJSON JupyterServerAppSettingsProperty where
  toJSON JupyterServerAppSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DefaultResourceSpec" Prelude.<$> defaultResourceSpec]))
instance Property "DefaultResourceSpec" JupyterServerAppSettingsProperty where
  type PropertyType "DefaultResourceSpec" JupyterServerAppSettingsProperty = ResourceSpecProperty
  set newValue JupyterServerAppSettingsProperty {}
    = JupyterServerAppSettingsProperty
        {defaultResourceSpec = Prelude.pure newValue, ..}