module Stratosphere.SageMaker.Space.SpaceCodeEditorAppSettingsProperty (
        module Exports, SpaceCodeEditorAppSettingsProperty(..),
        mkSpaceCodeEditorAppSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.Space.ResourceSpecProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.Space.SpaceAppLifecycleManagementProperty as Exports
import Stratosphere.ResourceProperties
data SpaceCodeEditorAppSettingsProperty
  = SpaceCodeEditorAppSettingsProperty {appLifecycleManagement :: (Prelude.Maybe SpaceAppLifecycleManagementProperty),
                                        defaultResourceSpec :: (Prelude.Maybe ResourceSpecProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSpaceCodeEditorAppSettingsProperty ::
  SpaceCodeEditorAppSettingsProperty
mkSpaceCodeEditorAppSettingsProperty
  = SpaceCodeEditorAppSettingsProperty
      {appLifecycleManagement = Prelude.Nothing,
       defaultResourceSpec = Prelude.Nothing}
instance ToResourceProperties SpaceCodeEditorAppSettingsProperty where
  toResourceProperties SpaceCodeEditorAppSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::Space.SpaceCodeEditorAppSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AppLifecycleManagement"
                              Prelude.<$> appLifecycleManagement,
                            (JSON..=) "DefaultResourceSpec" Prelude.<$> defaultResourceSpec])}
instance JSON.ToJSON SpaceCodeEditorAppSettingsProperty where
  toJSON SpaceCodeEditorAppSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AppLifecycleManagement"
                 Prelude.<$> appLifecycleManagement,
               (JSON..=) "DefaultResourceSpec" Prelude.<$> defaultResourceSpec]))
instance Property "AppLifecycleManagement" SpaceCodeEditorAppSettingsProperty where
  type PropertyType "AppLifecycleManagement" SpaceCodeEditorAppSettingsProperty = SpaceAppLifecycleManagementProperty
  set newValue SpaceCodeEditorAppSettingsProperty {..}
    = SpaceCodeEditorAppSettingsProperty
        {appLifecycleManagement = Prelude.pure newValue, ..}
instance Property "DefaultResourceSpec" SpaceCodeEditorAppSettingsProperty where
  type PropertyType "DefaultResourceSpec" SpaceCodeEditorAppSettingsProperty = ResourceSpecProperty
  set newValue SpaceCodeEditorAppSettingsProperty {..}
    = SpaceCodeEditorAppSettingsProperty
        {defaultResourceSpec = Prelude.pure newValue, ..}