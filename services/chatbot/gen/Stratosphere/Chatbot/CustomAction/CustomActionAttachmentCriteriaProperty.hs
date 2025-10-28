module Stratosphere.Chatbot.CustomAction.CustomActionAttachmentCriteriaProperty (
        CustomActionAttachmentCriteriaProperty(..),
        mkCustomActionAttachmentCriteriaProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CustomActionAttachmentCriteriaProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-chatbot-customaction-customactionattachmentcriteria.html>
    CustomActionAttachmentCriteriaProperty {haddock_workaround_ :: (),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-chatbot-customaction-customactionattachmentcriteria.html#cfn-chatbot-customaction-customactionattachmentcriteria-operator>
                                            operator :: (Value Prelude.Text),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-chatbot-customaction-customactionattachmentcriteria.html#cfn-chatbot-customaction-customactionattachmentcriteria-value>
                                            value :: (Prelude.Maybe (Value Prelude.Text)),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-chatbot-customaction-customactionattachmentcriteria.html#cfn-chatbot-customaction-customactionattachmentcriteria-variablename>
                                            variableName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCustomActionAttachmentCriteriaProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> CustomActionAttachmentCriteriaProperty
mkCustomActionAttachmentCriteriaProperty operator variableName
  = CustomActionAttachmentCriteriaProperty
      {haddock_workaround_ = (), operator = operator,
       variableName = variableName, value = Prelude.Nothing}
instance ToResourceProperties CustomActionAttachmentCriteriaProperty where
  toResourceProperties CustomActionAttachmentCriteriaProperty {..}
    = ResourceProperties
        {awsType = "AWS::Chatbot::CustomAction.CustomActionAttachmentCriteria",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Operator" JSON..= operator, "VariableName" JSON..= variableName]
                           (Prelude.catMaybes [(JSON..=) "Value" Prelude.<$> value]))}
instance JSON.ToJSON CustomActionAttachmentCriteriaProperty where
  toJSON CustomActionAttachmentCriteriaProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Operator" JSON..= operator, "VariableName" JSON..= variableName]
              (Prelude.catMaybes [(JSON..=) "Value" Prelude.<$> value])))
instance Property "Operator" CustomActionAttachmentCriteriaProperty where
  type PropertyType "Operator" CustomActionAttachmentCriteriaProperty = Value Prelude.Text
  set newValue CustomActionAttachmentCriteriaProperty {..}
    = CustomActionAttachmentCriteriaProperty {operator = newValue, ..}
instance Property "Value" CustomActionAttachmentCriteriaProperty where
  type PropertyType "Value" CustomActionAttachmentCriteriaProperty = Value Prelude.Text
  set newValue CustomActionAttachmentCriteriaProperty {..}
    = CustomActionAttachmentCriteriaProperty
        {value = Prelude.pure newValue, ..}
instance Property "VariableName" CustomActionAttachmentCriteriaProperty where
  type PropertyType "VariableName" CustomActionAttachmentCriteriaProperty = Value Prelude.Text
  set newValue CustomActionAttachmentCriteriaProperty {..}
    = CustomActionAttachmentCriteriaProperty
        {variableName = newValue, ..}