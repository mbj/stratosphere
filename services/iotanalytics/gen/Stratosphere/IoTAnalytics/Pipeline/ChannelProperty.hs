module Stratosphere.IoTAnalytics.Pipeline.ChannelProperty (
        ChannelProperty(..), mkChannelProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ChannelProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-channel.html>
    ChannelProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-channel.html#cfn-iotanalytics-pipeline-channel-channelname>
                     channelName :: (Value Prelude.Text),
                     -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-channel.html#cfn-iotanalytics-pipeline-channel-name>
                     name :: (Value Prelude.Text),
                     -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-channel.html#cfn-iotanalytics-pipeline-channel-next>
                     next :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkChannelProperty ::
  Value Prelude.Text -> Value Prelude.Text -> ChannelProperty
mkChannelProperty channelName name
  = ChannelProperty
      {channelName = channelName, name = name, next = Prelude.Nothing}
instance ToResourceProperties ChannelProperty where
  toResourceProperties ChannelProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTAnalytics::Pipeline.Channel",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ChannelName" JSON..= channelName, "Name" JSON..= name]
                           (Prelude.catMaybes [(JSON..=) "Next" Prelude.<$> next]))}
instance JSON.ToJSON ChannelProperty where
  toJSON ChannelProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ChannelName" JSON..= channelName, "Name" JSON..= name]
              (Prelude.catMaybes [(JSON..=) "Next" Prelude.<$> next])))
instance Property "ChannelName" ChannelProperty where
  type PropertyType "ChannelName" ChannelProperty = Value Prelude.Text
  set newValue ChannelProperty {..}
    = ChannelProperty {channelName = newValue, ..}
instance Property "Name" ChannelProperty where
  type PropertyType "Name" ChannelProperty = Value Prelude.Text
  set newValue ChannelProperty {..}
    = ChannelProperty {name = newValue, ..}
instance Property "Next" ChannelProperty where
  type PropertyType "Next" ChannelProperty = Value Prelude.Text
  set newValue ChannelProperty {..}
    = ChannelProperty {next = Prelude.pure newValue, ..}