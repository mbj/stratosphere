module Stratosphere.Connect.EvaluationForm.EvaluationFormNumericQuestionAutomationProperty (
        module Exports,
        EvaluationFormNumericQuestionAutomationProperty(..),
        mkEvaluationFormNumericQuestionAutomationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Connect.EvaluationForm.NumericQuestionPropertyValueAutomationProperty as Exports
import Stratosphere.ResourceProperties
data EvaluationFormNumericQuestionAutomationProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-evaluationform-evaluationformnumericquestionautomation.html>
    EvaluationFormNumericQuestionAutomationProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-evaluationform-evaluationformnumericquestionautomation.html#cfn-connect-evaluationform-evaluationformnumericquestionautomation-propertyvalue>
                                                     propertyValue :: NumericQuestionPropertyValueAutomationProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEvaluationFormNumericQuestionAutomationProperty ::
  NumericQuestionPropertyValueAutomationProperty
  -> EvaluationFormNumericQuestionAutomationProperty
mkEvaluationFormNumericQuestionAutomationProperty propertyValue
  = EvaluationFormNumericQuestionAutomationProperty
      {propertyValue = propertyValue}
instance ToResourceProperties EvaluationFormNumericQuestionAutomationProperty where
  toResourceProperties
    EvaluationFormNumericQuestionAutomationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Connect::EvaluationForm.EvaluationFormNumericQuestionAutomation",
         supportsTags = Prelude.False,
         properties = ["PropertyValue" JSON..= propertyValue]}
instance JSON.ToJSON EvaluationFormNumericQuestionAutomationProperty where
  toJSON EvaluationFormNumericQuestionAutomationProperty {..}
    = JSON.object ["PropertyValue" JSON..= propertyValue]
instance Property "PropertyValue" EvaluationFormNumericQuestionAutomationProperty where
  type PropertyType "PropertyValue" EvaluationFormNumericQuestionAutomationProperty = NumericQuestionPropertyValueAutomationProperty
  set newValue EvaluationFormNumericQuestionAutomationProperty {}
    = EvaluationFormNumericQuestionAutomationProperty
        {propertyValue = newValue, ..}