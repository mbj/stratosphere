module Stratosphere.MediaLive.Input.InputDestinationRequestProperty (
        InputDestinationRequestProperty(..),
        mkInputDestinationRequestProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data InputDestinationRequestProperty
  = InputDestinationRequestProperty {streamName :: (Prelude.Maybe (Value Prelude.Text))}
mkInputDestinationRequestProperty ::
  InputDestinationRequestProperty
mkInputDestinationRequestProperty
  = InputDestinationRequestProperty {streamName = Prelude.Nothing}
instance ToResourceProperties InputDestinationRequestProperty where
  toResourceProperties InputDestinationRequestProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Input.InputDestinationRequest",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "StreamName" Prelude.<$> streamName])}
instance JSON.ToJSON InputDestinationRequestProperty where
  toJSON InputDestinationRequestProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "StreamName" Prelude.<$> streamName]))
instance Property "StreamName" InputDestinationRequestProperty where
  type PropertyType "StreamName" InputDestinationRequestProperty = Value Prelude.Text
  set newValue InputDestinationRequestProperty {}
    = InputDestinationRequestProperty
        {streamName = Prelude.pure newValue, ..}