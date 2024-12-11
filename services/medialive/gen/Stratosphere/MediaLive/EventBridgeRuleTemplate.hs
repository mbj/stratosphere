module Stratosphere.MediaLive.EventBridgeRuleTemplate (
        module Exports, EventBridgeRuleTemplate(..),
        mkEventBridgeRuleTemplate
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaLive.EventBridgeRuleTemplate.EventBridgeRuleTemplateTargetProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EventBridgeRuleTemplate
  = EventBridgeRuleTemplate {description :: (Prelude.Maybe (Value Prelude.Text)),
                             eventTargets :: (Prelude.Maybe [EventBridgeRuleTemplateTargetProperty]),
                             eventType :: (Value Prelude.Text),
                             groupIdentifier :: (Value Prelude.Text),
                             name :: (Value Prelude.Text),
                             tags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text)))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEventBridgeRuleTemplate ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> EventBridgeRuleTemplate
mkEventBridgeRuleTemplate eventType groupIdentifier name
  = EventBridgeRuleTemplate
      {eventType = eventType, groupIdentifier = groupIdentifier,
       name = name, description = Prelude.Nothing,
       eventTargets = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties EventBridgeRuleTemplate where
  toResourceProperties EventBridgeRuleTemplate {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::EventBridgeRuleTemplate",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["EventType" JSON..= eventType,
                            "GroupIdentifier" JSON..= groupIdentifier, "Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "EventTargets" Prelude.<$> eventTargets,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON EventBridgeRuleTemplate where
  toJSON EventBridgeRuleTemplate {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["EventType" JSON..= eventType,
               "GroupIdentifier" JSON..= groupIdentifier, "Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "EventTargets" Prelude.<$> eventTargets,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Description" EventBridgeRuleTemplate where
  type PropertyType "Description" EventBridgeRuleTemplate = Value Prelude.Text
  set newValue EventBridgeRuleTemplate {..}
    = EventBridgeRuleTemplate {description = Prelude.pure newValue, ..}
instance Property "EventTargets" EventBridgeRuleTemplate where
  type PropertyType "EventTargets" EventBridgeRuleTemplate = [EventBridgeRuleTemplateTargetProperty]
  set newValue EventBridgeRuleTemplate {..}
    = EventBridgeRuleTemplate
        {eventTargets = Prelude.pure newValue, ..}
instance Property "EventType" EventBridgeRuleTemplate where
  type PropertyType "EventType" EventBridgeRuleTemplate = Value Prelude.Text
  set newValue EventBridgeRuleTemplate {..}
    = EventBridgeRuleTemplate {eventType = newValue, ..}
instance Property "GroupIdentifier" EventBridgeRuleTemplate where
  type PropertyType "GroupIdentifier" EventBridgeRuleTemplate = Value Prelude.Text
  set newValue EventBridgeRuleTemplate {..}
    = EventBridgeRuleTemplate {groupIdentifier = newValue, ..}
instance Property "Name" EventBridgeRuleTemplate where
  type PropertyType "Name" EventBridgeRuleTemplate = Value Prelude.Text
  set newValue EventBridgeRuleTemplate {..}
    = EventBridgeRuleTemplate {name = newValue, ..}
instance Property "Tags" EventBridgeRuleTemplate where
  type PropertyType "Tags" EventBridgeRuleTemplate = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue EventBridgeRuleTemplate {..}
    = EventBridgeRuleTemplate {tags = Prelude.pure newValue, ..}