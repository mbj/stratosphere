module Stratosphere.FMS.NotificationChannel (
        NotificationChannel(..), mkNotificationChannel
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NotificationChannel
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-fms-notificationchannel.html>
    NotificationChannel {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-fms-notificationchannel.html#cfn-fms-notificationchannel-snsrolename>
                         snsRoleName :: (Value Prelude.Text),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-fms-notificationchannel.html#cfn-fms-notificationchannel-snstopicarn>
                         snsTopicArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNotificationChannel ::
  Value Prelude.Text -> Value Prelude.Text -> NotificationChannel
mkNotificationChannel snsRoleName snsTopicArn
  = NotificationChannel
      {haddock_workaround_ = (), snsRoleName = snsRoleName,
       snsTopicArn = snsTopicArn}
instance ToResourceProperties NotificationChannel where
  toResourceProperties NotificationChannel {..}
    = ResourceProperties
        {awsType = "AWS::FMS::NotificationChannel",
         supportsTags = Prelude.False,
         properties = ["SnsRoleName" JSON..= snsRoleName,
                       "SnsTopicArn" JSON..= snsTopicArn]}
instance JSON.ToJSON NotificationChannel where
  toJSON NotificationChannel {..}
    = JSON.object
        ["SnsRoleName" JSON..= snsRoleName,
         "SnsTopicArn" JSON..= snsTopicArn]
instance Property "SnsRoleName" NotificationChannel where
  type PropertyType "SnsRoleName" NotificationChannel = Value Prelude.Text
  set newValue NotificationChannel {..}
    = NotificationChannel {snsRoleName = newValue, ..}
instance Property "SnsTopicArn" NotificationChannel where
  type PropertyType "SnsTopicArn" NotificationChannel = Value Prelude.Text
  set newValue NotificationChannel {..}
    = NotificationChannel {snsTopicArn = newValue, ..}