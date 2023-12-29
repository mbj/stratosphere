module Stratosphere.MediaLive.Channel.MultiplexOutputSettingsProperty (
        module Exports, MultiplexOutputSettingsProperty(..),
        mkMultiplexOutputSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.OutputLocationRefProperty as Exports
import Stratosphere.ResourceProperties
data MultiplexOutputSettingsProperty
  = MultiplexOutputSettingsProperty {destination :: (Prelude.Maybe OutputLocationRefProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMultiplexOutputSettingsProperty ::
  MultiplexOutputSettingsProperty
mkMultiplexOutputSettingsProperty
  = MultiplexOutputSettingsProperty {destination = Prelude.Nothing}
instance ToResourceProperties MultiplexOutputSettingsProperty where
  toResourceProperties MultiplexOutputSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.MultiplexOutputSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Destination" Prelude.<$> destination])}
instance JSON.ToJSON MultiplexOutputSettingsProperty where
  toJSON MultiplexOutputSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Destination" Prelude.<$> destination]))
instance Property "Destination" MultiplexOutputSettingsProperty where
  type PropertyType "Destination" MultiplexOutputSettingsProperty = OutputLocationRefProperty
  set newValue MultiplexOutputSettingsProperty {}
    = MultiplexOutputSettingsProperty
        {destination = Prelude.pure newValue, ..}