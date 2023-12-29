module Stratosphere.DMS.EventSubscription (
        EventSubscription(..), mkEventSubscription
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data EventSubscription
  = EventSubscription {enabled :: (Prelude.Maybe (Value Prelude.Bool)),
                       eventCategories :: (Prelude.Maybe (ValueList Prelude.Text)),
                       snsTopicArn :: (Value Prelude.Text),
                       sourceIds :: (Prelude.Maybe (ValueList Prelude.Text)),
                       sourceType :: (Prelude.Maybe (Value Prelude.Text)),
                       subscriptionName :: (Prelude.Maybe (Value Prelude.Text)),
                       tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEventSubscription :: Value Prelude.Text -> EventSubscription
mkEventSubscription snsTopicArn
  = EventSubscription
      {snsTopicArn = snsTopicArn, enabled = Prelude.Nothing,
       eventCategories = Prelude.Nothing, sourceIds = Prelude.Nothing,
       sourceType = Prelude.Nothing, subscriptionName = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties EventSubscription where
  toResourceProperties EventSubscription {..}
    = ResourceProperties
        {awsType = "AWS::DMS::EventSubscription",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["SnsTopicArn" JSON..= snsTopicArn]
                           (Prelude.catMaybes
                              [(JSON..=) "Enabled" Prelude.<$> enabled,
                               (JSON..=) "EventCategories" Prelude.<$> eventCategories,
                               (JSON..=) "SourceIds" Prelude.<$> sourceIds,
                               (JSON..=) "SourceType" Prelude.<$> sourceType,
                               (JSON..=) "SubscriptionName" Prelude.<$> subscriptionName,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON EventSubscription where
  toJSON EventSubscription {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["SnsTopicArn" JSON..= snsTopicArn]
              (Prelude.catMaybes
                 [(JSON..=) "Enabled" Prelude.<$> enabled,
                  (JSON..=) "EventCategories" Prelude.<$> eventCategories,
                  (JSON..=) "SourceIds" Prelude.<$> sourceIds,
                  (JSON..=) "SourceType" Prelude.<$> sourceType,
                  (JSON..=) "SubscriptionName" Prelude.<$> subscriptionName,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Enabled" EventSubscription where
  type PropertyType "Enabled" EventSubscription = Value Prelude.Bool
  set newValue EventSubscription {..}
    = EventSubscription {enabled = Prelude.pure newValue, ..}
instance Property "EventCategories" EventSubscription where
  type PropertyType "EventCategories" EventSubscription = ValueList Prelude.Text
  set newValue EventSubscription {..}
    = EventSubscription {eventCategories = Prelude.pure newValue, ..}
instance Property "SnsTopicArn" EventSubscription where
  type PropertyType "SnsTopicArn" EventSubscription = Value Prelude.Text
  set newValue EventSubscription {..}
    = EventSubscription {snsTopicArn = newValue, ..}
instance Property "SourceIds" EventSubscription where
  type PropertyType "SourceIds" EventSubscription = ValueList Prelude.Text
  set newValue EventSubscription {..}
    = EventSubscription {sourceIds = Prelude.pure newValue, ..}
instance Property "SourceType" EventSubscription where
  type PropertyType "SourceType" EventSubscription = Value Prelude.Text
  set newValue EventSubscription {..}
    = EventSubscription {sourceType = Prelude.pure newValue, ..}
instance Property "SubscriptionName" EventSubscription where
  type PropertyType "SubscriptionName" EventSubscription = Value Prelude.Text
  set newValue EventSubscription {..}
    = EventSubscription {subscriptionName = Prelude.pure newValue, ..}
instance Property "Tags" EventSubscription where
  type PropertyType "Tags" EventSubscription = [Tag]
  set newValue EventSubscription {..}
    = EventSubscription {tags = Prelude.pure newValue, ..}