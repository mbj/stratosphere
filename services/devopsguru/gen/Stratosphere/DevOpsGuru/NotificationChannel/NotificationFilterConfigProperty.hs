module Stratosphere.DevOpsGuru.NotificationChannel.NotificationFilterConfigProperty (
        NotificationFilterConfigProperty(..),
        mkNotificationFilterConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NotificationFilterConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-devopsguru-notificationchannel-notificationfilterconfig.html>
    NotificationFilterConfigProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-devopsguru-notificationchannel-notificationfilterconfig.html#cfn-devopsguru-notificationchannel-notificationfilterconfig-messagetypes>
                                      messageTypes :: (Prelude.Maybe (ValueList Prelude.Text)),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-devopsguru-notificationchannel-notificationfilterconfig.html#cfn-devopsguru-notificationchannel-notificationfilterconfig-severities>
                                      severities :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNotificationFilterConfigProperty ::
  NotificationFilterConfigProperty
mkNotificationFilterConfigProperty
  = NotificationFilterConfigProperty
      {haddock_workaround_ = (), messageTypes = Prelude.Nothing,
       severities = Prelude.Nothing}
instance ToResourceProperties NotificationFilterConfigProperty where
  toResourceProperties NotificationFilterConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::DevOpsGuru::NotificationChannel.NotificationFilterConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "MessageTypes" Prelude.<$> messageTypes,
                            (JSON..=) "Severities" Prelude.<$> severities])}
instance JSON.ToJSON NotificationFilterConfigProperty where
  toJSON NotificationFilterConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "MessageTypes" Prelude.<$> messageTypes,
               (JSON..=) "Severities" Prelude.<$> severities]))
instance Property "MessageTypes" NotificationFilterConfigProperty where
  type PropertyType "MessageTypes" NotificationFilterConfigProperty = ValueList Prelude.Text
  set newValue NotificationFilterConfigProperty {..}
    = NotificationFilterConfigProperty
        {messageTypes = Prelude.pure newValue, ..}
instance Property "Severities" NotificationFilterConfigProperty where
  type PropertyType "Severities" NotificationFilterConfigProperty = ValueList Prelude.Text
  set newValue NotificationFilterConfigProperty {..}
    = NotificationFilterConfigProperty
        {severities = Prelude.pure newValue, ..}