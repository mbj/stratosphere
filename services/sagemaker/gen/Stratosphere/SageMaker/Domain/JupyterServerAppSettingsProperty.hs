module Stratosphere.SageMaker.Domain.JupyterServerAppSettingsProperty (
        module Exports, JupyterServerAppSettingsProperty(..),
        mkJupyterServerAppSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.Domain.ResourceSpecProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data JupyterServerAppSettingsProperty
  = JupyterServerAppSettingsProperty {defaultResourceSpec :: (Prelude.Maybe ResourceSpecProperty),
                                      lifecycleConfigArns :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkJupyterServerAppSettingsProperty ::
  JupyterServerAppSettingsProperty
mkJupyterServerAppSettingsProperty
  = JupyterServerAppSettingsProperty
      {defaultResourceSpec = Prelude.Nothing,
       lifecycleConfigArns = Prelude.Nothing}
instance ToResourceProperties JupyterServerAppSettingsProperty where
  toResourceProperties JupyterServerAppSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::Domain.JupyterServerAppSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DefaultResourceSpec" Prelude.<$> defaultResourceSpec,
                            (JSON..=) "LifecycleConfigArns" Prelude.<$> lifecycleConfigArns])}
instance JSON.ToJSON JupyterServerAppSettingsProperty where
  toJSON JupyterServerAppSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DefaultResourceSpec" Prelude.<$> defaultResourceSpec,
               (JSON..=) "LifecycleConfigArns" Prelude.<$> lifecycleConfigArns]))
instance Property "DefaultResourceSpec" JupyterServerAppSettingsProperty where
  type PropertyType "DefaultResourceSpec" JupyterServerAppSettingsProperty = ResourceSpecProperty
  set newValue JupyterServerAppSettingsProperty {..}
    = JupyterServerAppSettingsProperty
        {defaultResourceSpec = Prelude.pure newValue, ..}
instance Property "LifecycleConfigArns" JupyterServerAppSettingsProperty where
  type PropertyType "LifecycleConfigArns" JupyterServerAppSettingsProperty = ValueList Prelude.Text
  set newValue JupyterServerAppSettingsProperty {..}
    = JupyterServerAppSettingsProperty
        {lifecycleConfigArns = Prelude.pure newValue, ..}