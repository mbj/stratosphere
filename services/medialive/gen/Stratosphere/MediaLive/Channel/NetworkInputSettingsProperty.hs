module Stratosphere.MediaLive.Channel.NetworkInputSettingsProperty (
        module Exports, NetworkInputSettingsProperty(..),
        mkNetworkInputSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.HlsInputSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.MulticastInputSettingsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NetworkInputSettingsProperty
  = NetworkInputSettingsProperty {hlsInputSettings :: (Prelude.Maybe HlsInputSettingsProperty),
                                  multicastInputSettings :: (Prelude.Maybe MulticastInputSettingsProperty),
                                  serverValidation :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNetworkInputSettingsProperty :: NetworkInputSettingsProperty
mkNetworkInputSettingsProperty
  = NetworkInputSettingsProperty
      {hlsInputSettings = Prelude.Nothing,
       multicastInputSettings = Prelude.Nothing,
       serverValidation = Prelude.Nothing}
instance ToResourceProperties NetworkInputSettingsProperty where
  toResourceProperties NetworkInputSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.NetworkInputSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "HlsInputSettings" Prelude.<$> hlsInputSettings,
                            (JSON..=) "MulticastInputSettings"
                              Prelude.<$> multicastInputSettings,
                            (JSON..=) "ServerValidation" Prelude.<$> serverValidation])}
instance JSON.ToJSON NetworkInputSettingsProperty where
  toJSON NetworkInputSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "HlsInputSettings" Prelude.<$> hlsInputSettings,
               (JSON..=) "MulticastInputSettings"
                 Prelude.<$> multicastInputSettings,
               (JSON..=) "ServerValidation" Prelude.<$> serverValidation]))
instance Property "HlsInputSettings" NetworkInputSettingsProperty where
  type PropertyType "HlsInputSettings" NetworkInputSettingsProperty = HlsInputSettingsProperty
  set newValue NetworkInputSettingsProperty {..}
    = NetworkInputSettingsProperty
        {hlsInputSettings = Prelude.pure newValue, ..}
instance Property "MulticastInputSettings" NetworkInputSettingsProperty where
  type PropertyType "MulticastInputSettings" NetworkInputSettingsProperty = MulticastInputSettingsProperty
  set newValue NetworkInputSettingsProperty {..}
    = NetworkInputSettingsProperty
        {multicastInputSettings = Prelude.pure newValue, ..}
instance Property "ServerValidation" NetworkInputSettingsProperty where
  type PropertyType "ServerValidation" NetworkInputSettingsProperty = Value Prelude.Text
  set newValue NetworkInputSettingsProperty {..}
    = NetworkInputSettingsProperty
        {serverValidation = Prelude.pure newValue, ..}