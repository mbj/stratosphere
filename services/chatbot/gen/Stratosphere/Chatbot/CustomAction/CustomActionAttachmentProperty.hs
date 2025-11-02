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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-chatbot-customaction-customactionattachment.html>
    CustomActionAttachmentProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-chatbot-customaction-customactionattachment.html#cfn-chatbot-customaction-customactionattachment-buttontext>
                                    buttonText :: (Prelude.Maybe (Value Prelude.Text)),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-chatbot-customaction-customactionattachment.html#cfn-chatbot-customaction-customactionattachment-criteria>
                                    criteria :: (Prelude.Maybe [CustomActionAttachmentCriteriaProperty]),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-chatbot-customaction-customactionattachment.html#cfn-chatbot-customaction-customactionattachment-notificationtype>
                                    notificationType :: (Prelude.Maybe (Value Prelude.Text)),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-chatbot-customaction-customactionattachment.html#cfn-chatbot-customaction-customactionattachment-variables>
                                    variables :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text)))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCustomActionAttachmentProperty :: CustomActionAttachmentProperty
mkCustomActionAttachmentProperty
  = CustomActionAttachmentProperty
      {haddock_workaround_ = (), buttonText = Prelude.Nothing,
       criteria = Prelude.Nothing, notificationType = Prelude.Nothing,
       variables = Prelude.Nothing}
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