module Stratosphere.IoTEvents.DetectorModel.OnExitProperty (
        module Exports, OnExitProperty(..), mkOnExitProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTEvents.DetectorModel.EventProperty as Exports
import Stratosphere.ResourceProperties
data OnExitProperty
  = OnExitProperty {events :: (Prelude.Maybe [EventProperty])}
mkOnExitProperty :: OnExitProperty
mkOnExitProperty = OnExitProperty {events = Prelude.Nothing}
instance ToResourceProperties OnExitProperty where
  toResourceProperties OnExitProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTEvents::DetectorModel.OnExit",
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Events" Prelude.<$> events])}
instance JSON.ToJSON OnExitProperty where
  toJSON OnExitProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Events" Prelude.<$> events]))
instance Property "Events" OnExitProperty where
  type PropertyType "Events" OnExitProperty = [EventProperty]
  set newValue OnExitProperty {}
    = OnExitProperty {events = Prelude.pure newValue, ..}