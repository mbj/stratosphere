module Stratosphere.Connect.EvaluationForm.EvaluationFormNumericQuestionAutomationProperty (
        module Exports,
        EvaluationFormNumericQuestionAutomationProperty(..),
        mkEvaluationFormNumericQuestionAutomationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Connect.EvaluationForm.EvaluationFormQuestionAutomationAnswerSourceProperty as Exports
import {-# SOURCE #-} Stratosphere.Connect.EvaluationForm.NumericQuestionPropertyValueAutomationProperty as Exports
import Stratosphere.ResourceProperties
data EvaluationFormNumericQuestionAutomationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-evaluationform-evaluationformnumericquestionautomation.html>
    EvaluationFormNumericQuestionAutomationProperty {haddock_workaround_ :: (),
                                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-evaluationform-evaluationformnumericquestionautomation.html#cfn-connect-evaluationform-evaluationformnumericquestionautomation-answersource>
                                                     answerSource :: (Prelude.Maybe EvaluationFormQuestionAutomationAnswerSourceProperty),
                                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-evaluationform-evaluationformnumericquestionautomation.html#cfn-connect-evaluationform-evaluationformnumericquestionautomation-propertyvalue>
                                                     propertyValue :: (Prelude.Maybe NumericQuestionPropertyValueAutomationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEvaluationFormNumericQuestionAutomationProperty ::
  EvaluationFormNumericQuestionAutomationProperty
mkEvaluationFormNumericQuestionAutomationProperty
  = EvaluationFormNumericQuestionAutomationProperty
      {haddock_workaround_ = (), answerSource = Prelude.Nothing,
       propertyValue = Prelude.Nothing}
instance ToResourceProperties EvaluationFormNumericQuestionAutomationProperty where
  toResourceProperties
    EvaluationFormNumericQuestionAutomationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Connect::EvaluationForm.EvaluationFormNumericQuestionAutomation",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AnswerSource" Prelude.<$> answerSource,
                            (JSON..=) "PropertyValue" Prelude.<$> propertyValue])}
instance JSON.ToJSON EvaluationFormNumericQuestionAutomationProperty where
  toJSON EvaluationFormNumericQuestionAutomationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AnswerSource" Prelude.<$> answerSource,
               (JSON..=) "PropertyValue" Prelude.<$> propertyValue]))
instance Property "AnswerSource" EvaluationFormNumericQuestionAutomationProperty where
  type PropertyType "AnswerSource" EvaluationFormNumericQuestionAutomationProperty = EvaluationFormQuestionAutomationAnswerSourceProperty
  set newValue EvaluationFormNumericQuestionAutomationProperty {..}
    = EvaluationFormNumericQuestionAutomationProperty
        {answerSource = Prelude.pure newValue, ..}
instance Property "PropertyValue" EvaluationFormNumericQuestionAutomationProperty where
  type PropertyType "PropertyValue" EvaluationFormNumericQuestionAutomationProperty = NumericQuestionPropertyValueAutomationProperty
  set newValue EvaluationFormNumericQuestionAutomationProperty {..}
    = EvaluationFormNumericQuestionAutomationProperty
        {propertyValue = Prelude.pure newValue, ..}