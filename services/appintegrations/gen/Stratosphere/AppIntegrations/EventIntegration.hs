module Stratosphere.AppIntegrations.EventIntegration (
        module Exports, EventIntegration(..), mkEventIntegration
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppIntegrations.EventIntegration.EventFilterProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data EventIntegration
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appintegrations-eventintegration.html>
    EventIntegration {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appintegrations-eventintegration.html#cfn-appintegrations-eventintegration-description>
                      description :: (Prelude.Maybe (Value Prelude.Text)),
                      -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appintegrations-eventintegration.html#cfn-appintegrations-eventintegration-eventbridgebus>
                      eventBridgeBus :: (Value Prelude.Text),
                      -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appintegrations-eventintegration.html#cfn-appintegrations-eventintegration-eventfilter>
                      eventFilter :: EventFilterProperty,
                      -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appintegrations-eventintegration.html#cfn-appintegrations-eventintegration-name>
                      name :: (Value Prelude.Text),
                      -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appintegrations-eventintegration.html#cfn-appintegrations-eventintegration-tags>
                      tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEventIntegration ::
  Value Prelude.Text
  -> EventFilterProperty -> Value Prelude.Text -> EventIntegration
mkEventIntegration eventBridgeBus eventFilter name
  = EventIntegration
      {eventBridgeBus = eventBridgeBus, eventFilter = eventFilter,
       name = name, description = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties EventIntegration where
  toResourceProperties EventIntegration {..}
    = ResourceProperties
        {awsType = "AWS::AppIntegrations::EventIntegration",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["EventBridgeBus" JSON..= eventBridgeBus,
                            "EventFilter" JSON..= eventFilter, "Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON EventIntegration where
  toJSON EventIntegration {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["EventBridgeBus" JSON..= eventBridgeBus,
               "EventFilter" JSON..= eventFilter, "Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Description" EventIntegration where
  type PropertyType "Description" EventIntegration = Value Prelude.Text
  set newValue EventIntegration {..}
    = EventIntegration {description = Prelude.pure newValue, ..}
instance Property "EventBridgeBus" EventIntegration where
  type PropertyType "EventBridgeBus" EventIntegration = Value Prelude.Text
  set newValue EventIntegration {..}
    = EventIntegration {eventBridgeBus = newValue, ..}
instance Property "EventFilter" EventIntegration where
  type PropertyType "EventFilter" EventIntegration = EventFilterProperty
  set newValue EventIntegration {..}
    = EventIntegration {eventFilter = newValue, ..}
instance Property "Name" EventIntegration where
  type PropertyType "Name" EventIntegration = Value Prelude.Text
  set newValue EventIntegration {..}
    = EventIntegration {name = newValue, ..}
instance Property "Tags" EventIntegration where
  type PropertyType "Tags" EventIntegration = [Tag]
  set newValue EventIntegration {..}
    = EventIntegration {tags = Prelude.pure newValue, ..}