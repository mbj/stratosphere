module Stratosphere.Neptune.EventSubscription (
        EventSubscription(..), mkEventSubscription
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data EventSubscription
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptune-eventsubscription.html>
    EventSubscription {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptune-eventsubscription.html#cfn-neptune-eventsubscription-enabled>
                       enabled :: (Prelude.Maybe (Value Prelude.Bool)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptune-eventsubscription.html#cfn-neptune-eventsubscription-eventcategories>
                       eventCategories :: (Prelude.Maybe (ValueList Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptune-eventsubscription.html#cfn-neptune-eventsubscription-snstopicarn>
                       snsTopicArn :: (Value Prelude.Text),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptune-eventsubscription.html#cfn-neptune-eventsubscription-sourceids>
                       sourceIds :: (Prelude.Maybe (ValueList Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptune-eventsubscription.html#cfn-neptune-eventsubscription-sourcetype>
                       sourceType :: (Prelude.Maybe (Value Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptune-eventsubscription.html#cfn-neptune-eventsubscription-subscriptionname>
                       subscriptionName :: (Prelude.Maybe (Value Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptune-eventsubscription.html#cfn-neptune-eventsubscription-tags>
                       tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEventSubscription :: Value Prelude.Text -> EventSubscription
mkEventSubscription snsTopicArn
  = EventSubscription
      {haddock_workaround_ = (), snsTopicArn = snsTopicArn,
       enabled = Prelude.Nothing, eventCategories = Prelude.Nothing,
       sourceIds = Prelude.Nothing, sourceType = Prelude.Nothing,
       subscriptionName = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties EventSubscription where
  toResourceProperties EventSubscription {..}
    = ResourceProperties
        {awsType = "AWS::Neptune::EventSubscription",
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