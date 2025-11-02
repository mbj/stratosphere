module Stratosphere.IoT.TopicRule.IotEventsActionProperty (
        IotEventsActionProperty(..), mkIotEventsActionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IotEventsActionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-ioteventsaction.html>
    IotEventsActionProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-ioteventsaction.html#cfn-iot-topicrule-ioteventsaction-batchmode>
                             batchMode :: (Prelude.Maybe (Value Prelude.Bool)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-ioteventsaction.html#cfn-iot-topicrule-ioteventsaction-inputname>
                             inputName :: (Value Prelude.Text),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-ioteventsaction.html#cfn-iot-topicrule-ioteventsaction-messageid>
                             messageId :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-ioteventsaction.html#cfn-iot-topicrule-ioteventsaction-rolearn>
                             roleArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIotEventsActionProperty ::
  Value Prelude.Text -> Value Prelude.Text -> IotEventsActionProperty
mkIotEventsActionProperty inputName roleArn
  = IotEventsActionProperty
      {haddock_workaround_ = (), inputName = inputName,
       roleArn = roleArn, batchMode = Prelude.Nothing,
       messageId = Prelude.Nothing}
instance ToResourceProperties IotEventsActionProperty where
  toResourceProperties IotEventsActionProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoT::TopicRule.IotEventsAction",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["InputName" JSON..= inputName, "RoleArn" JSON..= roleArn]
                           (Prelude.catMaybes
                              [(JSON..=) "BatchMode" Prelude.<$> batchMode,
                               (JSON..=) "MessageId" Prelude.<$> messageId]))}
instance JSON.ToJSON IotEventsActionProperty where
  toJSON IotEventsActionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["InputName" JSON..= inputName, "RoleArn" JSON..= roleArn]
              (Prelude.catMaybes
                 [(JSON..=) "BatchMode" Prelude.<$> batchMode,
                  (JSON..=) "MessageId" Prelude.<$> messageId])))
instance Property "BatchMode" IotEventsActionProperty where
  type PropertyType "BatchMode" IotEventsActionProperty = Value Prelude.Bool
  set newValue IotEventsActionProperty {..}
    = IotEventsActionProperty {batchMode = Prelude.pure newValue, ..}
instance Property "InputName" IotEventsActionProperty where
  type PropertyType "InputName" IotEventsActionProperty = Value Prelude.Text
  set newValue IotEventsActionProperty {..}
    = IotEventsActionProperty {inputName = newValue, ..}
instance Property "MessageId" IotEventsActionProperty where
  type PropertyType "MessageId" IotEventsActionProperty = Value Prelude.Text
  set newValue IotEventsActionProperty {..}
    = IotEventsActionProperty {messageId = Prelude.pure newValue, ..}
instance Property "RoleArn" IotEventsActionProperty where
  type PropertyType "RoleArn" IotEventsActionProperty = Value Prelude.Text
  set newValue IotEventsActionProperty {..}
    = IotEventsActionProperty {roleArn = newValue, ..}