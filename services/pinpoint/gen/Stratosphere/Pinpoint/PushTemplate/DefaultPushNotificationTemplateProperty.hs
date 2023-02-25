module Stratosphere.Pinpoint.PushTemplate.DefaultPushNotificationTemplateProperty (
        DefaultPushNotificationTemplateProperty(..),
        mkDefaultPushNotificationTemplateProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DefaultPushNotificationTemplateProperty
  = DefaultPushNotificationTemplateProperty {action :: (Prelude.Maybe (Value Prelude.Text)),
                                             body :: (Prelude.Maybe (Value Prelude.Text)),
                                             sound :: (Prelude.Maybe (Value Prelude.Text)),
                                             title :: (Prelude.Maybe (Value Prelude.Text)),
                                             url :: (Prelude.Maybe (Value Prelude.Text))}
mkDefaultPushNotificationTemplateProperty ::
  DefaultPushNotificationTemplateProperty
mkDefaultPushNotificationTemplateProperty
  = DefaultPushNotificationTemplateProperty
      {action = Prelude.Nothing, body = Prelude.Nothing,
       sound = Prelude.Nothing, title = Prelude.Nothing,
       url = Prelude.Nothing}
instance ToResourceProperties DefaultPushNotificationTemplateProperty where
  toResourceProperties DefaultPushNotificationTemplateProperty {..}
    = ResourceProperties
        {awsType = "AWS::Pinpoint::PushTemplate.DefaultPushNotificationTemplate",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Action" Prelude.<$> action,
                            (JSON..=) "Body" Prelude.<$> body,
                            (JSON..=) "Sound" Prelude.<$> sound,
                            (JSON..=) "Title" Prelude.<$> title,
                            (JSON..=) "Url" Prelude.<$> url])}
instance JSON.ToJSON DefaultPushNotificationTemplateProperty where
  toJSON DefaultPushNotificationTemplateProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Action" Prelude.<$> action,
               (JSON..=) "Body" Prelude.<$> body,
               (JSON..=) "Sound" Prelude.<$> sound,
               (JSON..=) "Title" Prelude.<$> title,
               (JSON..=) "Url" Prelude.<$> url]))
instance Property "Action" DefaultPushNotificationTemplateProperty where
  type PropertyType "Action" DefaultPushNotificationTemplateProperty = Value Prelude.Text
  set newValue DefaultPushNotificationTemplateProperty {..}
    = DefaultPushNotificationTemplateProperty
        {action = Prelude.pure newValue, ..}
instance Property "Body" DefaultPushNotificationTemplateProperty where
  type PropertyType "Body" DefaultPushNotificationTemplateProperty = Value Prelude.Text
  set newValue DefaultPushNotificationTemplateProperty {..}
    = DefaultPushNotificationTemplateProperty
        {body = Prelude.pure newValue, ..}
instance Property "Sound" DefaultPushNotificationTemplateProperty where
  type PropertyType "Sound" DefaultPushNotificationTemplateProperty = Value Prelude.Text
  set newValue DefaultPushNotificationTemplateProperty {..}
    = DefaultPushNotificationTemplateProperty
        {sound = Prelude.pure newValue, ..}
instance Property "Title" DefaultPushNotificationTemplateProperty where
  type PropertyType "Title" DefaultPushNotificationTemplateProperty = Value Prelude.Text
  set newValue DefaultPushNotificationTemplateProperty {..}
    = DefaultPushNotificationTemplateProperty
        {title = Prelude.pure newValue, ..}
instance Property "Url" DefaultPushNotificationTemplateProperty where
  type PropertyType "Url" DefaultPushNotificationTemplateProperty = Value Prelude.Text
  set newValue DefaultPushNotificationTemplateProperty {..}
    = DefaultPushNotificationTemplateProperty
        {url = Prelude.pure newValue, ..}