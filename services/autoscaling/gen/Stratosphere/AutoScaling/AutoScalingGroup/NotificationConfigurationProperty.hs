module Stratosphere.AutoScaling.AutoScalingGroup.NotificationConfigurationProperty (
        NotificationConfigurationProperty(..),
        mkNotificationConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NotificationConfigurationProperty
  = NotificationConfigurationProperty {notificationTypes :: (Prelude.Maybe (ValueList (Value Prelude.Text))),
                                       topicARN :: (Value Prelude.Text)}
mkNotificationConfigurationProperty ::
  Value Prelude.Text -> NotificationConfigurationProperty
mkNotificationConfigurationProperty topicARN
  = NotificationConfigurationProperty
      {topicARN = topicARN, notificationTypes = Prelude.Nothing}
instance ToResourceProperties NotificationConfigurationProperty where
  toResourceProperties NotificationConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::AutoScaling::AutoScalingGroup.NotificationConfiguration",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["TopicARN" JSON..= topicARN]
                           (Prelude.catMaybes
                              [(JSON..=) "NotificationTypes" Prelude.<$> notificationTypes]))}
instance JSON.ToJSON NotificationConfigurationProperty where
  toJSON NotificationConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["TopicARN" JSON..= topicARN]
              (Prelude.catMaybes
                 [(JSON..=) "NotificationTypes" Prelude.<$> notificationTypes])))
instance Property "NotificationTypes" NotificationConfigurationProperty where
  type PropertyType "NotificationTypes" NotificationConfigurationProperty = ValueList (Value Prelude.Text)
  set newValue NotificationConfigurationProperty {..}
    = NotificationConfigurationProperty
        {notificationTypes = Prelude.pure newValue, ..}
instance Property "TopicARN" NotificationConfigurationProperty where
  type PropertyType "TopicARN" NotificationConfigurationProperty = Value Prelude.Text
  set newValue NotificationConfigurationProperty {..}
    = NotificationConfigurationProperty {topicARN = newValue, ..}