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
  = CustomActionAttachmentCriteriaProperty {operator :: (Value Prelude.Text),
                                            value :: (Prelude.Maybe (Value Prelude.Text)),
                                            variableName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCustomActionAttachmentCriteriaProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> CustomActionAttachmentCriteriaProperty
mkCustomActionAttachmentCriteriaProperty operator variableName
  = CustomActionAttachmentCriteriaProperty
      {operator = operator, variableName = variableName,
       value = Prelude.Nothing}
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