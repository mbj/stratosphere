module Stratosphere.Notifications.NotificationHub (
        NotificationHub(..), mkNotificationHub
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NotificationHub
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-notifications-notificationhub.html>
    NotificationHub {haddock_workaround_ :: (),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-notifications-notificationhub.html#cfn-notifications-notificationhub-region>
                     region :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNotificationHub :: Value Prelude.Text -> NotificationHub
mkNotificationHub region
  = NotificationHub {haddock_workaround_ = (), region = region}
instance ToResourceProperties NotificationHub where
  toResourceProperties NotificationHub {..}
    = ResourceProperties
        {awsType = "AWS::Notifications::NotificationHub",
         supportsTags = Prelude.False,
         properties = ["Region" JSON..= region]}
instance JSON.ToJSON NotificationHub where
  toJSON NotificationHub {..} = JSON.object ["Region" JSON..= region]
instance Property "Region" NotificationHub where
  type PropertyType "Region" NotificationHub = Value Prelude.Text
  set newValue NotificationHub {..}
    = NotificationHub {region = newValue, ..}