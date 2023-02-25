module Stratosphere.IoTEvents.DetectorModel.OnEnterProperty (
        module Exports, OnEnterProperty(..), mkOnEnterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTEvents.DetectorModel.EventProperty as Exports
import Stratosphere.ResourceProperties
data OnEnterProperty
  = OnEnterProperty {events :: (Prelude.Maybe [EventProperty])}
mkOnEnterProperty :: OnEnterProperty
mkOnEnterProperty = OnEnterProperty {events = Prelude.Nothing}
instance ToResourceProperties OnEnterProperty where
  toResourceProperties OnEnterProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTEvents::DetectorModel.OnEnter",
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Events" Prelude.<$> events])}
instance JSON.ToJSON OnEnterProperty where
  toJSON OnEnterProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Events" Prelude.<$> events]))
instance Property "Events" OnEnterProperty where
  type PropertyType "Events" OnEnterProperty = [EventProperty]
  set newValue OnEnterProperty {}
    = OnEnterProperty {events = Prelude.pure newValue, ..}