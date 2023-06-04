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
  = EvaluationFormNumericQuestionOptionProperty {automaticFail :: (Prelude.Maybe (Value Prelude.Bool)),
                                                 maxValue :: (Value Prelude.Integer),
                                                 minValue :: (Value Prelude.Integer),
                                                 score :: (Prelude.Maybe (Value Prelude.Integer))}
mkEvaluationFormNumericQuestionOptionProperty ::
  Value Prelude.Integer
  -> Value Prelude.Integer
     -> EvaluationFormNumericQuestionOptionProperty
mkEvaluationFormNumericQuestionOptionProperty maxValue minValue
  = EvaluationFormNumericQuestionOptionProperty
      {maxValue = maxValue, minValue = minValue,
       automaticFail = Prelude.Nothing, score = Prelude.Nothing}
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