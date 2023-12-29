module Stratosphere.Connect.EvaluationForm.NumericQuestionPropertyValueAutomationProperty (
        NumericQuestionPropertyValueAutomationProperty(..),
        mkNumericQuestionPropertyValueAutomationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NumericQuestionPropertyValueAutomationProperty
  = NumericQuestionPropertyValueAutomationProperty {label :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNumericQuestionPropertyValueAutomationProperty ::
  Value Prelude.Text
  -> NumericQuestionPropertyValueAutomationProperty
mkNumericQuestionPropertyValueAutomationProperty label
  = NumericQuestionPropertyValueAutomationProperty {label = label}
instance ToResourceProperties NumericQuestionPropertyValueAutomationProperty where
  toResourceProperties
    NumericQuestionPropertyValueAutomationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Connect::EvaluationForm.NumericQuestionPropertyValueAutomation",
         supportsTags = Prelude.False, properties = ["Label" JSON..= label]}
instance JSON.ToJSON NumericQuestionPropertyValueAutomationProperty where
  toJSON NumericQuestionPropertyValueAutomationProperty {..}
    = JSON.object ["Label" JSON..= label]
instance Property "Label" NumericQuestionPropertyValueAutomationProperty where
  type PropertyType "Label" NumericQuestionPropertyValueAutomationProperty = Value Prelude.Text
  set newValue NumericQuestionPropertyValueAutomationProperty {}
    = NumericQuestionPropertyValueAutomationProperty
        {label = newValue, ..}