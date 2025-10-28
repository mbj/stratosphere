module Stratosphere.Chatbot.CustomAction (
        module Exports, CustomAction(..), mkCustomAction
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Chatbot.CustomAction.CustomActionAttachmentProperty as Exports
import {-# SOURCE #-} Stratosphere.Chatbot.CustomAction.CustomActionDefinitionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data CustomAction
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-chatbot-customaction.html>
    CustomAction {haddock_workaround_ :: (),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-chatbot-customaction.html#cfn-chatbot-customaction-actionname>
                  actionName :: (Value Prelude.Text),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-chatbot-customaction.html#cfn-chatbot-customaction-aliasname>
                  aliasName :: (Prelude.Maybe (Value Prelude.Text)),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-chatbot-customaction.html#cfn-chatbot-customaction-attachments>
                  attachments :: (Prelude.Maybe [CustomActionAttachmentProperty]),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-chatbot-customaction.html#cfn-chatbot-customaction-definition>
                  definition :: CustomActionDefinitionProperty,
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-chatbot-customaction.html#cfn-chatbot-customaction-tags>
                  tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCustomAction ::
  Value Prelude.Text
  -> CustomActionDefinitionProperty -> CustomAction
mkCustomAction actionName definition
  = CustomAction
      {haddock_workaround_ = (), actionName = actionName,
       definition = definition, aliasName = Prelude.Nothing,
       attachments = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties CustomAction where
  toResourceProperties CustomAction {..}
    = ResourceProperties
        {awsType = "AWS::Chatbot::CustomAction",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ActionName" JSON..= actionName, "Definition" JSON..= definition]
                           (Prelude.catMaybes
                              [(JSON..=) "AliasName" Prelude.<$> aliasName,
                               (JSON..=) "Attachments" Prelude.<$> attachments,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON CustomAction where
  toJSON CustomAction {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ActionName" JSON..= actionName, "Definition" JSON..= definition]
              (Prelude.catMaybes
                 [(JSON..=) "AliasName" Prelude.<$> aliasName,
                  (JSON..=) "Attachments" Prelude.<$> attachments,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "ActionName" CustomAction where
  type PropertyType "ActionName" CustomAction = Value Prelude.Text
  set newValue CustomAction {..}
    = CustomAction {actionName = newValue, ..}
instance Property "AliasName" CustomAction where
  type PropertyType "AliasName" CustomAction = Value Prelude.Text
  set newValue CustomAction {..}
    = CustomAction {aliasName = Prelude.pure newValue, ..}
instance Property "Attachments" CustomAction where
  type PropertyType "Attachments" CustomAction = [CustomActionAttachmentProperty]
  set newValue CustomAction {..}
    = CustomAction {attachments = Prelude.pure newValue, ..}
instance Property "Definition" CustomAction where
  type PropertyType "Definition" CustomAction = CustomActionDefinitionProperty
  set newValue CustomAction {..}
    = CustomAction {definition = newValue, ..}
instance Property "Tags" CustomAction where
  type PropertyType "Tags" CustomAction = [Tag]
  set newValue CustomAction {..}
    = CustomAction {tags = Prelude.pure newValue, ..}