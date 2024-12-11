module Stratosphere.Chatbot.CustomAction.CustomActionAttachmentProperty (
        module Exports, CustomActionAttachmentProperty(..),
        mkCustomActionAttachmentProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Chatbot.CustomAction.CustomActionAttachmentCriteriaProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CustomActionAttachmentProperty
  = CustomActionAttachmentProperty {buttonText :: (Prelude.Maybe (Value Prelude.Text)),
                                    criteria :: (Prelude.Maybe [CustomActionAttachmentCriteriaProperty]),
                                    notificationType :: (Prelude.Maybe (Value Prelude.Text)),
                                    variables :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text)))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCustomActionAttachmentProperty :: CustomActionAttachmentProperty
mkCustomActionAttachmentProperty
  = CustomActionAttachmentProperty
      {buttonText = Prelude.Nothing, criteria = Prelude.Nothing,
       notificationType = Prelude.Nothing, variables = Prelude.Nothing}
instance ToResourceProperties CustomActionAttachmentProperty where
  toResourceProperties CustomActionAttachmentProperty {..}
    = ResourceProperties
        {awsType = "AWS::Chatbot::CustomAction.CustomActionAttachment",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ButtonText" Prelude.<$> buttonText,
                            (JSON..=) "Criteria" Prelude.<$> criteria,
                            (JSON..=) "NotificationType" Prelude.<$> notificationType,
                            (JSON..=) "Variables" Prelude.<$> variables])}
instance JSON.ToJSON CustomActionAttachmentProperty where
  toJSON CustomActionAttachmentProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ButtonText" Prelude.<$> buttonText,
               (JSON..=) "Criteria" Prelude.<$> criteria,
               (JSON..=) "NotificationType" Prelude.<$> notificationType,
               (JSON..=) "Variables" Prelude.<$> variables]))
instance Property "ButtonText" CustomActionAttachmentProperty where
  type PropertyType "ButtonText" CustomActionAttachmentProperty = Value Prelude.Text
  set newValue CustomActionAttachmentProperty {..}
    = CustomActionAttachmentProperty
        {buttonText = Prelude.pure newValue, ..}
instance Property "Criteria" CustomActionAttachmentProperty where
  type PropertyType "Criteria" CustomActionAttachmentProperty = [CustomActionAttachmentCriteriaProperty]
  set newValue CustomActionAttachmentProperty {..}
    = CustomActionAttachmentProperty
        {criteria = Prelude.pure newValue, ..}
instance Property "NotificationType" CustomActionAttachmentProperty where
  type PropertyType "NotificationType" CustomActionAttachmentProperty = Value Prelude.Text
  set newValue CustomActionAttachmentProperty {..}
    = CustomActionAttachmentProperty
        {notificationType = Prelude.pure newValue, ..}
instance Property "Variables" CustomActionAttachmentProperty where
  type PropertyType "Variables" CustomActionAttachmentProperty = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue CustomActionAttachmentProperty {..}
    = CustomActionAttachmentProperty
        {variables = Prelude.pure newValue, ..}