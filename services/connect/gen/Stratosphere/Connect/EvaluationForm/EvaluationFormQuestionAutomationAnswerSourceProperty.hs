module Stratosphere.Connect.EvaluationForm.EvaluationFormQuestionAutomationAnswerSourceProperty (
        EvaluationFormQuestionAutomationAnswerSourceProperty(..),
        mkEvaluationFormQuestionAutomationAnswerSourceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EvaluationFormQuestionAutomationAnswerSourceProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-evaluationform-evaluationformquestionautomationanswersource.html>
    EvaluationFormQuestionAutomationAnswerSourceProperty {haddock_workaround_ :: (),
                                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-evaluationform-evaluationformquestionautomationanswersource.html#cfn-connect-evaluationform-evaluationformquestionautomationanswersource-sourcetype>
                                                          sourceType :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEvaluationFormQuestionAutomationAnswerSourceProperty ::
  Value Prelude.Text
  -> EvaluationFormQuestionAutomationAnswerSourceProperty
mkEvaluationFormQuestionAutomationAnswerSourceProperty sourceType
  = EvaluationFormQuestionAutomationAnswerSourceProperty
      {haddock_workaround_ = (), sourceType = sourceType}
instance ToResourceProperties EvaluationFormQuestionAutomationAnswerSourceProperty where
  toResourceProperties
    EvaluationFormQuestionAutomationAnswerSourceProperty {..}
    = ResourceProperties
        {awsType = "AWS::Connect::EvaluationForm.EvaluationFormQuestionAutomationAnswerSource",
         supportsTags = Prelude.False,
         properties = ["SourceType" JSON..= sourceType]}
instance JSON.ToJSON EvaluationFormQuestionAutomationAnswerSourceProperty where
  toJSON EvaluationFormQuestionAutomationAnswerSourceProperty {..}
    = JSON.object ["SourceType" JSON..= sourceType]
instance Property "SourceType" EvaluationFormQuestionAutomationAnswerSourceProperty where
  type PropertyType "SourceType" EvaluationFormQuestionAutomationAnswerSourceProperty = Value Prelude.Text
  set
    newValue
    EvaluationFormQuestionAutomationAnswerSourceProperty {..}
    = EvaluationFormQuestionAutomationAnswerSourceProperty
        {sourceType = newValue, ..}