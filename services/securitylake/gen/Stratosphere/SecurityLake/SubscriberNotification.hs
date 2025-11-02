module Stratosphere.SecurityLake.SubscriberNotification (
        module Exports, SubscriberNotification(..),
        mkSubscriberNotification
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SecurityLake.SubscriberNotification.NotificationConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SubscriberNotification
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-securitylake-subscribernotification.html>
    SubscriberNotification {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-securitylake-subscribernotification.html#cfn-securitylake-subscribernotification-notificationconfiguration>
                            notificationConfiguration :: NotificationConfigurationProperty,
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-securitylake-subscribernotification.html#cfn-securitylake-subscribernotification-subscriberarn>
                            subscriberArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSubscriberNotification ::
  NotificationConfigurationProperty
  -> Value Prelude.Text -> SubscriberNotification
mkSubscriberNotification notificationConfiguration subscriberArn
  = SubscriberNotification
      {haddock_workaround_ = (),
       notificationConfiguration = notificationConfiguration,
       subscriberArn = subscriberArn}
instance ToResourceProperties SubscriberNotification where
  toResourceProperties SubscriberNotification {..}
    = ResourceProperties
        {awsType = "AWS::SecurityLake::SubscriberNotification",
         supportsTags = Prelude.False,
         properties = ["NotificationConfiguration"
                         JSON..= notificationConfiguration,
                       "SubscriberArn" JSON..= subscriberArn]}
instance JSON.ToJSON SubscriberNotification where
  toJSON SubscriberNotification {..}
    = JSON.object
        ["NotificationConfiguration" JSON..= notificationConfiguration,
         "SubscriberArn" JSON..= subscriberArn]
instance Property "NotificationConfiguration" SubscriberNotification where
  type PropertyType "NotificationConfiguration" SubscriberNotification = NotificationConfigurationProperty
  set newValue SubscriberNotification {..}
    = SubscriberNotification {notificationConfiguration = newValue, ..}
instance Property "SubscriberArn" SubscriberNotification where
  type PropertyType "SubscriberArn" SubscriberNotification = Value Prelude.Text
  set newValue SubscriberNotification {..}
    = SubscriberNotification {subscriberArn = newValue, ..}