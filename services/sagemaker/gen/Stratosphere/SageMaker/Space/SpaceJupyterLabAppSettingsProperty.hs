module Stratosphere.SageMaker.Space.SpaceJupyterLabAppSettingsProperty (
        module Exports, SpaceJupyterLabAppSettingsProperty(..),
        mkSpaceJupyterLabAppSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.Space.CodeRepositoryProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.Space.ResourceSpecProperty as Exports
import Stratosphere.ResourceProperties
data SpaceJupyterLabAppSettingsProperty
  = SpaceJupyterLabAppSettingsProperty {codeRepositories :: (Prelude.Maybe [CodeRepositoryProperty]),
                                        defaultResourceSpec :: (Prelude.Maybe ResourceSpecProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSpaceJupyterLabAppSettingsProperty ::
  SpaceJupyterLabAppSettingsProperty
mkSpaceJupyterLabAppSettingsProperty
  = SpaceJupyterLabAppSettingsProperty
      {codeRepositories = Prelude.Nothing,
       defaultResourceSpec = Prelude.Nothing}
instance ToResourceProperties SpaceJupyterLabAppSettingsProperty where
  toResourceProperties SpaceJupyterLabAppSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::Space.SpaceJupyterLabAppSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CodeRepositories" Prelude.<$> codeRepositories,
                            (JSON..=) "DefaultResourceSpec" Prelude.<$> defaultResourceSpec])}
instance JSON.ToJSON SpaceJupyterLabAppSettingsProperty where
  toJSON SpaceJupyterLabAppSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CodeRepositories" Prelude.<$> codeRepositories,
               (JSON..=) "DefaultResourceSpec" Prelude.<$> defaultResourceSpec]))
instance Property "CodeRepositories" SpaceJupyterLabAppSettingsProperty where
  type PropertyType "CodeRepositories" SpaceJupyterLabAppSettingsProperty = [CodeRepositoryProperty]
  set newValue SpaceJupyterLabAppSettingsProperty {..}
    = SpaceJupyterLabAppSettingsProperty
        {codeRepositories = Prelude.pure newValue, ..}
instance Property "DefaultResourceSpec" SpaceJupyterLabAppSettingsProperty where
  type PropertyType "DefaultResourceSpec" SpaceJupyterLabAppSettingsProperty = ResourceSpecProperty
  set newValue SpaceJupyterLabAppSettingsProperty {..}
    = SpaceJupyterLabAppSettingsProperty
        {defaultResourceSpec = Prelude.pure newValue, ..}