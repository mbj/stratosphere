module Stratosphere.RolesAnywhere.TrustAnchor.NotificationSettingProperty (
        NotificationSettingProperty(..), mkNotificationSettingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NotificationSettingProperty
  = NotificationSettingProperty {channel :: (Prelude.Maybe (Value Prelude.Text)),
                                 enabled :: (Value Prelude.Bool),
                                 event :: (Value Prelude.Text),
                                 threshold :: (Prelude.Maybe (Value Prelude.Double))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNotificationSettingProperty ::
  Value Prelude.Bool
  -> Value Prelude.Text -> NotificationSettingProperty
mkNotificationSettingProperty enabled event
  = NotificationSettingProperty
      {enabled = enabled, event = event, channel = Prelude.Nothing,
       threshold = Prelude.Nothing}
instance ToResourceProperties NotificationSettingProperty where
  toResourceProperties NotificationSettingProperty {..}
    = ResourceProperties
        {awsType = "AWS::RolesAnywhere::TrustAnchor.NotificationSetting",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Enabled" JSON..= enabled, "Event" JSON..= event]
                           (Prelude.catMaybes
                              [(JSON..=) "Channel" Prelude.<$> channel,
                               (JSON..=) "Threshold" Prelude.<$> threshold]))}
instance JSON.ToJSON NotificationSettingProperty where
  toJSON NotificationSettingProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Enabled" JSON..= enabled, "Event" JSON..= event]
              (Prelude.catMaybes
                 [(JSON..=) "Channel" Prelude.<$> channel,
                  (JSON..=) "Threshold" Prelude.<$> threshold])))
instance Property "Channel" NotificationSettingProperty where
  type PropertyType "Channel" NotificationSettingProperty = Value Prelude.Text
  set newValue NotificationSettingProperty {..}
    = NotificationSettingProperty {channel = Prelude.pure newValue, ..}
instance Property "Enabled" NotificationSettingProperty where
  type PropertyType "Enabled" NotificationSettingProperty = Value Prelude.Bool
  set newValue NotificationSettingProperty {..}
    = NotificationSettingProperty {enabled = newValue, ..}
instance Property "Event" NotificationSettingProperty where
  type PropertyType "Event" NotificationSettingProperty = Value Prelude.Text
  set newValue NotificationSettingProperty {..}
    = NotificationSettingProperty {event = newValue, ..}
instance Property "Threshold" NotificationSettingProperty where
  type PropertyType "Threshold" NotificationSettingProperty = Value Prelude.Double
  set newValue NotificationSettingProperty {..}
    = NotificationSettingProperty
        {threshold = Prelude.pure newValue, ..}