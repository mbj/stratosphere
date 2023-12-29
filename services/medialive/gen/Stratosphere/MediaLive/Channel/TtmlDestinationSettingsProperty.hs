module Stratosphere.MediaLive.Channel.TtmlDestinationSettingsProperty (
        TtmlDestinationSettingsProperty(..),
        mkTtmlDestinationSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TtmlDestinationSettingsProperty
  = TtmlDestinationSettingsProperty {styleControl :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTtmlDestinationSettingsProperty ::
  TtmlDestinationSettingsProperty
mkTtmlDestinationSettingsProperty
  = TtmlDestinationSettingsProperty {styleControl = Prelude.Nothing}
instance ToResourceProperties TtmlDestinationSettingsProperty where
  toResourceProperties TtmlDestinationSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.TtmlDestinationSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "StyleControl" Prelude.<$> styleControl])}
instance JSON.ToJSON TtmlDestinationSettingsProperty where
  toJSON TtmlDestinationSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "StyleControl" Prelude.<$> styleControl]))
instance Property "StyleControl" TtmlDestinationSettingsProperty where
  type PropertyType "StyleControl" TtmlDestinationSettingsProperty = Value Prelude.Text
  set newValue TtmlDestinationSettingsProperty {}
    = TtmlDestinationSettingsProperty
        {styleControl = Prelude.pure newValue, ..}