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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-pushtemplate-defaultpushnotificationtemplate.html>
    DefaultPushNotificationTemplateProperty {haddock_workaround_ :: (),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-pushtemplate-defaultpushnotificationtemplate.html#cfn-pinpoint-pushtemplate-defaultpushnotificationtemplate-action>
                                             action :: (Prelude.Maybe (Value Prelude.Text)),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-pushtemplate-defaultpushnotificationtemplate.html#cfn-pinpoint-pushtemplate-defaultpushnotificationtemplate-body>
                                             body :: (Prelude.Maybe (Value Prelude.Text)),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-pushtemplate-defaultpushnotificationtemplate.html#cfn-pinpoint-pushtemplate-defaultpushnotificationtemplate-sound>
                                             sound :: (Prelude.Maybe (Value Prelude.Text)),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-pushtemplate-defaultpushnotificationtemplate.html#cfn-pinpoint-pushtemplate-defaultpushnotificationtemplate-title>
                                             title :: (Prelude.Maybe (Value Prelude.Text)),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-pushtemplate-defaultpushnotificationtemplate.html#cfn-pinpoint-pushtemplate-defaultpushnotificationtemplate-url>
                                             url :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDefaultPushNotificationTemplateProperty ::
  DefaultPushNotificationTemplateProperty
mkDefaultPushNotificationTemplateProperty
  = DefaultPushNotificationTemplateProperty
      {haddock_workaround_ = (), action = Prelude.Nothing,
       body = Prelude.Nothing, sound = Prelude.Nothing,
       title = Prelude.Nothing, url = Prelude.Nothing}
instance ToResourceProperties DefaultPushNotificationTemplateProperty where
  toResourceProperties DefaultPushNotificationTemplateProperty {..}
    = ResourceProperties
        {awsType = "AWS::Pinpoint::PushTemplate.DefaultPushNotificationTemplate",
         supportsTags = Prelude.False,
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