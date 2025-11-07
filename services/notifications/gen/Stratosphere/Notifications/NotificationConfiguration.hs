module Stratosphere.Notifications.NotificationConfiguration (
        NotificationConfiguration(..), mkNotificationConfiguration
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data NotificationConfiguration
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-notifications-notificationconfiguration.html>
    NotificationConfiguration {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-notifications-notificationconfiguration.html#cfn-notifications-notificationconfiguration-aggregationduration>
                               aggregationDuration :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-notifications-notificationconfiguration.html#cfn-notifications-notificationconfiguration-description>
                               description :: (Value Prelude.Text),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-notifications-notificationconfiguration.html#cfn-notifications-notificationconfiguration-name>
                               name :: (Value Prelude.Text),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-notifications-notificationconfiguration.html#cfn-notifications-notificationconfiguration-tags>
                               tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNotificationConfiguration ::
  Value Prelude.Text
  -> Value Prelude.Text -> NotificationConfiguration
mkNotificationConfiguration description name
  = NotificationConfiguration
      {haddock_workaround_ = (), description = description, name = name,
       aggregationDuration = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties NotificationConfiguration where
  toResourceProperties NotificationConfiguration {..}
    = ResourceProperties
        {awsType = "AWS::Notifications::NotificationConfiguration",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Description" JSON..= description, "Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "AggregationDuration" Prelude.<$> aggregationDuration,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON NotificationConfiguration where
  toJSON NotificationConfiguration {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Description" JSON..= description, "Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "AggregationDuration" Prelude.<$> aggregationDuration,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "AggregationDuration" NotificationConfiguration where
  type PropertyType "AggregationDuration" NotificationConfiguration = Value Prelude.Text
  set newValue NotificationConfiguration {..}
    = NotificationConfiguration
        {aggregationDuration = Prelude.pure newValue, ..}
instance Property "Description" NotificationConfiguration where
  type PropertyType "Description" NotificationConfiguration = Value Prelude.Text
  set newValue NotificationConfiguration {..}
    = NotificationConfiguration {description = newValue, ..}
instance Property "Name" NotificationConfiguration where
  type PropertyType "Name" NotificationConfiguration = Value Prelude.Text
  set newValue NotificationConfiguration {..}
    = NotificationConfiguration {name = newValue, ..}
instance Property "Tags" NotificationConfiguration where
  type PropertyType "Tags" NotificationConfiguration = [Tag]
  set newValue NotificationConfiguration {..}
    = NotificationConfiguration {tags = Prelude.pure newValue, ..}