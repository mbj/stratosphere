module Stratosphere.MediaLive.Channel.RemixSettingsProperty (
        module Exports, RemixSettingsProperty(..), mkRemixSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.AudioChannelMappingProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RemixSettingsProperty
  = RemixSettingsProperty {channelMappings :: (Prelude.Maybe [AudioChannelMappingProperty]),
                           channelsIn :: (Prelude.Maybe (Value Prelude.Integer)),
                           channelsOut :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRemixSettingsProperty :: RemixSettingsProperty
mkRemixSettingsProperty
  = RemixSettingsProperty
      {channelMappings = Prelude.Nothing, channelsIn = Prelude.Nothing,
       channelsOut = Prelude.Nothing}
instance ToResourceProperties RemixSettingsProperty where
  toResourceProperties RemixSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.RemixSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ChannelMappings" Prelude.<$> channelMappings,
                            (JSON..=) "ChannelsIn" Prelude.<$> channelsIn,
                            (JSON..=) "ChannelsOut" Prelude.<$> channelsOut])}
instance JSON.ToJSON RemixSettingsProperty where
  toJSON RemixSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ChannelMappings" Prelude.<$> channelMappings,
               (JSON..=) "ChannelsIn" Prelude.<$> channelsIn,
               (JSON..=) "ChannelsOut" Prelude.<$> channelsOut]))
instance Property "ChannelMappings" RemixSettingsProperty where
  type PropertyType "ChannelMappings" RemixSettingsProperty = [AudioChannelMappingProperty]
  set newValue RemixSettingsProperty {..}
    = RemixSettingsProperty
        {channelMappings = Prelude.pure newValue, ..}
instance Property "ChannelsIn" RemixSettingsProperty where
  type PropertyType "ChannelsIn" RemixSettingsProperty = Value Prelude.Integer
  set newValue RemixSettingsProperty {..}
    = RemixSettingsProperty {channelsIn = Prelude.pure newValue, ..}
instance Property "ChannelsOut" RemixSettingsProperty where
  type PropertyType "ChannelsOut" RemixSettingsProperty = Value Prelude.Integer
  set newValue RemixSettingsProperty {..}
    = RemixSettingsProperty {channelsOut = Prelude.pure newValue, ..}