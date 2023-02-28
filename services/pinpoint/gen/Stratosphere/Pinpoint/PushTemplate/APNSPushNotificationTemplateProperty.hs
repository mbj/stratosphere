module Stratosphere.Pinpoint.PushTemplate.APNSPushNotificationTemplateProperty (
        APNSPushNotificationTemplateProperty(..),
        mkAPNSPushNotificationTemplateProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data APNSPushNotificationTemplateProperty
  = APNSPushNotificationTemplateProperty {action :: (Prelude.Maybe (Value Prelude.Text)),
                                          body :: (Prelude.Maybe (Value Prelude.Text)),
                                          mediaUrl :: (Prelude.Maybe (Value Prelude.Text)),
                                          sound :: (Prelude.Maybe (Value Prelude.Text)),
                                          title :: (Prelude.Maybe (Value Prelude.Text)),
                                          url :: (Prelude.Maybe (Value Prelude.Text))}
mkAPNSPushNotificationTemplateProperty ::
  APNSPushNotificationTemplateProperty
mkAPNSPushNotificationTemplateProperty
  = APNSPushNotificationTemplateProperty
      {action = Prelude.Nothing, body = Prelude.Nothing,
       mediaUrl = Prelude.Nothing, sound = Prelude.Nothing,
       title = Prelude.Nothing, url = Prelude.Nothing}
instance ToResourceProperties APNSPushNotificationTemplateProperty where
  toResourceProperties APNSPushNotificationTemplateProperty {..}
    = ResourceProperties
        {awsType = "AWS::Pinpoint::PushTemplate.APNSPushNotificationTemplate",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Action" Prelude.<$> action,
                            (JSON..=) "Body" Prelude.<$> body,
                            (JSON..=) "MediaUrl" Prelude.<$> mediaUrl,
                            (JSON..=) "Sound" Prelude.<$> sound,
                            (JSON..=) "Title" Prelude.<$> title,
                            (JSON..=) "Url" Prelude.<$> url])}
instance JSON.ToJSON APNSPushNotificationTemplateProperty where
  toJSON APNSPushNotificationTemplateProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Action" Prelude.<$> action,
               (JSON..=) "Body" Prelude.<$> body,
               (JSON..=) "MediaUrl" Prelude.<$> mediaUrl,
               (JSON..=) "Sound" Prelude.<$> sound,
               (JSON..=) "Title" Prelude.<$> title,
               (JSON..=) "Url" Prelude.<$> url]))
instance Property "Action" APNSPushNotificationTemplateProperty where
  type PropertyType "Action" APNSPushNotificationTemplateProperty = Value Prelude.Text
  set newValue APNSPushNotificationTemplateProperty {..}
    = APNSPushNotificationTemplateProperty
        {action = Prelude.pure newValue, ..}
instance Property "Body" APNSPushNotificationTemplateProperty where
  type PropertyType "Body" APNSPushNotificationTemplateProperty = Value Prelude.Text
  set newValue APNSPushNotificationTemplateProperty {..}
    = APNSPushNotificationTemplateProperty
        {body = Prelude.pure newValue, ..}
instance Property "MediaUrl" APNSPushNotificationTemplateProperty where
  type PropertyType "MediaUrl" APNSPushNotificationTemplateProperty = Value Prelude.Text
  set newValue APNSPushNotificationTemplateProperty {..}
    = APNSPushNotificationTemplateProperty
        {mediaUrl = Prelude.pure newValue, ..}
instance Property "Sound" APNSPushNotificationTemplateProperty where
  type PropertyType "Sound" APNSPushNotificationTemplateProperty = Value Prelude.Text
  set newValue APNSPushNotificationTemplateProperty {..}
    = APNSPushNotificationTemplateProperty
        {sound = Prelude.pure newValue, ..}
instance Property "Title" APNSPushNotificationTemplateProperty where
  type PropertyType "Title" APNSPushNotificationTemplateProperty = Value Prelude.Text
  set newValue APNSPushNotificationTemplateProperty {..}
    = APNSPushNotificationTemplateProperty
        {title = Prelude.pure newValue, ..}
instance Property "Url" APNSPushNotificationTemplateProperty where
  type PropertyType "Url" APNSPushNotificationTemplateProperty = Value Prelude.Text
  set newValue APNSPushNotificationTemplateProperty {..}
    = APNSPushNotificationTemplateProperty
        {url = Prelude.pure newValue, ..}