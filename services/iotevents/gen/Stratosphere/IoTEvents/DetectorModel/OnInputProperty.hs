module Stratosphere.IoTEvents.DetectorModel.OnInputProperty (
        module Exports, OnInputProperty(..), mkOnInputProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTEvents.DetectorModel.EventProperty as Exports
import {-# SOURCE #-} Stratosphere.IoTEvents.DetectorModel.TransitionEventProperty as Exports
import Stratosphere.ResourceProperties
data OnInputProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-oninput.html>
    OnInputProperty {haddock_workaround_ :: (),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-oninput.html#cfn-iotevents-detectormodel-oninput-events>
                     events :: (Prelude.Maybe [EventProperty]),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-oninput.html#cfn-iotevents-detectormodel-oninput-transitionevents>
                     transitionEvents :: (Prelude.Maybe [TransitionEventProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOnInputProperty :: OnInputProperty
mkOnInputProperty
  = OnInputProperty
      {haddock_workaround_ = (), events = Prelude.Nothing,
       transitionEvents = Prelude.Nothing}
instance ToResourceProperties OnInputProperty where
  toResourceProperties OnInputProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTEvents::DetectorModel.OnInput",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Events" Prelude.<$> events,
                            (JSON..=) "TransitionEvents" Prelude.<$> transitionEvents])}
instance JSON.ToJSON OnInputProperty where
  toJSON OnInputProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Events" Prelude.<$> events,
               (JSON..=) "TransitionEvents" Prelude.<$> transitionEvents]))
instance Property "Events" OnInputProperty where
  type PropertyType "Events" OnInputProperty = [EventProperty]
  set newValue OnInputProperty {..}
    = OnInputProperty {events = Prelude.pure newValue, ..}
instance Property "TransitionEvents" OnInputProperty where
  type PropertyType "TransitionEvents" OnInputProperty = [TransitionEventProperty]
  set newValue OnInputProperty {..}
    = OnInputProperty {transitionEvents = Prelude.pure newValue, ..}