module Stratosphere.MediaPackageV2.Channel (
        Channel(..), mkChannel
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Channel
  = Channel {channelGroupName :: (Value Prelude.Text),
             channelName :: (Value Prelude.Text),
             description :: (Prelude.Maybe (Value Prelude.Text)),
             tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkChannel :: Value Prelude.Text -> Value Prelude.Text -> Channel
mkChannel channelGroupName channelName
  = Channel
      {channelGroupName = channelGroupName, channelName = channelName,
       description = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Channel where
  toResourceProperties Channel {..}
    = ResourceProperties
        {awsType = "AWS::MediaPackageV2::Channel",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ChannelGroupName" JSON..= channelGroupName,
                            "ChannelName" JSON..= channelName]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Channel where
  toJSON Channel {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ChannelGroupName" JSON..= channelGroupName,
               "ChannelName" JSON..= channelName]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "ChannelGroupName" Channel where
  type PropertyType "ChannelGroupName" Channel = Value Prelude.Text
  set newValue Channel {..}
    = Channel {channelGroupName = newValue, ..}
instance Property "ChannelName" Channel where
  type PropertyType "ChannelName" Channel = Value Prelude.Text
  set newValue Channel {..} = Channel {channelName = newValue, ..}
instance Property "Description" Channel where
  type PropertyType "Description" Channel = Value Prelude.Text
  set newValue Channel {..}
    = Channel {description = Prelude.pure newValue, ..}
instance Property "Tags" Channel where
  type PropertyType "Tags" Channel = [Tag]
  set newValue Channel {..}
    = Channel {tags = Prelude.pure newValue, ..}