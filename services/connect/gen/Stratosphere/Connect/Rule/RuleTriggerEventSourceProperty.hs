module Stratosphere.Connect.Rule.RuleTriggerEventSourceProperty (
        RuleTriggerEventSourceProperty(..),
        mkRuleTriggerEventSourceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RuleTriggerEventSourceProperty
  = RuleTriggerEventSourceProperty {eventSourceName :: (Value Prelude.Text),
                                    integrationAssociationArn :: (Prelude.Maybe (Value Prelude.Text))}
mkRuleTriggerEventSourceProperty ::
  Value Prelude.Text -> RuleTriggerEventSourceProperty
mkRuleTriggerEventSourceProperty eventSourceName
  = RuleTriggerEventSourceProperty
      {eventSourceName = eventSourceName,
       integrationAssociationArn = Prelude.Nothing}
instance ToResourceProperties RuleTriggerEventSourceProperty where
  toResourceProperties RuleTriggerEventSourceProperty {..}
    = ResourceProperties
        {awsType = "AWS::Connect::Rule.RuleTriggerEventSource",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["EventSourceName" JSON..= eventSourceName]
                           (Prelude.catMaybes
                              [(JSON..=) "IntegrationAssociationArn"
                                 Prelude.<$> integrationAssociationArn]))}
instance JSON.ToJSON RuleTriggerEventSourceProperty where
  toJSON RuleTriggerEventSourceProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["EventSourceName" JSON..= eventSourceName]
              (Prelude.catMaybes
                 [(JSON..=) "IntegrationAssociationArn"
                    Prelude.<$> integrationAssociationArn])))
instance Property "EventSourceName" RuleTriggerEventSourceProperty where
  type PropertyType "EventSourceName" RuleTriggerEventSourceProperty = Value Prelude.Text
  set newValue RuleTriggerEventSourceProperty {..}
    = RuleTriggerEventSourceProperty {eventSourceName = newValue, ..}
instance Property "IntegrationAssociationArn" RuleTriggerEventSourceProperty where
  type PropertyType "IntegrationAssociationArn" RuleTriggerEventSourceProperty = Value Prelude.Text
  set newValue RuleTriggerEventSourceProperty {..}
    = RuleTriggerEventSourceProperty
        {integrationAssociationArn = Prelude.pure newValue, ..}