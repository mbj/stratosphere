module Stratosphere.Budgets.Budget.NotificationWithSubscribersProperty (
        module Exports, NotificationWithSubscribersProperty(..),
        mkNotificationWithSubscribersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Budgets.Budget.NotificationProperty as Exports
import {-# SOURCE #-} Stratosphere.Budgets.Budget.SubscriberProperty as Exports
import Stratosphere.ResourceProperties
data NotificationWithSubscribersProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-notificationwithsubscribers.html>
    NotificationWithSubscribersProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-notificationwithsubscribers.html#cfn-budgets-budget-notificationwithsubscribers-notification>
                                         notification :: NotificationProperty,
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-notificationwithsubscribers.html#cfn-budgets-budget-notificationwithsubscribers-subscribers>
                                         subscribers :: [SubscriberProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNotificationWithSubscribersProperty ::
  NotificationProperty
  -> [SubscriberProperty] -> NotificationWithSubscribersProperty
mkNotificationWithSubscribersProperty notification subscribers
  = NotificationWithSubscribersProperty
      {haddock_workaround_ = (), notification = notification,
       subscribers = subscribers}
instance ToResourceProperties NotificationWithSubscribersProperty where
  toResourceProperties NotificationWithSubscribersProperty {..}
    = ResourceProperties
        {awsType = "AWS::Budgets::Budget.NotificationWithSubscribers",
         supportsTags = Prelude.False,
         properties = ["Notification" JSON..= notification,
                       "Subscribers" JSON..= subscribers]}
instance JSON.ToJSON NotificationWithSubscribersProperty where
  toJSON NotificationWithSubscribersProperty {..}
    = JSON.object
        ["Notification" JSON..= notification,
         "Subscribers" JSON..= subscribers]
instance Property "Notification" NotificationWithSubscribersProperty where
  type PropertyType "Notification" NotificationWithSubscribersProperty = NotificationProperty
  set newValue NotificationWithSubscribersProperty {..}
    = NotificationWithSubscribersProperty {notification = newValue, ..}
instance Property "Subscribers" NotificationWithSubscribersProperty where
  type PropertyType "Subscribers" NotificationWithSubscribersProperty = [SubscriberProperty]
  set newValue NotificationWithSubscribersProperty {..}
    = NotificationWithSubscribersProperty {subscribers = newValue, ..}