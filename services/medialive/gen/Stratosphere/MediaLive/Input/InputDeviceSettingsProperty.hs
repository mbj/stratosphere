module Stratosphere.MediaLive.Input.InputDeviceSettingsProperty (
        InputDeviceSettingsProperty(..), mkInputDeviceSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data InputDeviceSettingsProperty
  = InputDeviceSettingsProperty {id :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInputDeviceSettingsProperty :: InputDeviceSettingsProperty
mkInputDeviceSettingsProperty
  = InputDeviceSettingsProperty {id = Prelude.Nothing}
instance ToResourceProperties InputDeviceSettingsProperty where
  toResourceProperties InputDeviceSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Input.InputDeviceSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Id" Prelude.<$> id])}
instance JSON.ToJSON InputDeviceSettingsProperty where
  toJSON InputDeviceSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Id" Prelude.<$> id]))
instance Property "Id" InputDeviceSettingsProperty where
  type PropertyType "Id" InputDeviceSettingsProperty = Value Prelude.Text
  set newValue InputDeviceSettingsProperty {}
    = InputDeviceSettingsProperty {id = Prelude.pure newValue, ..}