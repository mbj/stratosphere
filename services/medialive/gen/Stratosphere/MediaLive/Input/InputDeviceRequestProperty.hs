module Stratosphere.MediaLive.Input.InputDeviceRequestProperty (
        InputDeviceRequestProperty(..), mkInputDeviceRequestProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data InputDeviceRequestProperty
  = InputDeviceRequestProperty {id :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInputDeviceRequestProperty :: InputDeviceRequestProperty
mkInputDeviceRequestProperty
  = InputDeviceRequestProperty {id = Prelude.Nothing}
instance ToResourceProperties InputDeviceRequestProperty where
  toResourceProperties InputDeviceRequestProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Input.InputDeviceRequest",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Id" Prelude.<$> id])}
instance JSON.ToJSON InputDeviceRequestProperty where
  toJSON InputDeviceRequestProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Id" Prelude.<$> id]))
instance Property "Id" InputDeviceRequestProperty where
  type PropertyType "Id" InputDeviceRequestProperty = Value Prelude.Text
  set newValue InputDeviceRequestProperty {}
    = InputDeviceRequestProperty {id = Prelude.pure newValue, ..}