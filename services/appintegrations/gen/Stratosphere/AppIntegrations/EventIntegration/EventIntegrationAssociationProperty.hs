module Stratosphere.AppIntegrations.EventIntegration.EventIntegrationAssociationProperty (
        module Exports, EventIntegrationAssociationProperty(..),
        mkEventIntegrationAssociationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppIntegrations.EventIntegration.MetadataProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EventIntegrationAssociationProperty
  = EventIntegrationAssociationProperty {clientAssociationMetadata :: (Prelude.Maybe [MetadataProperty]),
                                         clientId :: (Prelude.Maybe (Value Prelude.Text)),
                                         eventBridgeRuleName :: (Prelude.Maybe (Value Prelude.Text)),
                                         eventIntegrationAssociationArn :: (Prelude.Maybe (Value Prelude.Text)),
                                         eventIntegrationAssociationId :: (Prelude.Maybe (Value Prelude.Text))}
mkEventIntegrationAssociationProperty ::
  EventIntegrationAssociationProperty
mkEventIntegrationAssociationProperty
  = EventIntegrationAssociationProperty
      {clientAssociationMetadata = Prelude.Nothing,
       clientId = Prelude.Nothing, eventBridgeRuleName = Prelude.Nothing,
       eventIntegrationAssociationArn = Prelude.Nothing,
       eventIntegrationAssociationId = Prelude.Nothing}
instance ToResourceProperties EventIntegrationAssociationProperty where
  toResourceProperties EventIntegrationAssociationProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppIntegrations::EventIntegration.EventIntegrationAssociation",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ClientAssociationMetadata"
                              Prelude.<$> clientAssociationMetadata,
                            (JSON..=) "ClientId" Prelude.<$> clientId,
                            (JSON..=) "EventBridgeRuleName" Prelude.<$> eventBridgeRuleName,
                            (JSON..=) "EventIntegrationAssociationArn"
                              Prelude.<$> eventIntegrationAssociationArn,
                            (JSON..=) "EventIntegrationAssociationId"
                              Prelude.<$> eventIntegrationAssociationId])}
instance JSON.ToJSON EventIntegrationAssociationProperty where
  toJSON EventIntegrationAssociationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ClientAssociationMetadata"
                 Prelude.<$> clientAssociationMetadata,
               (JSON..=) "ClientId" Prelude.<$> clientId,
               (JSON..=) "EventBridgeRuleName" Prelude.<$> eventBridgeRuleName,
               (JSON..=) "EventIntegrationAssociationArn"
                 Prelude.<$> eventIntegrationAssociationArn,
               (JSON..=) "EventIntegrationAssociationId"
                 Prelude.<$> eventIntegrationAssociationId]))
instance Property "ClientAssociationMetadata" EventIntegrationAssociationProperty where
  type PropertyType "ClientAssociationMetadata" EventIntegrationAssociationProperty = [MetadataProperty]
  set newValue EventIntegrationAssociationProperty {..}
    = EventIntegrationAssociationProperty
        {clientAssociationMetadata = Prelude.pure newValue, ..}
instance Property "ClientId" EventIntegrationAssociationProperty where
  type PropertyType "ClientId" EventIntegrationAssociationProperty = Value Prelude.Text
  set newValue EventIntegrationAssociationProperty {..}
    = EventIntegrationAssociationProperty
        {clientId = Prelude.pure newValue, ..}
instance Property "EventBridgeRuleName" EventIntegrationAssociationProperty where
  type PropertyType "EventBridgeRuleName" EventIntegrationAssociationProperty = Value Prelude.Text
  set newValue EventIntegrationAssociationProperty {..}
    = EventIntegrationAssociationProperty
        {eventBridgeRuleName = Prelude.pure newValue, ..}
instance Property "EventIntegrationAssociationArn" EventIntegrationAssociationProperty where
  type PropertyType "EventIntegrationAssociationArn" EventIntegrationAssociationProperty = Value Prelude.Text
  set newValue EventIntegrationAssociationProperty {..}
    = EventIntegrationAssociationProperty
        {eventIntegrationAssociationArn = Prelude.pure newValue, ..}
instance Property "EventIntegrationAssociationId" EventIntegrationAssociationProperty where
  type PropertyType "EventIntegrationAssociationId" EventIntegrationAssociationProperty = Value Prelude.Text
  set newValue EventIntegrationAssociationProperty {..}
    = EventIntegrationAssociationProperty
        {eventIntegrationAssociationId = Prelude.pure newValue, ..}