module Stratosphere.IoT.TopicRule.IotAnalyticsActionProperty (
        IotAnalyticsActionProperty(..), mkIotAnalyticsActionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IotAnalyticsActionProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-iotanalyticsaction.html>
    IotAnalyticsActionProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-iotanalyticsaction.html#cfn-iot-topicrule-iotanalyticsaction-batchmode>
                                batchMode :: (Prelude.Maybe (Value Prelude.Bool)),
                                -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-iotanalyticsaction.html#cfn-iot-topicrule-iotanalyticsaction-channelname>
                                channelName :: (Value Prelude.Text),
                                -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-iotanalyticsaction.html#cfn-iot-topicrule-iotanalyticsaction-rolearn>
                                roleArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIotAnalyticsActionProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> IotAnalyticsActionProperty
mkIotAnalyticsActionProperty channelName roleArn
  = IotAnalyticsActionProperty
      {channelName = channelName, roleArn = roleArn,
       batchMode = Prelude.Nothing}
instance ToResourceProperties IotAnalyticsActionProperty where
  toResourceProperties IotAnalyticsActionProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoT::TopicRule.IotAnalyticsAction",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ChannelName" JSON..= channelName, "RoleArn" JSON..= roleArn]
                           (Prelude.catMaybes [(JSON..=) "BatchMode" Prelude.<$> batchMode]))}
instance JSON.ToJSON IotAnalyticsActionProperty where
  toJSON IotAnalyticsActionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ChannelName" JSON..= channelName, "RoleArn" JSON..= roleArn]
              (Prelude.catMaybes [(JSON..=) "BatchMode" Prelude.<$> batchMode])))
instance Property "BatchMode" IotAnalyticsActionProperty where
  type PropertyType "BatchMode" IotAnalyticsActionProperty = Value Prelude.Bool
  set newValue IotAnalyticsActionProperty {..}
    = IotAnalyticsActionProperty
        {batchMode = Prelude.pure newValue, ..}
instance Property "ChannelName" IotAnalyticsActionProperty where
  type PropertyType "ChannelName" IotAnalyticsActionProperty = Value Prelude.Text
  set newValue IotAnalyticsActionProperty {..}
    = IotAnalyticsActionProperty {channelName = newValue, ..}
instance Property "RoleArn" IotAnalyticsActionProperty where
  type PropertyType "RoleArn" IotAnalyticsActionProperty = Value Prelude.Text
  set newValue IotAnalyticsActionProperty {..}
    = IotAnalyticsActionProperty {roleArn = newValue, ..}