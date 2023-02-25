module Stratosphere.FraudDetector.Detector.EventTypeProperty (
        module Exports, EventTypeProperty(..), mkEventTypeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.FraudDetector.Detector.EntityTypeProperty as Exports
import {-# SOURCE #-} Stratosphere.FraudDetector.Detector.EventVariableProperty as Exports
import {-# SOURCE #-} Stratosphere.FraudDetector.Detector.LabelProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data EventTypeProperty
  = EventTypeProperty {arn :: (Prelude.Maybe (Value Prelude.Text)),
                       createdTime :: (Prelude.Maybe (Value Prelude.Text)),
                       description :: (Prelude.Maybe (Value Prelude.Text)),
                       entityTypes :: (Prelude.Maybe [EntityTypeProperty]),
                       eventVariables :: (Prelude.Maybe [EventVariableProperty]),
                       inline :: (Prelude.Maybe (Value Prelude.Bool)),
                       labels :: (Prelude.Maybe [LabelProperty]),
                       lastUpdatedTime :: (Prelude.Maybe (Value Prelude.Text)),
                       name :: (Prelude.Maybe (Value Prelude.Text)),
                       tags :: (Prelude.Maybe [Tag])}
mkEventTypeProperty :: EventTypeProperty
mkEventTypeProperty
  = EventTypeProperty
      {arn = Prelude.Nothing, createdTime = Prelude.Nothing,
       description = Prelude.Nothing, entityTypes = Prelude.Nothing,
       eventVariables = Prelude.Nothing, inline = Prelude.Nothing,
       labels = Prelude.Nothing, lastUpdatedTime = Prelude.Nothing,
       name = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties EventTypeProperty where
  toResourceProperties EventTypeProperty {..}
    = ResourceProperties
        {awsType = "AWS::FraudDetector::Detector.EventType",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Arn" Prelude.<$> arn,
                            (JSON..=) "CreatedTime" Prelude.<$> createdTime,
                            (JSON..=) "Description" Prelude.<$> description,
                            (JSON..=) "EntityTypes" Prelude.<$> entityTypes,
                            (JSON..=) "EventVariables" Prelude.<$> eventVariables,
                            (JSON..=) "Inline" Prelude.<$> inline,
                            (JSON..=) "Labels" Prelude.<$> labels,
                            (JSON..=) "LastUpdatedTime" Prelude.<$> lastUpdatedTime,
                            (JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON EventTypeProperty where
  toJSON EventTypeProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Arn" Prelude.<$> arn,
               (JSON..=) "CreatedTime" Prelude.<$> createdTime,
               (JSON..=) "Description" Prelude.<$> description,
               (JSON..=) "EntityTypes" Prelude.<$> entityTypes,
               (JSON..=) "EventVariables" Prelude.<$> eventVariables,
               (JSON..=) "Inline" Prelude.<$> inline,
               (JSON..=) "Labels" Prelude.<$> labels,
               (JSON..=) "LastUpdatedTime" Prelude.<$> lastUpdatedTime,
               (JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "Tags" Prelude.<$> tags]))
instance Property "Arn" EventTypeProperty where
  type PropertyType "Arn" EventTypeProperty = Value Prelude.Text
  set newValue EventTypeProperty {..}
    = EventTypeProperty {arn = Prelude.pure newValue, ..}
instance Property "CreatedTime" EventTypeProperty where
  type PropertyType "CreatedTime" EventTypeProperty = Value Prelude.Text
  set newValue EventTypeProperty {..}
    = EventTypeProperty {createdTime = Prelude.pure newValue, ..}
instance Property "Description" EventTypeProperty where
  type PropertyType "Description" EventTypeProperty = Value Prelude.Text
  set newValue EventTypeProperty {..}
    = EventTypeProperty {description = Prelude.pure newValue, ..}
instance Property "EntityTypes" EventTypeProperty where
  type PropertyType "EntityTypes" EventTypeProperty = [EntityTypeProperty]
  set newValue EventTypeProperty {..}
    = EventTypeProperty {entityTypes = Prelude.pure newValue, ..}
instance Property "EventVariables" EventTypeProperty where
  type PropertyType "EventVariables" EventTypeProperty = [EventVariableProperty]
  set newValue EventTypeProperty {..}
    = EventTypeProperty {eventVariables = Prelude.pure newValue, ..}
instance Property "Inline" EventTypeProperty where
  type PropertyType "Inline" EventTypeProperty = Value Prelude.Bool
  set newValue EventTypeProperty {..}
    = EventTypeProperty {inline = Prelude.pure newValue, ..}
instance Property "Labels" EventTypeProperty where
  type PropertyType "Labels" EventTypeProperty = [LabelProperty]
  set newValue EventTypeProperty {..}
    = EventTypeProperty {labels = Prelude.pure newValue, ..}
instance Property "LastUpdatedTime" EventTypeProperty where
  type PropertyType "LastUpdatedTime" EventTypeProperty = Value Prelude.Text
  set newValue EventTypeProperty {..}
    = EventTypeProperty {lastUpdatedTime = Prelude.pure newValue, ..}
instance Property "Name" EventTypeProperty where
  type PropertyType "Name" EventTypeProperty = Value Prelude.Text
  set newValue EventTypeProperty {..}
    = EventTypeProperty {name = Prelude.pure newValue, ..}
instance Property "Tags" EventTypeProperty where
  type PropertyType "Tags" EventTypeProperty = [Tag]
  set newValue EventTypeProperty {..}
    = EventTypeProperty {tags = Prelude.pure newValue, ..}