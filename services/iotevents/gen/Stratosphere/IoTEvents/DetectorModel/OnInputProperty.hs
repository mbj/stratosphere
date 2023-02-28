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
  = OnInputProperty {events :: (Prelude.Maybe [EventProperty]),
                     transitionEvents :: (Prelude.Maybe [TransitionEventProperty])}
mkOnInputProperty :: OnInputProperty
mkOnInputProperty
  = OnInputProperty
      {events = Prelude.Nothing, transitionEvents = Prelude.Nothing}
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