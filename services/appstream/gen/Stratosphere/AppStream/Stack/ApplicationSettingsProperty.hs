module Stratosphere.AppStream.Stack.ApplicationSettingsProperty (
        ApplicationSettingsProperty(..), mkApplicationSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ApplicationSettingsProperty
  = ApplicationSettingsProperty {enabled :: (Value Prelude.Bool),
                                 settingsGroup :: (Prelude.Maybe (Value Prelude.Text))}
mkApplicationSettingsProperty ::
  Value Prelude.Bool -> ApplicationSettingsProperty
mkApplicationSettingsProperty enabled
  = ApplicationSettingsProperty
      {enabled = enabled, settingsGroup = Prelude.Nothing}
instance ToResourceProperties ApplicationSettingsProperty where
  toResourceProperties ApplicationSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppStream::Stack.ApplicationSettings",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Enabled" JSON..= enabled]
                           (Prelude.catMaybes
                              [(JSON..=) "SettingsGroup" Prelude.<$> settingsGroup]))}
instance JSON.ToJSON ApplicationSettingsProperty where
  toJSON ApplicationSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Enabled" JSON..= enabled]
              (Prelude.catMaybes
                 [(JSON..=) "SettingsGroup" Prelude.<$> settingsGroup])))
instance Property "Enabled" ApplicationSettingsProperty where
  type PropertyType "Enabled" ApplicationSettingsProperty = Value Prelude.Bool
  set newValue ApplicationSettingsProperty {..}
    = ApplicationSettingsProperty {enabled = newValue, ..}
instance Property "SettingsGroup" ApplicationSettingsProperty where
  type PropertyType "SettingsGroup" ApplicationSettingsProperty = Value Prelude.Text
  set newValue ApplicationSettingsProperty {..}
    = ApplicationSettingsProperty
        {settingsGroup = Prelude.pure newValue, ..}