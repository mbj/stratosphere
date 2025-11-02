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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-notificationconfiguration.html>
    NotificationConfigurationProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-notificationconfiguration.html#cfn-autoscaling-autoscalinggroup-notificationconfiguration-notificationtypes>
                                       notificationTypes :: (Prelude.Maybe (ValueList Prelude.Text)),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-notificationconfiguration.html#cfn-autoscaling-autoscalinggroup-notificationconfiguration-topicarn>
                                       topicARN :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNotificationConfigurationProperty ::
  ValueList Prelude.Text -> NotificationConfigurationProperty
mkNotificationConfigurationProperty topicARN
  = NotificationConfigurationProperty
      {haddock_workaround_ = (), topicARN = topicARN,
       notificationTypes = Prelude.Nothing}
instance ToResourceProperties NotificationConfigurationProperty where
  toResourceProperties NotificationConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::AutoScaling::AutoScalingGroup.NotificationConfiguration",
         supportsTags = Prelude.False,
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
  type PropertyType "NotificationTypes" NotificationConfigurationProperty = ValueList Prelude.Text
  set newValue NotificationConfigurationProperty {..}
    = NotificationConfigurationProperty
        {notificationTypes = Prelude.pure newValue, ..}
instance Property "TopicARN" NotificationConfigurationProperty where
  type PropertyType "TopicARN" NotificationConfigurationProperty = ValueList Prelude.Text
  set newValue NotificationConfigurationProperty {..}
    = NotificationConfigurationProperty {topicARN = newValue, ..}