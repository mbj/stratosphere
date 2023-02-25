module Stratosphere.SageMaker.Workteam.NotificationConfigurationProperty (
        NotificationConfigurationProperty(..),
        mkNotificationConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NotificationConfigurationProperty
  = NotificationConfigurationProperty {notificationTopicArn :: (Value Prelude.Text)}
mkNotificationConfigurationProperty ::
  Value Prelude.Text -> NotificationConfigurationProperty
mkNotificationConfigurationProperty notificationTopicArn
  = NotificationConfigurationProperty
      {notificationTopicArn = notificationTopicArn}
instance ToResourceProperties NotificationConfigurationProperty where
  toResourceProperties NotificationConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::Workteam.NotificationConfiguration",
         properties = ["NotificationTopicArn" JSON..= notificationTopicArn]}
instance JSON.ToJSON NotificationConfigurationProperty where
  toJSON NotificationConfigurationProperty {..}
    = JSON.object ["NotificationTopicArn" JSON..= notificationTopicArn]
instance Property "NotificationTopicArn" NotificationConfigurationProperty where
  type PropertyType "NotificationTopicArn" NotificationConfigurationProperty = Value Prelude.Text
  set newValue NotificationConfigurationProperty {}
    = NotificationConfigurationProperty
        {notificationTopicArn = newValue, ..}