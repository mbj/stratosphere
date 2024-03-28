module Stratosphere.ResilienceHub.App.EventSubscriptionProperty (
        EventSubscriptionProperty(..), mkEventSubscriptionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EventSubscriptionProperty
  = EventSubscriptionProperty {eventType :: (Value Prelude.Text),
                               name :: (Value Prelude.Text),
                               snsTopicArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEventSubscriptionProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> EventSubscriptionProperty
mkEventSubscriptionProperty eventType name
  = EventSubscriptionProperty
      {eventType = eventType, name = name, snsTopicArn = Prelude.Nothing}
instance ToResourceProperties EventSubscriptionProperty where
  toResourceProperties EventSubscriptionProperty {..}
    = ResourceProperties
        {awsType = "AWS::ResilienceHub::App.EventSubscription",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["EventType" JSON..= eventType, "Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "SnsTopicArn" Prelude.<$> snsTopicArn]))}
instance JSON.ToJSON EventSubscriptionProperty where
  toJSON EventSubscriptionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["EventType" JSON..= eventType, "Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "SnsTopicArn" Prelude.<$> snsTopicArn])))
instance Property "EventType" EventSubscriptionProperty where
  type PropertyType "EventType" EventSubscriptionProperty = Value Prelude.Text
  set newValue EventSubscriptionProperty {..}
    = EventSubscriptionProperty {eventType = newValue, ..}
instance Property "Name" EventSubscriptionProperty where
  type PropertyType "Name" EventSubscriptionProperty = Value Prelude.Text
  set newValue EventSubscriptionProperty {..}
    = EventSubscriptionProperty {name = newValue, ..}
instance Property "SnsTopicArn" EventSubscriptionProperty where
  type PropertyType "SnsTopicArn" EventSubscriptionProperty = Value Prelude.Text
  set newValue EventSubscriptionProperty {..}
    = EventSubscriptionProperty
        {snsTopicArn = Prelude.pure newValue, ..}