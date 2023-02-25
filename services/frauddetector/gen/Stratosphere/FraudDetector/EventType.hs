module Stratosphere.FraudDetector.EventType (
        module Exports, EventType(..), mkEventType
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.FraudDetector.EventType.EntityTypeProperty as Exports
import {-# SOURCE #-} Stratosphere.FraudDetector.EventType.EventVariableProperty as Exports
import {-# SOURCE #-} Stratosphere.FraudDetector.EventType.LabelProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data EventType
  = EventType {description :: (Prelude.Maybe (Value Prelude.Text)),
               entityTypes :: [EntityTypeProperty],
               eventVariables :: [EventVariableProperty],
               labels :: [LabelProperty],
               name :: (Value Prelude.Text),
               tags :: (Prelude.Maybe [Tag])}
mkEventType ::
  [EntityTypeProperty]
  -> [EventVariableProperty]
     -> [LabelProperty] -> Value Prelude.Text -> EventType
mkEventType entityTypes eventVariables labels name
  = EventType
      {entityTypes = entityTypes, eventVariables = eventVariables,
       labels = labels, name = name, description = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties EventType where
  toResourceProperties EventType {..}
    = ResourceProperties
        {awsType = "AWS::FraudDetector::EventType",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["EntityTypes" JSON..= entityTypes,
                            "EventVariables" JSON..= eventVariables, "Labels" JSON..= labels,
                            "Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON EventType where
  toJSON EventType {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["EntityTypes" JSON..= entityTypes,
               "EventVariables" JSON..= eventVariables, "Labels" JSON..= labels,
               "Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Description" EventType where
  type PropertyType "Description" EventType = Value Prelude.Text
  set newValue EventType {..}
    = EventType {description = Prelude.pure newValue, ..}
instance Property "EntityTypes" EventType where
  type PropertyType "EntityTypes" EventType = [EntityTypeProperty]
  set newValue EventType {..}
    = EventType {entityTypes = newValue, ..}
instance Property "EventVariables" EventType where
  type PropertyType "EventVariables" EventType = [EventVariableProperty]
  set newValue EventType {..}
    = EventType {eventVariables = newValue, ..}
instance Property "Labels" EventType where
  type PropertyType "Labels" EventType = [LabelProperty]
  set newValue EventType {..} = EventType {labels = newValue, ..}
instance Property "Name" EventType where
  type PropertyType "Name" EventType = Value Prelude.Text
  set newValue EventType {..} = EventType {name = newValue, ..}
instance Property "Tags" EventType where
  type PropertyType "Tags" EventType = [Tag]
  set newValue EventType {..}
    = EventType {tags = Prelude.pure newValue, ..}