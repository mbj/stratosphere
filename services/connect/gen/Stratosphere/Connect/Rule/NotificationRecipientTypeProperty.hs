module Stratosphere.Connect.Rule.NotificationRecipientTypeProperty (
        NotificationRecipientTypeProperty(..),
        mkNotificationRecipientTypeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NotificationRecipientTypeProperty
  = NotificationRecipientTypeProperty {userArns :: (Prelude.Maybe (ValueList Prelude.Text)),
                                       userTags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text)))}
mkNotificationRecipientTypeProperty ::
  NotificationRecipientTypeProperty
mkNotificationRecipientTypeProperty
  = NotificationRecipientTypeProperty
      {userArns = Prelude.Nothing, userTags = Prelude.Nothing}
instance ToResourceProperties NotificationRecipientTypeProperty where
  toResourceProperties NotificationRecipientTypeProperty {..}
    = ResourceProperties
        {awsType = "AWS::Connect::Rule.NotificationRecipientType",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "UserArns" Prelude.<$> userArns,
                            (JSON..=) "UserTags" Prelude.<$> userTags])}
instance JSON.ToJSON NotificationRecipientTypeProperty where
  toJSON NotificationRecipientTypeProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "UserArns" Prelude.<$> userArns,
               (JSON..=) "UserTags" Prelude.<$> userTags]))
instance Property "UserArns" NotificationRecipientTypeProperty where
  type PropertyType "UserArns" NotificationRecipientTypeProperty = ValueList Prelude.Text
  set newValue NotificationRecipientTypeProperty {..}
    = NotificationRecipientTypeProperty
        {userArns = Prelude.pure newValue, ..}
instance Property "UserTags" NotificationRecipientTypeProperty where
  type PropertyType "UserTags" NotificationRecipientTypeProperty = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue NotificationRecipientTypeProperty {..}
    = NotificationRecipientTypeProperty
        {userTags = Prelude.pure newValue, ..}