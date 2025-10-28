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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotanalytics-channel.html>
    Channel {haddock_workaround_ :: (),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotanalytics-channel.html#cfn-iotanalytics-channel-channelname>
             channelName :: (Prelude.Maybe (Value Prelude.Text)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotanalytics-channel.html#cfn-iotanalytics-channel-channelstorage>
             channelStorage :: (Prelude.Maybe ChannelStorageProperty),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotanalytics-channel.html#cfn-iotanalytics-channel-retentionperiod>
             retentionPeriod :: (Prelude.Maybe RetentionPeriodProperty),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotanalytics-channel.html#cfn-iotanalytics-channel-tags>
             tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkChannel :: Channel
mkChannel
  = Channel
      {haddock_workaround_ = (), channelName = Prelude.Nothing,
       channelStorage = Prelude.Nothing,
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