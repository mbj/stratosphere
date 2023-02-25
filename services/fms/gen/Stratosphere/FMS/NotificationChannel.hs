module Stratosphere.FMS.NotificationChannel (
        NotificationChannel(..), mkNotificationChannel
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NotificationChannel
  = NotificationChannel {snsRoleName :: (Value Prelude.Text),
                         snsTopicArn :: (Value Prelude.Text)}
mkNotificationChannel ::
  Value Prelude.Text -> Value Prelude.Text -> NotificationChannel
mkNotificationChannel snsRoleName snsTopicArn
  = NotificationChannel
      {snsRoleName = snsRoleName, snsTopicArn = snsTopicArn}
instance ToResourceProperties NotificationChannel where
  toResourceProperties NotificationChannel {..}
    = ResourceProperties
        {awsType = "AWS::FMS::NotificationChannel",
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