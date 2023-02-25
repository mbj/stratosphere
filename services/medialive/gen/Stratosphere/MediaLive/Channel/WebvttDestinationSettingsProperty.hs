module Stratosphere.MediaLive.Channel.WebvttDestinationSettingsProperty (
        WebvttDestinationSettingsProperty(..),
        mkWebvttDestinationSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data WebvttDestinationSettingsProperty
  = WebvttDestinationSettingsProperty {styleControl :: (Prelude.Maybe (Value Prelude.Text))}
mkWebvttDestinationSettingsProperty ::
  WebvttDestinationSettingsProperty
mkWebvttDestinationSettingsProperty
  = WebvttDestinationSettingsProperty
      {styleControl = Prelude.Nothing}
instance ToResourceProperties WebvttDestinationSettingsProperty where
  toResourceProperties WebvttDestinationSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.WebvttDestinationSettings",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "StyleControl" Prelude.<$> styleControl])}
instance JSON.ToJSON WebvttDestinationSettingsProperty where
  toJSON WebvttDestinationSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "StyleControl" Prelude.<$> styleControl]))
instance Property "StyleControl" WebvttDestinationSettingsProperty where
  type PropertyType "StyleControl" WebvttDestinationSettingsProperty = Value Prelude.Text
  set newValue WebvttDestinationSettingsProperty {}
    = WebvttDestinationSettingsProperty
        {styleControl = Prelude.pure newValue, ..}