module Stratosphere.IoTEvents.DetectorModel.TransitionEventProperty (
        module Exports, TransitionEventProperty(..),
        mkTransitionEventProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTEvents.DetectorModel.ActionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TransitionEventProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-transitionevent.html>
    TransitionEventProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-transitionevent.html#cfn-iotevents-detectormodel-transitionevent-actions>
                             actions :: (Prelude.Maybe [ActionProperty]),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-transitionevent.html#cfn-iotevents-detectormodel-transitionevent-condition>
                             condition :: (Value Prelude.Text),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-transitionevent.html#cfn-iotevents-detectormodel-transitionevent-eventname>
                             eventName :: (Value Prelude.Text),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-transitionevent.html#cfn-iotevents-detectormodel-transitionevent-nextstate>
                             nextState :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTransitionEventProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> TransitionEventProperty
mkTransitionEventProperty condition eventName nextState
  = TransitionEventProperty
      {haddock_workaround_ = (), condition = condition,
       eventName = eventName, nextState = nextState,
       actions = Prelude.Nothing}
instance ToResourceProperties TransitionEventProperty where
  toResourceProperties TransitionEventProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTEvents::DetectorModel.TransitionEvent",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Condition" JSON..= condition, "EventName" JSON..= eventName,
                            "NextState" JSON..= nextState]
                           (Prelude.catMaybes [(JSON..=) "Actions" Prelude.<$> actions]))}
instance JSON.ToJSON TransitionEventProperty where
  toJSON TransitionEventProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Condition" JSON..= condition, "EventName" JSON..= eventName,
               "NextState" JSON..= nextState]
              (Prelude.catMaybes [(JSON..=) "Actions" Prelude.<$> actions])))
instance Property "Actions" TransitionEventProperty where
  type PropertyType "Actions" TransitionEventProperty = [ActionProperty]
  set newValue TransitionEventProperty {..}
    = TransitionEventProperty {actions = Prelude.pure newValue, ..}
instance Property "Condition" TransitionEventProperty where
  type PropertyType "Condition" TransitionEventProperty = Value Prelude.Text
  set newValue TransitionEventProperty {..}
    = TransitionEventProperty {condition = newValue, ..}
instance Property "EventName" TransitionEventProperty where
  type PropertyType "EventName" TransitionEventProperty = Value Prelude.Text
  set newValue TransitionEventProperty {..}
    = TransitionEventProperty {eventName = newValue, ..}
instance Property "NextState" TransitionEventProperty where
  type PropertyType "NextState" TransitionEventProperty = Value Prelude.Text
  set newValue TransitionEventProperty {..}
    = TransitionEventProperty {nextState = newValue, ..}