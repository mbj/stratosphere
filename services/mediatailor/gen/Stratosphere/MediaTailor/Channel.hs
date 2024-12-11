module Stratosphere.MediaTailor.Channel (
        module Exports, Channel(..), mkChannel
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaTailor.Channel.LogConfigurationForChannelProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaTailor.Channel.RequestOutputItemProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaTailor.Channel.SlateSourceProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaTailor.Channel.TimeShiftConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Channel
  = Channel {audiences :: (Prelude.Maybe (ValueList Prelude.Text)),
             channelName :: (Value Prelude.Text),
             fillerSlate :: (Prelude.Maybe SlateSourceProperty),
             logConfiguration :: (Prelude.Maybe LogConfigurationForChannelProperty),
             outputs :: [RequestOutputItemProperty],
             playbackMode :: (Value Prelude.Text),
             tags :: (Prelude.Maybe [Tag]),
             tier :: (Prelude.Maybe (Value Prelude.Text)),
             timeShiftConfiguration :: (Prelude.Maybe TimeShiftConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkChannel ::
  Value Prelude.Text
  -> [RequestOutputItemProperty] -> Value Prelude.Text -> Channel
mkChannel channelName outputs playbackMode
  = Channel
      {channelName = channelName, outputs = outputs,
       playbackMode = playbackMode, audiences = Prelude.Nothing,
       fillerSlate = Prelude.Nothing, logConfiguration = Prelude.Nothing,
       tags = Prelude.Nothing, tier = Prelude.Nothing,
       timeShiftConfiguration = Prelude.Nothing}
instance ToResourceProperties Channel where
  toResourceProperties Channel {..}
    = ResourceProperties
        {awsType = "AWS::MediaTailor::Channel",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ChannelName" JSON..= channelName, "Outputs" JSON..= outputs,
                            "PlaybackMode" JSON..= playbackMode]
                           (Prelude.catMaybes
                              [(JSON..=) "Audiences" Prelude.<$> audiences,
                               (JSON..=) "FillerSlate" Prelude.<$> fillerSlate,
                               (JSON..=) "LogConfiguration" Prelude.<$> logConfiguration,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "Tier" Prelude.<$> tier,
                               (JSON..=) "TimeShiftConfiguration"
                                 Prelude.<$> timeShiftConfiguration]))}
instance JSON.ToJSON Channel where
  toJSON Channel {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ChannelName" JSON..= channelName, "Outputs" JSON..= outputs,
               "PlaybackMode" JSON..= playbackMode]
              (Prelude.catMaybes
                 [(JSON..=) "Audiences" Prelude.<$> audiences,
                  (JSON..=) "FillerSlate" Prelude.<$> fillerSlate,
                  (JSON..=) "LogConfiguration" Prelude.<$> logConfiguration,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "Tier" Prelude.<$> tier,
                  (JSON..=) "TimeShiftConfiguration"
                    Prelude.<$> timeShiftConfiguration])))
instance Property "Audiences" Channel where
  type PropertyType "Audiences" Channel = ValueList Prelude.Text
  set newValue Channel {..}
    = Channel {audiences = Prelude.pure newValue, ..}
instance Property "ChannelName" Channel where
  type PropertyType "ChannelName" Channel = Value Prelude.Text
  set newValue Channel {..} = Channel {channelName = newValue, ..}
instance Property "FillerSlate" Channel where
  type PropertyType "FillerSlate" Channel = SlateSourceProperty
  set newValue Channel {..}
    = Channel {fillerSlate = Prelude.pure newValue, ..}
instance Property "LogConfiguration" Channel where
  type PropertyType "LogConfiguration" Channel = LogConfigurationForChannelProperty
  set newValue Channel {..}
    = Channel {logConfiguration = Prelude.pure newValue, ..}
instance Property "Outputs" Channel where
  type PropertyType "Outputs" Channel = [RequestOutputItemProperty]
  set newValue Channel {..} = Channel {outputs = newValue, ..}
instance Property "PlaybackMode" Channel where
  type PropertyType "PlaybackMode" Channel = Value Prelude.Text
  set newValue Channel {..} = Channel {playbackMode = newValue, ..}
instance Property "Tags" Channel where
  type PropertyType "Tags" Channel = [Tag]
  set newValue Channel {..}
    = Channel {tags = Prelude.pure newValue, ..}
instance Property "Tier" Channel where
  type PropertyType "Tier" Channel = Value Prelude.Text
  set newValue Channel {..}
    = Channel {tier = Prelude.pure newValue, ..}
instance Property "TimeShiftConfiguration" Channel where
  type PropertyType "TimeShiftConfiguration" Channel = TimeShiftConfigurationProperty
  set newValue Channel {..}
    = Channel {timeShiftConfiguration = Prelude.pure newValue, ..}