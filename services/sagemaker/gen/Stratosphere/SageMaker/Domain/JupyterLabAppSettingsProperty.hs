module Stratosphere.SageMaker.Domain.JupyterLabAppSettingsProperty (
        module Exports, JupyterLabAppSettingsProperty(..),
        mkJupyterLabAppSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.Domain.CodeRepositoryProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.Domain.CustomImageProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.Domain.ResourceSpecProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data JupyterLabAppSettingsProperty
  = JupyterLabAppSettingsProperty {codeRepositories :: (Prelude.Maybe [CodeRepositoryProperty]),
                                   customImages :: (Prelude.Maybe [CustomImageProperty]),
                                   defaultResourceSpec :: (Prelude.Maybe ResourceSpecProperty),
                                   lifecycleConfigArns :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkJupyterLabAppSettingsProperty :: JupyterLabAppSettingsProperty
mkJupyterLabAppSettingsProperty
  = JupyterLabAppSettingsProperty
      {codeRepositories = Prelude.Nothing,
       customImages = Prelude.Nothing,
       defaultResourceSpec = Prelude.Nothing,
       lifecycleConfigArns = Prelude.Nothing}
instance ToResourceProperties JupyterLabAppSettingsProperty where
  toResourceProperties JupyterLabAppSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::Domain.JupyterLabAppSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CodeRepositories" Prelude.<$> codeRepositories,
                            (JSON..=) "CustomImages" Prelude.<$> customImages,
                            (JSON..=) "DefaultResourceSpec" Prelude.<$> defaultResourceSpec,
                            (JSON..=) "LifecycleConfigArns" Prelude.<$> lifecycleConfigArns])}
instance JSON.ToJSON JupyterLabAppSettingsProperty where
  toJSON JupyterLabAppSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CodeRepositories" Prelude.<$> codeRepositories,
               (JSON..=) "CustomImages" Prelude.<$> customImages,
               (JSON..=) "DefaultResourceSpec" Prelude.<$> defaultResourceSpec,
               (JSON..=) "LifecycleConfigArns" Prelude.<$> lifecycleConfigArns]))
instance Property "CodeRepositories" JupyterLabAppSettingsProperty where
  type PropertyType "CodeRepositories" JupyterLabAppSettingsProperty = [CodeRepositoryProperty]
  set newValue JupyterLabAppSettingsProperty {..}
    = JupyterLabAppSettingsProperty
        {codeRepositories = Prelude.pure newValue, ..}
instance Property "CustomImages" JupyterLabAppSettingsProperty where
  type PropertyType "CustomImages" JupyterLabAppSettingsProperty = [CustomImageProperty]
  set newValue JupyterLabAppSettingsProperty {..}
    = JupyterLabAppSettingsProperty
        {customImages = Prelude.pure newValue, ..}
instance Property "DefaultResourceSpec" JupyterLabAppSettingsProperty where
  type PropertyType "DefaultResourceSpec" JupyterLabAppSettingsProperty = ResourceSpecProperty
  set newValue JupyterLabAppSettingsProperty {..}
    = JupyterLabAppSettingsProperty
        {defaultResourceSpec = Prelude.pure newValue, ..}
instance Property "LifecycleConfigArns" JupyterLabAppSettingsProperty where
  type PropertyType "LifecycleConfigArns" JupyterLabAppSettingsProperty = ValueList Prelude.Text
  set newValue JupyterLabAppSettingsProperty {..}
    = JupyterLabAppSettingsProperty
        {lifecycleConfigArns = Prelude.pure newValue, ..}