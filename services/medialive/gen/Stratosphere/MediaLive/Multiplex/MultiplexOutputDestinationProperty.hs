module Stratosphere.MediaLive.Multiplex.MultiplexOutputDestinationProperty (
        module Exports, MultiplexOutputDestinationProperty(..),
        mkMultiplexOutputDestinationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaLive.Multiplex.MultiplexMediaConnectOutputDestinationSettingsProperty as Exports
import Stratosphere.ResourceProperties
data MultiplexOutputDestinationProperty
  = MultiplexOutputDestinationProperty {multiplexMediaConnectOutputDestinationSettings :: (Prelude.Maybe MultiplexMediaConnectOutputDestinationSettingsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMultiplexOutputDestinationProperty ::
  MultiplexOutputDestinationProperty
mkMultiplexOutputDestinationProperty
  = MultiplexOutputDestinationProperty
      {multiplexMediaConnectOutputDestinationSettings = Prelude.Nothing}
instance ToResourceProperties MultiplexOutputDestinationProperty where
  toResourceProperties MultiplexOutputDestinationProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Multiplex.MultiplexOutputDestination",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "MultiplexMediaConnectOutputDestinationSettings"
                              Prelude.<$> multiplexMediaConnectOutputDestinationSettings])}
instance JSON.ToJSON MultiplexOutputDestinationProperty where
  toJSON MultiplexOutputDestinationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "MultiplexMediaConnectOutputDestinationSettings"
                 Prelude.<$> multiplexMediaConnectOutputDestinationSettings]))
instance Property "MultiplexMediaConnectOutputDestinationSettings" MultiplexOutputDestinationProperty where
  type PropertyType "MultiplexMediaConnectOutputDestinationSettings" MultiplexOutputDestinationProperty = MultiplexMediaConnectOutputDestinationSettingsProperty
  set newValue MultiplexOutputDestinationProperty {}
    = MultiplexOutputDestinationProperty
        {multiplexMediaConnectOutputDestinationSettings = Prelude.pure
                                                            newValue,
         ..}