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
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediapackagev2-channel.html>
    Channel {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediapackagev2-channel.html#cfn-mediapackagev2-channel-channelgroupname>
             channelGroupName :: (Value Prelude.Text),
             -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediapackagev2-channel.html#cfn-mediapackagev2-channel-channelname>
             channelName :: (Value Prelude.Text),
             -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediapackagev2-channel.html#cfn-mediapackagev2-channel-description>
             description :: (Prelude.Maybe (Value Prelude.Text)),
             -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediapackagev2-channel.html#cfn-mediapackagev2-channel-inputtype>
             inputType :: (Prelude.Maybe (Value Prelude.Text)),
             -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediapackagev2-channel.html#cfn-mediapackagev2-channel-tags>
             tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkChannel :: Value Prelude.Text -> Value Prelude.Text -> Channel
mkChannel channelGroupName channelName
  = Channel
      {channelGroupName = channelGroupName, channelName = channelName,
       description = Prelude.Nothing, inputType = Prelude.Nothing,
       tags = Prelude.Nothing}
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
                               (JSON..=) "InputType" Prelude.<$> inputType,
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
                  (JSON..=) "InputType" Prelude.<$> inputType,
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
instance Property "InputType" Channel where
  type PropertyType "InputType" Channel = Value Prelude.Text
  set newValue Channel {..}
    = Channel {inputType = Prelude.pure newValue, ..}
instance Property "Tags" Channel where
  type PropertyType "Tags" Channel = [Tag]
  set newValue Channel {..}
    = Channel {tags = Prelude.pure newValue, ..}