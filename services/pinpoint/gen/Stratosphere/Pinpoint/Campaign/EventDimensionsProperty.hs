module Stratosphere.Pinpoint.Campaign.EventDimensionsProperty (
        module Exports, EventDimensionsProperty(..),
        mkEventDimensionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Pinpoint.Campaign.SetDimensionProperty as Exports
import Stratosphere.ResourceProperties
data EventDimensionsProperty
  = EventDimensionsProperty {attributes :: (Prelude.Maybe JSON.Object),
                             eventType :: (Prelude.Maybe SetDimensionProperty),
                             metrics :: (Prelude.Maybe JSON.Object)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEventDimensionsProperty :: EventDimensionsProperty
mkEventDimensionsProperty
  = EventDimensionsProperty
      {attributes = Prelude.Nothing, eventType = Prelude.Nothing,
       metrics = Prelude.Nothing}
instance ToResourceProperties EventDimensionsProperty where
  toResourceProperties EventDimensionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::Pinpoint::Campaign.EventDimensions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Attributes" Prelude.<$> attributes,
                            (JSON..=) "EventType" Prelude.<$> eventType,
                            (JSON..=) "Metrics" Prelude.<$> metrics])}
instance JSON.ToJSON EventDimensionsProperty where
  toJSON EventDimensionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Attributes" Prelude.<$> attributes,
               (JSON..=) "EventType" Prelude.<$> eventType,
               (JSON..=) "Metrics" Prelude.<$> metrics]))
instance Property "Attributes" EventDimensionsProperty where
  type PropertyType "Attributes" EventDimensionsProperty = JSON.Object
  set newValue EventDimensionsProperty {..}
    = EventDimensionsProperty {attributes = Prelude.pure newValue, ..}
instance Property "EventType" EventDimensionsProperty where
  type PropertyType "EventType" EventDimensionsProperty = SetDimensionProperty
  set newValue EventDimensionsProperty {..}
    = EventDimensionsProperty {eventType = Prelude.pure newValue, ..}
instance Property "Metrics" EventDimensionsProperty where
  type PropertyType "Metrics" EventDimensionsProperty = JSON.Object
  set newValue EventDimensionsProperty {..}
    = EventDimensionsProperty {metrics = Prelude.pure newValue, ..}