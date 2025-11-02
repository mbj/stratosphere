module Stratosphere.SecurityLake.SubscriberNotification.NotificationConfigurationProperty (
        module Exports, NotificationConfigurationProperty(..),
        mkNotificationConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SecurityLake.SubscriberNotification.HttpsNotificationConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data NotificationConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securitylake-subscribernotification-notificationconfiguration.html>
    NotificationConfigurationProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securitylake-subscribernotification-notificationconfiguration.html#cfn-securitylake-subscribernotification-notificationconfiguration-httpsnotificationconfiguration>
                                       httpsNotificationConfiguration :: (Prelude.Maybe HttpsNotificationConfigurationProperty),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securitylake-subscribernotification-notificationconfiguration.html#cfn-securitylake-subscribernotification-notificationconfiguration-sqsnotificationconfiguration>
                                       sqsNotificationConfiguration :: (Prelude.Maybe JSON.Object)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNotificationConfigurationProperty ::
  NotificationConfigurationProperty
mkNotificationConfigurationProperty
  = NotificationConfigurationProperty
      {haddock_workaround_ = (),
       httpsNotificationConfiguration = Prelude.Nothing,
       sqsNotificationConfiguration = Prelude.Nothing}
instance ToResourceProperties NotificationConfigurationProperty where
  toResourceProperties NotificationConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::SecurityLake::SubscriberNotification.NotificationConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "HttpsNotificationConfiguration"
                              Prelude.<$> httpsNotificationConfiguration,
                            (JSON..=) "SqsNotificationConfiguration"
                              Prelude.<$> sqsNotificationConfiguration])}
instance JSON.ToJSON NotificationConfigurationProperty where
  toJSON NotificationConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "HttpsNotificationConfiguration"
                 Prelude.<$> httpsNotificationConfiguration,
               (JSON..=) "SqsNotificationConfiguration"
                 Prelude.<$> sqsNotificationConfiguration]))
instance Property "HttpsNotificationConfiguration" NotificationConfigurationProperty where
  type PropertyType "HttpsNotificationConfiguration" NotificationConfigurationProperty = HttpsNotificationConfigurationProperty
  set newValue NotificationConfigurationProperty {..}
    = NotificationConfigurationProperty
        {httpsNotificationConfiguration = Prelude.pure newValue, ..}
instance Property "SqsNotificationConfiguration" NotificationConfigurationProperty where
  type PropertyType "SqsNotificationConfiguration" NotificationConfigurationProperty = JSON.Object
  set newValue NotificationConfigurationProperty {..}
    = NotificationConfigurationProperty
        {sqsNotificationConfiguration = Prelude.pure newValue, ..}