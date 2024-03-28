module Stratosphere.SageMaker.UserProfile.CodeEditorAppSettingsProperty (
        module Exports, CodeEditorAppSettingsProperty(..),
        mkCodeEditorAppSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.UserProfile.ResourceSpecProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CodeEditorAppSettingsProperty
  = CodeEditorAppSettingsProperty {defaultResourceSpec :: (Prelude.Maybe ResourceSpecProperty),
                                   lifecycleConfigArns :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCodeEditorAppSettingsProperty :: CodeEditorAppSettingsProperty
mkCodeEditorAppSettingsProperty
  = CodeEditorAppSettingsProperty
      {defaultResourceSpec = Prelude.Nothing,
       lifecycleConfigArns = Prelude.Nothing}
instance ToResourceProperties CodeEditorAppSettingsProperty where
  toResourceProperties CodeEditorAppSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::UserProfile.CodeEditorAppSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DefaultResourceSpec" Prelude.<$> defaultResourceSpec,
                            (JSON..=) "LifecycleConfigArns" Prelude.<$> lifecycleConfigArns])}
instance JSON.ToJSON CodeEditorAppSettingsProperty where
  toJSON CodeEditorAppSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DefaultResourceSpec" Prelude.<$> defaultResourceSpec,
               (JSON..=) "LifecycleConfigArns" Prelude.<$> lifecycleConfigArns]))
instance Property "DefaultResourceSpec" CodeEditorAppSettingsProperty where
  type PropertyType "DefaultResourceSpec" CodeEditorAppSettingsProperty = ResourceSpecProperty
  set newValue CodeEditorAppSettingsProperty {..}
    = CodeEditorAppSettingsProperty
        {defaultResourceSpec = Prelude.pure newValue, ..}
instance Property "LifecycleConfigArns" CodeEditorAppSettingsProperty where
  type PropertyType "LifecycleConfigArns" CodeEditorAppSettingsProperty = ValueList Prelude.Text
  set newValue CodeEditorAppSettingsProperty {..}
    = CodeEditorAppSettingsProperty
        {lifecycleConfigArns = Prelude.pure newValue, ..}