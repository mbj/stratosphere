module Stratosphere.Redshift.EventSubscription (
        EventSubscription(..), mkEventSubscription
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data EventSubscription
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-eventsubscription.html>
    EventSubscription {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-eventsubscription.html#cfn-redshift-eventsubscription-enabled>
                       enabled :: (Prelude.Maybe (Value Prelude.Bool)),
                       -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-eventsubscription.html#cfn-redshift-eventsubscription-eventcategories>
                       eventCategories :: (Prelude.Maybe (ValueList Prelude.Text)),
                       -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-eventsubscription.html#cfn-redshift-eventsubscription-severity>
                       severity :: (Prelude.Maybe (Value Prelude.Text)),
                       -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-eventsubscription.html#cfn-redshift-eventsubscription-snstopicarn>
                       snsTopicArn :: (Prelude.Maybe (Value Prelude.Text)),
                       -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-eventsubscription.html#cfn-redshift-eventsubscription-sourceids>
                       sourceIds :: (Prelude.Maybe (ValueList Prelude.Text)),
                       -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-eventsubscription.html#cfn-redshift-eventsubscription-sourcetype>
                       sourceType :: (Prelude.Maybe (Value Prelude.Text)),
                       -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-eventsubscription.html#cfn-redshift-eventsubscription-subscriptionname>
                       subscriptionName :: (Value Prelude.Text),
                       -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-eventsubscription.html#cfn-redshift-eventsubscription-tags>
                       tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEventSubscription :: Value Prelude.Text -> EventSubscription
mkEventSubscription subscriptionName
  = EventSubscription
      {subscriptionName = subscriptionName, enabled = Prelude.Nothing,
       eventCategories = Prelude.Nothing, severity = Prelude.Nothing,
       snsTopicArn = Prelude.Nothing, sourceIds = Prelude.Nothing,
       sourceType = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties EventSubscription where
  toResourceProperties EventSubscription {..}
    = ResourceProperties
        {awsType = "AWS::Redshift::EventSubscription",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["SubscriptionName" JSON..= subscriptionName]
                           (Prelude.catMaybes
                              [(JSON..=) "Enabled" Prelude.<$> enabled,
                               (JSON..=) "EventCategories" Prelude.<$> eventCategories,
                               (JSON..=) "Severity" Prelude.<$> severity,
                               (JSON..=) "SnsTopicArn" Prelude.<$> snsTopicArn,
                               (JSON..=) "SourceIds" Prelude.<$> sourceIds,
                               (JSON..=) "SourceType" Prelude.<$> sourceType,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON EventSubscription where
  toJSON EventSubscription {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["SubscriptionName" JSON..= subscriptionName]
              (Prelude.catMaybes
                 [(JSON..=) "Enabled" Prelude.<$> enabled,
                  (JSON..=) "EventCategories" Prelude.<$> eventCategories,
                  (JSON..=) "Severity" Prelude.<$> severity,
                  (JSON..=) "SnsTopicArn" Prelude.<$> snsTopicArn,
                  (JSON..=) "SourceIds" Prelude.<$> sourceIds,
                  (JSON..=) "SourceType" Prelude.<$> sourceType,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Enabled" EventSubscription where
  type PropertyType "Enabled" EventSubscription = Value Prelude.Bool
  set newValue EventSubscription {..}
    = EventSubscription {enabled = Prelude.pure newValue, ..}
instance Property "EventCategories" EventSubscription where
  type PropertyType "EventCategories" EventSubscription = ValueList Prelude.Text
  set newValue EventSubscription {..}
    = EventSubscription {eventCategories = Prelude.pure newValue, ..}
instance Property "Severity" EventSubscription where
  type PropertyType "Severity" EventSubscription = Value Prelude.Text
  set newValue EventSubscription {..}
    = EventSubscription {severity = Prelude.pure newValue, ..}
instance Property "SnsTopicArn" EventSubscription where
  type PropertyType "SnsTopicArn" EventSubscription = Value Prelude.Text
  set newValue EventSubscription {..}
    = EventSubscription {snsTopicArn = Prelude.pure newValue, ..}
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
    = EventSubscription {subscriptionName = newValue, ..}
instance Property "Tags" EventSubscription where
  type PropertyType "Tags" EventSubscription = [Tag]
  set newValue EventSubscription {..}
    = EventSubscription {tags = Prelude.pure newValue, ..}