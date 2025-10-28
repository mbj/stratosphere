module Stratosphere.IoTEvents.AlarmModel.IotEventsProperty (
        module Exports, IotEventsProperty(..), mkIotEventsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTEvents.AlarmModel.PayloadProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IotEventsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-alarmmodel-iotevents.html>
    IotEventsProperty {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-alarmmodel-iotevents.html#cfn-iotevents-alarmmodel-iotevents-inputname>
                       inputName :: (Value Prelude.Text),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-alarmmodel-iotevents.html#cfn-iotevents-alarmmodel-iotevents-payload>
                       payload :: (Prelude.Maybe PayloadProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIotEventsProperty :: Value Prelude.Text -> IotEventsProperty
mkIotEventsProperty inputName
  = IotEventsProperty
      {haddock_workaround_ = (), inputName = inputName,
       payload = Prelude.Nothing}
instance ToResourceProperties IotEventsProperty where
  toResourceProperties IotEventsProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTEvents::AlarmModel.IotEvents",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["InputName" JSON..= inputName]
                           (Prelude.catMaybes [(JSON..=) "Payload" Prelude.<$> payload]))}
instance JSON.ToJSON IotEventsProperty where
  toJSON IotEventsProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["InputName" JSON..= inputName]
              (Prelude.catMaybes [(JSON..=) "Payload" Prelude.<$> payload])))
instance Property "InputName" IotEventsProperty where
  type PropertyType "InputName" IotEventsProperty = Value Prelude.Text
  set newValue IotEventsProperty {..}
    = IotEventsProperty {inputName = newValue, ..}
instance Property "Payload" IotEventsProperty where
  type PropertyType "Payload" IotEventsProperty = PayloadProperty
  set newValue IotEventsProperty {..}
    = IotEventsProperty {payload = Prelude.pure newValue, ..}