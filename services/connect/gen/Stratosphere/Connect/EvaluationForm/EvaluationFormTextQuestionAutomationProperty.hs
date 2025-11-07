module Stratosphere.Connect.EvaluationForm.EvaluationFormTextQuestionAutomationProperty (
        module Exports, EvaluationFormTextQuestionAutomationProperty(..),
        mkEvaluationFormTextQuestionAutomationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Connect.EvaluationForm.EvaluationFormQuestionAutomationAnswerSourceProperty as Exports
import Stratosphere.ResourceProperties
data EvaluationFormTextQuestionAutomationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-evaluationform-evaluationformtextquestionautomation.html>
    EvaluationFormTextQuestionAutomationProperty {haddock_workaround_ :: (),
                                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-evaluationform-evaluationformtextquestionautomation.html#cfn-connect-evaluationform-evaluationformtextquestionautomation-answersource>
                                                  answerSource :: (Prelude.Maybe EvaluationFormQuestionAutomationAnswerSourceProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEvaluationFormTextQuestionAutomationProperty ::
  EvaluationFormTextQuestionAutomationProperty
mkEvaluationFormTextQuestionAutomationProperty
  = EvaluationFormTextQuestionAutomationProperty
      {haddock_workaround_ = (), answerSource = Prelude.Nothing}
instance ToResourceProperties EvaluationFormTextQuestionAutomationProperty where
  toResourceProperties
    EvaluationFormTextQuestionAutomationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Connect::EvaluationForm.EvaluationFormTextQuestionAutomation",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AnswerSource" Prelude.<$> answerSource])}
instance JSON.ToJSON EvaluationFormTextQuestionAutomationProperty where
  toJSON EvaluationFormTextQuestionAutomationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AnswerSource" Prelude.<$> answerSource]))
instance Property "AnswerSource" EvaluationFormTextQuestionAutomationProperty where
  type PropertyType "AnswerSource" EvaluationFormTextQuestionAutomationProperty = EvaluationFormQuestionAutomationAnswerSourceProperty
  set newValue EvaluationFormTextQuestionAutomationProperty {..}
    = EvaluationFormTextQuestionAutomationProperty
        {answerSource = Prelude.pure newValue, ..}