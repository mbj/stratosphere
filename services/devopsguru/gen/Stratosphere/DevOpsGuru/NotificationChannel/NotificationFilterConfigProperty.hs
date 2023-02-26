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
  = NotificationFilterConfigProperty {messageTypes :: (Prelude.Maybe (ValueList Prelude.Text)),
                                      severities :: (Prelude.Maybe (ValueList Prelude.Text))}
mkNotificationFilterConfigProperty ::
  NotificationFilterConfigProperty
mkNotificationFilterConfigProperty
  = NotificationFilterConfigProperty
      {messageTypes = Prelude.Nothing, severities = Prelude.Nothing}
instance ToResourceProperties NotificationFilterConfigProperty where
  toResourceProperties NotificationFilterConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::DevOpsGuru::NotificationChannel.NotificationFilterConfig",
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