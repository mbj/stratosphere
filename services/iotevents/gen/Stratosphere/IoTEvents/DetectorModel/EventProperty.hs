module Stratosphere.IoTEvents.DetectorModel.EventProperty (
        module Exports, EventProperty(..), mkEventProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTEvents.DetectorModel.ActionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EventProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-event.html>
    EventProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-event.html#cfn-iotevents-detectormodel-event-actions>
                   actions :: (Prelude.Maybe [ActionProperty]),
                   -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-event.html#cfn-iotevents-detectormodel-event-condition>
                   condition :: (Prelude.Maybe (Value Prelude.Text)),
                   -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-event.html#cfn-iotevents-detectormodel-event-eventname>
                   eventName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEventProperty :: Value Prelude.Text -> EventProperty
mkEventProperty eventName
  = EventProperty
      {eventName = eventName, actions = Prelude.Nothing,
       condition = Prelude.Nothing}
instance ToResourceProperties EventProperty where
  toResourceProperties EventProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTEvents::DetectorModel.Event",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["EventName" JSON..= eventName]
                           (Prelude.catMaybes
                              [(JSON..=) "Actions" Prelude.<$> actions,
                               (JSON..=) "Condition" Prelude.<$> condition]))}
instance JSON.ToJSON EventProperty where
  toJSON EventProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["EventName" JSON..= eventName]
              (Prelude.catMaybes
                 [(JSON..=) "Actions" Prelude.<$> actions,
                  (JSON..=) "Condition" Prelude.<$> condition])))
instance Property "Actions" EventProperty where
  type PropertyType "Actions" EventProperty = [ActionProperty]
  set newValue EventProperty {..}
    = EventProperty {actions = Prelude.pure newValue, ..}
instance Property "Condition" EventProperty where
  type PropertyType "Condition" EventProperty = Value Prelude.Text
  set newValue EventProperty {..}
    = EventProperty {condition = Prelude.pure newValue, ..}
instance Property "EventName" EventProperty where
  type PropertyType "EventName" EventProperty = Value Prelude.Text
  set newValue EventProperty {..}
    = EventProperty {eventName = newValue, ..}