module Stratosphere.Connect.EvaluationForm.EvaluationFormNumericQuestionOptionProperty (
        EvaluationFormNumericQuestionOptionProperty(..),
        mkEvaluationFormNumericQuestionOptionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EvaluationFormNumericQuestionOptionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-evaluationform-evaluationformnumericquestionoption.html>
    EvaluationFormNumericQuestionOptionProperty {haddock_workaround_ :: (),
                                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-evaluationform-evaluationformnumericquestionoption.html#cfn-connect-evaluationform-evaluationformnumericquestionoption-automaticfail>
                                                 automaticFail :: (Prelude.Maybe (Value Prelude.Bool)),
                                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-evaluationform-evaluationformnumericquestionoption.html#cfn-connect-evaluationform-evaluationformnumericquestionoption-maxvalue>
                                                 maxValue :: (Value Prelude.Integer),
                                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-evaluationform-evaluationformnumericquestionoption.html#cfn-connect-evaluationform-evaluationformnumericquestionoption-minvalue>
                                                 minValue :: (Value Prelude.Integer),
                                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-evaluationform-evaluationformnumericquestionoption.html#cfn-connect-evaluationform-evaluationformnumericquestionoption-score>
                                                 score :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEvaluationFormNumericQuestionOptionProperty ::
  Value Prelude.Integer
  -> Value Prelude.Integer
     -> EvaluationFormNumericQuestionOptionProperty
mkEvaluationFormNumericQuestionOptionProperty maxValue minValue
  = EvaluationFormNumericQuestionOptionProperty
      {haddock_workaround_ = (), maxValue = maxValue,
       minValue = minValue, automaticFail = Prelude.Nothing,
       score = Prelude.Nothing}
instance ToResourceProperties EvaluationFormNumericQuestionOptionProperty where
  toResourceProperties
    EvaluationFormNumericQuestionOptionProperty {..}
    = ResourceProperties
        {awsType = "AWS::Connect::EvaluationForm.EvaluationFormNumericQuestionOption",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["MaxValue" JSON..= maxValue, "MinValue" JSON..= minValue]
                           (Prelude.catMaybes
                              [(JSON..=) "AutomaticFail" Prelude.<$> automaticFail,
                               (JSON..=) "Score" Prelude.<$> score]))}
instance JSON.ToJSON EvaluationFormNumericQuestionOptionProperty where
  toJSON EvaluationFormNumericQuestionOptionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["MaxValue" JSON..= maxValue, "MinValue" JSON..= minValue]
              (Prelude.catMaybes
                 [(JSON..=) "AutomaticFail" Prelude.<$> automaticFail,
                  (JSON..=) "Score" Prelude.<$> score])))
instance Property "AutomaticFail" EvaluationFormNumericQuestionOptionProperty where
  type PropertyType "AutomaticFail" EvaluationFormNumericQuestionOptionProperty = Value Prelude.Bool
  set newValue EvaluationFormNumericQuestionOptionProperty {..}
    = EvaluationFormNumericQuestionOptionProperty
        {automaticFail = Prelude.pure newValue, ..}
instance Property "MaxValue" EvaluationFormNumericQuestionOptionProperty where
  type PropertyType "MaxValue" EvaluationFormNumericQuestionOptionProperty = Value Prelude.Integer
  set newValue EvaluationFormNumericQuestionOptionProperty {..}
    = EvaluationFormNumericQuestionOptionProperty
        {maxValue = newValue, ..}
instance Property "MinValue" EvaluationFormNumericQuestionOptionProperty where
  type PropertyType "MinValue" EvaluationFormNumericQuestionOptionProperty = Value Prelude.Integer
  set newValue EvaluationFormNumericQuestionOptionProperty {..}
    = EvaluationFormNumericQuestionOptionProperty
        {minValue = newValue, ..}
instance Property "Score" EvaluationFormNumericQuestionOptionProperty where
  type PropertyType "Score" EvaluationFormNumericQuestionOptionProperty = Value Prelude.Integer
  set newValue EvaluationFormNumericQuestionOptionProperty {..}
    = EvaluationFormNumericQuestionOptionProperty
        {score = Prelude.pure newValue, ..}