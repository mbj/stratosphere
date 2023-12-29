module Stratosphere.Pinpoint.PushTemplate.AndroidPushNotificationTemplateProperty (
        AndroidPushNotificationTemplateProperty(..),
        mkAndroidPushNotificationTemplateProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AndroidPushNotificationTemplateProperty
  = AndroidPushNotificationTemplateProperty {action :: (Prelude.Maybe (Value Prelude.Text)),
                                             body :: (Prelude.Maybe (Value Prelude.Text)),
                                             imageIconUrl :: (Prelude.Maybe (Value Prelude.Text)),
                                             imageUrl :: (Prelude.Maybe (Value Prelude.Text)),
                                             smallImageIconUrl :: (Prelude.Maybe (Value Prelude.Text)),
                                             sound :: (Prelude.Maybe (Value Prelude.Text)),
                                             title :: (Prelude.Maybe (Value Prelude.Text)),
                                             url :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAndroidPushNotificationTemplateProperty ::
  AndroidPushNotificationTemplateProperty
mkAndroidPushNotificationTemplateProperty
  = AndroidPushNotificationTemplateProperty
      {action = Prelude.Nothing, body = Prelude.Nothing,
       imageIconUrl = Prelude.Nothing, imageUrl = Prelude.Nothing,
       smallImageIconUrl = Prelude.Nothing, sound = Prelude.Nothing,
       title = Prelude.Nothing, url = Prelude.Nothing}
instance ToResourceProperties AndroidPushNotificationTemplateProperty where
  toResourceProperties AndroidPushNotificationTemplateProperty {..}
    = ResourceProperties
        {awsType = "AWS::Pinpoint::PushTemplate.AndroidPushNotificationTemplate",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Action" Prelude.<$> action,
                            (JSON..=) "Body" Prelude.<$> body,
                            (JSON..=) "ImageIconUrl" Prelude.<$> imageIconUrl,
                            (JSON..=) "ImageUrl" Prelude.<$> imageUrl,
                            (JSON..=) "SmallImageIconUrl" Prelude.<$> smallImageIconUrl,
                            (JSON..=) "Sound" Prelude.<$> sound,
                            (JSON..=) "Title" Prelude.<$> title,
                            (JSON..=) "Url" Prelude.<$> url])}
instance JSON.ToJSON AndroidPushNotificationTemplateProperty where
  toJSON AndroidPushNotificationTemplateProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Action" Prelude.<$> action,
               (JSON..=) "Body" Prelude.<$> body,
               (JSON..=) "ImageIconUrl" Prelude.<$> imageIconUrl,
               (JSON..=) "ImageUrl" Prelude.<$> imageUrl,
               (JSON..=) "SmallImageIconUrl" Prelude.<$> smallImageIconUrl,
               (JSON..=) "Sound" Prelude.<$> sound,
               (JSON..=) "Title" Prelude.<$> title,
               (JSON..=) "Url" Prelude.<$> url]))
instance Property "Action" AndroidPushNotificationTemplateProperty where
  type PropertyType "Action" AndroidPushNotificationTemplateProperty = Value Prelude.Text
  set newValue AndroidPushNotificationTemplateProperty {..}
    = AndroidPushNotificationTemplateProperty
        {action = Prelude.pure newValue, ..}
instance Property "Body" AndroidPushNotificationTemplateProperty where
  type PropertyType "Body" AndroidPushNotificationTemplateProperty = Value Prelude.Text
  set newValue AndroidPushNotificationTemplateProperty {..}
    = AndroidPushNotificationTemplateProperty
        {body = Prelude.pure newValue, ..}
instance Property "ImageIconUrl" AndroidPushNotificationTemplateProperty where
  type PropertyType "ImageIconUrl" AndroidPushNotificationTemplateProperty = Value Prelude.Text
  set newValue AndroidPushNotificationTemplateProperty {..}
    = AndroidPushNotificationTemplateProperty
        {imageIconUrl = Prelude.pure newValue, ..}
instance Property "ImageUrl" AndroidPushNotificationTemplateProperty where
  type PropertyType "ImageUrl" AndroidPushNotificationTemplateProperty = Value Prelude.Text
  set newValue AndroidPushNotificationTemplateProperty {..}
    = AndroidPushNotificationTemplateProperty
        {imageUrl = Prelude.pure newValue, ..}
instance Property "SmallImageIconUrl" AndroidPushNotificationTemplateProperty where
  type PropertyType "SmallImageIconUrl" AndroidPushNotificationTemplateProperty = Value Prelude.Text
  set newValue AndroidPushNotificationTemplateProperty {..}
    = AndroidPushNotificationTemplateProperty
        {smallImageIconUrl = Prelude.pure newValue, ..}
instance Property "Sound" AndroidPushNotificationTemplateProperty where
  type PropertyType "Sound" AndroidPushNotificationTemplateProperty = Value Prelude.Text
  set newValue AndroidPushNotificationTemplateProperty {..}
    = AndroidPushNotificationTemplateProperty
        {sound = Prelude.pure newValue, ..}
instance Property "Title" AndroidPushNotificationTemplateProperty where
  type PropertyType "Title" AndroidPushNotificationTemplateProperty = Value Prelude.Text
  set newValue AndroidPushNotificationTemplateProperty {..}
    = AndroidPushNotificationTemplateProperty
        {title = Prelude.pure newValue, ..}
instance Property "Url" AndroidPushNotificationTemplateProperty where
  type PropertyType "Url" AndroidPushNotificationTemplateProperty = Value Prelude.Text
  set newValue AndroidPushNotificationTemplateProperty {..}
    = AndroidPushNotificationTemplateProperty
        {url = Prelude.pure newValue, ..}