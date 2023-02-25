module Stratosphere.Events.EventBus (
        module Exports, EventBus(..), mkEventBus
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Events.EventBus.TagEntryProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EventBus
  = EventBus {eventSourceName :: (Prelude.Maybe (Value Prelude.Text)),
              name :: (Value Prelude.Text),
              tags :: (Prelude.Maybe [TagEntryProperty])}
mkEventBus :: Value Prelude.Text -> EventBus
mkEventBus name
  = EventBus
      {name = name, eventSourceName = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties EventBus where
  toResourceProperties EventBus {..}
    = ResourceProperties
        {awsType = "AWS::Events::EventBus",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "EventSourceName" Prelude.<$> eventSourceName,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON EventBus where
  toJSON EventBus {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "EventSourceName" Prelude.<$> eventSourceName,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "EventSourceName" EventBus where
  type PropertyType "EventSourceName" EventBus = Value Prelude.Text
  set newValue EventBus {..}
    = EventBus {eventSourceName = Prelude.pure newValue, ..}
instance Property "Name" EventBus where
  type PropertyType "Name" EventBus = Value Prelude.Text
  set newValue EventBus {..} = EventBus {name = newValue, ..}
instance Property "Tags" EventBus where
  type PropertyType "Tags" EventBus = [TagEntryProperty]
  set newValue EventBus {..}
    = EventBus {tags = Prelude.pure newValue, ..}