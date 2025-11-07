module Stratosphere.Notifications.NotificationHub.NotificationHubStatusSummaryProperty (
        NotificationHubStatusSummaryProperty(..),
        mkNotificationHubStatusSummaryProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NotificationHubStatusSummaryProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-notifications-notificationhub-notificationhubstatussummary.html>
    NotificationHubStatusSummaryProperty {haddock_workaround_ :: (),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-notifications-notificationhub-notificationhubstatussummary.html#cfn-notifications-notificationhub-notificationhubstatussummary-notificationhubstatus>
                                          notificationHubStatus :: (Value Prelude.Text),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-notifications-notificationhub-notificationhubstatussummary.html#cfn-notifications-notificationhub-notificationhubstatussummary-notificationhubstatusreason>
                                          notificationHubStatusReason :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNotificationHubStatusSummaryProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> NotificationHubStatusSummaryProperty
mkNotificationHubStatusSummaryProperty
  notificationHubStatus
  notificationHubStatusReason
  = NotificationHubStatusSummaryProperty
      {haddock_workaround_ = (),
       notificationHubStatus = notificationHubStatus,
       notificationHubStatusReason = notificationHubStatusReason}
instance ToResourceProperties NotificationHubStatusSummaryProperty where
  toResourceProperties NotificationHubStatusSummaryProperty {..}
    = ResourceProperties
        {awsType = "AWS::Notifications::NotificationHub.NotificationHubStatusSummary",
         supportsTags = Prelude.False,
         properties = ["NotificationHubStatus"
                         JSON..= notificationHubStatus,
                       "NotificationHubStatusReason" JSON..= notificationHubStatusReason]}
instance JSON.ToJSON NotificationHubStatusSummaryProperty where
  toJSON NotificationHubStatusSummaryProperty {..}
    = JSON.object
        ["NotificationHubStatus" JSON..= notificationHubStatus,
         "NotificationHubStatusReason" JSON..= notificationHubStatusReason]
instance Property "NotificationHubStatus" NotificationHubStatusSummaryProperty where
  type PropertyType "NotificationHubStatus" NotificationHubStatusSummaryProperty = Value Prelude.Text
  set newValue NotificationHubStatusSummaryProperty {..}
    = NotificationHubStatusSummaryProperty
        {notificationHubStatus = newValue, ..}
instance Property "NotificationHubStatusReason" NotificationHubStatusSummaryProperty where
  type PropertyType "NotificationHubStatusReason" NotificationHubStatusSummaryProperty = Value Prelude.Text
  set newValue NotificationHubStatusSummaryProperty {..}
    = NotificationHubStatusSummaryProperty
        {notificationHubStatusReason = newValue, ..}