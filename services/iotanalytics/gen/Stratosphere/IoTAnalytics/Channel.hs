module Stratosphere.IoTAnalytics.Channel (
        module Exports, Channel(..), mkChannel
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTAnalytics.Channel.ChannelStorageProperty as Exports
import {-# SOURCE #-} Stratosphere.IoTAnalytics.Channel.RetentionPeriodProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Channel
  = Channel {channelName :: (Prelude.Maybe (Value Prelude.Text)),
             channelStorage :: (Prelude.Maybe ChannelStorageProperty),
             retentionPeriod :: (Prelude.Maybe RetentionPeriodProperty),
             tags :: (Prelude.Maybe [Tag])}
mkChannel :: Channel
mkChannel
  = Channel
      {channelName = Prelude.Nothing, channelStorage = Prelude.Nothing,
       retentionPeriod = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Channel where
  toResourceProperties Channel {..}
    = ResourceProperties
        {awsType = "AWS::IoTAnalytics::Channel",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ChannelName" Prelude.<$> channelName,
                            (JSON..=) "ChannelStorage" Prelude.<$> channelStorage,
                            (JSON..=) "RetentionPeriod" Prelude.<$> retentionPeriod,
                            (JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON Channel where
  toJSON Channel {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ChannelName" Prelude.<$> channelName,
               (JSON..=) "ChannelStorage" Prelude.<$> channelStorage,
               (JSON..=) "RetentionPeriod" Prelude.<$> retentionPeriod,
               (JSON..=) "Tags" Prelude.<$> tags]))
instance Property "ChannelName" Channel where
  type PropertyType "ChannelName" Channel = Value Prelude.Text
  set newValue Channel {..}
    = Channel {channelName = Prelude.pure newValue, ..}
instance Property "ChannelStorage" Channel where
  type PropertyType "ChannelStorage" Channel = ChannelStorageProperty
  set newValue Channel {..}
    = Channel {channelStorage = Prelude.pure newValue, ..}
instance Property "RetentionPeriod" Channel where
  type PropertyType "RetentionPeriod" Channel = RetentionPeriodProperty
  set newValue Channel {..}
    = Channel {retentionPeriod = Prelude.pure newValue, ..}
instance Property "Tags" Channel where
  type PropertyType "Tags" Channel = [Tag]
  set newValue Channel {..}
    = Channel {tags = Prelude.pure newValue, ..}