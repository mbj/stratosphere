module Stratosphere.Connect.Rule.SendNotificationActionProperty (
        module Exports, SendNotificationActionProperty(..),
        mkSendNotificationActionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Connect.Rule.NotificationRecipientTypeProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SendNotificationActionProperty
  = SendNotificationActionProperty {content :: (Value Prelude.Text),
                                    contentType :: (Value Prelude.Text),
                                    deliveryMethod :: (Value Prelude.Text),
                                    recipient :: NotificationRecipientTypeProperty,
                                    subject :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSendNotificationActionProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text
        -> NotificationRecipientTypeProperty
           -> SendNotificationActionProperty
mkSendNotificationActionProperty
  content
  contentType
  deliveryMethod
  recipient
  = SendNotificationActionProperty
      {content = content, contentType = contentType,
       deliveryMethod = deliveryMethod, recipient = recipient,
       subject = Prelude.Nothing}
instance ToResourceProperties SendNotificationActionProperty where
  toResourceProperties SendNotificationActionProperty {..}
    = ResourceProperties
        {awsType = "AWS::Connect::Rule.SendNotificationAction",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Content" JSON..= content, "ContentType" JSON..= contentType,
                            "DeliveryMethod" JSON..= deliveryMethod,
                            "Recipient" JSON..= recipient]
                           (Prelude.catMaybes [(JSON..=) "Subject" Prelude.<$> subject]))}
instance JSON.ToJSON SendNotificationActionProperty where
  toJSON SendNotificationActionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Content" JSON..= content, "ContentType" JSON..= contentType,
               "DeliveryMethod" JSON..= deliveryMethod,
               "Recipient" JSON..= recipient]
              (Prelude.catMaybes [(JSON..=) "Subject" Prelude.<$> subject])))
instance Property "Content" SendNotificationActionProperty where
  type PropertyType "Content" SendNotificationActionProperty = Value Prelude.Text
  set newValue SendNotificationActionProperty {..}
    = SendNotificationActionProperty {content = newValue, ..}
instance Property "ContentType" SendNotificationActionProperty where
  type PropertyType "ContentType" SendNotificationActionProperty = Value Prelude.Text
  set newValue SendNotificationActionProperty {..}
    = SendNotificationActionProperty {contentType = newValue, ..}
instance Property "DeliveryMethod" SendNotificationActionProperty where
  type PropertyType "DeliveryMethod" SendNotificationActionProperty = Value Prelude.Text
  set newValue SendNotificationActionProperty {..}
    = SendNotificationActionProperty {deliveryMethod = newValue, ..}
instance Property "Recipient" SendNotificationActionProperty where
  type PropertyType "Recipient" SendNotificationActionProperty = NotificationRecipientTypeProperty
  set newValue SendNotificationActionProperty {..}
    = SendNotificationActionProperty {recipient = newValue, ..}
instance Property "Subject" SendNotificationActionProperty where
  type PropertyType "Subject" SendNotificationActionProperty = Value Prelude.Text
  set newValue SendNotificationActionProperty {..}
    = SendNotificationActionProperty
        {subject = Prelude.pure newValue, ..}