module Stratosphere.Connect.EvaluationForm.EvaluationFormSingleSelectQuestionOptionProperty (
        EvaluationFormSingleSelectQuestionOptionProperty(..),
        mkEvaluationFormSingleSelectQuestionOptionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EvaluationFormSingleSelectQuestionOptionProperty
  = EvaluationFormSingleSelectQuestionOptionProperty {automaticFail :: (Prelude.Maybe (Value Prelude.Bool)),
                                                      refId :: (Value Prelude.Text),
                                                      score :: (Prelude.Maybe (Value Prelude.Integer)),
                                                      text :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEvaluationFormSingleSelectQuestionOptionProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> EvaluationFormSingleSelectQuestionOptionProperty
mkEvaluationFormSingleSelectQuestionOptionProperty refId text
  = EvaluationFormSingleSelectQuestionOptionProperty
      {refId = refId, text = text, automaticFail = Prelude.Nothing,
       score = Prelude.Nothing}
instance ToResourceProperties EvaluationFormSingleSelectQuestionOptionProperty where
  toResourceProperties
    EvaluationFormSingleSelectQuestionOptionProperty {..}
    = ResourceProperties
        {awsType = "AWS::Connect::EvaluationForm.EvaluationFormSingleSelectQuestionOption",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["RefId" JSON..= refId, "Text" JSON..= text]
                           (Prelude.catMaybes
                              [(JSON..=) "AutomaticFail" Prelude.<$> automaticFail,
                               (JSON..=) "Score" Prelude.<$> score]))}
instance JSON.ToJSON EvaluationFormSingleSelectQuestionOptionProperty where
  toJSON EvaluationFormSingleSelectQuestionOptionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["RefId" JSON..= refId, "Text" JSON..= text]
              (Prelude.catMaybes
                 [(JSON..=) "AutomaticFail" Prelude.<$> automaticFail,
                  (JSON..=) "Score" Prelude.<$> score])))
instance Property "AutomaticFail" EvaluationFormSingleSelectQuestionOptionProperty where
  type PropertyType "AutomaticFail" EvaluationFormSingleSelectQuestionOptionProperty = Value Prelude.Bool
  set newValue EvaluationFormSingleSelectQuestionOptionProperty {..}
    = EvaluationFormSingleSelectQuestionOptionProperty
        {automaticFail = Prelude.pure newValue, ..}
instance Property "RefId" EvaluationFormSingleSelectQuestionOptionProperty where
  type PropertyType "RefId" EvaluationFormSingleSelectQuestionOptionProperty = Value Prelude.Text
  set newValue EvaluationFormSingleSelectQuestionOptionProperty {..}
    = EvaluationFormSingleSelectQuestionOptionProperty
        {refId = newValue, ..}
instance Property "Score" EvaluationFormSingleSelectQuestionOptionProperty where
  type PropertyType "Score" EvaluationFormSingleSelectQuestionOptionProperty = Value Prelude.Integer
  set newValue EvaluationFormSingleSelectQuestionOptionProperty {..}
    = EvaluationFormSingleSelectQuestionOptionProperty
        {score = Prelude.pure newValue, ..}
instance Property "Text" EvaluationFormSingleSelectQuestionOptionProperty where
  type PropertyType "Text" EvaluationFormSingleSelectQuestionOptionProperty = Value Prelude.Text
  set newValue EvaluationFormSingleSelectQuestionOptionProperty {..}
    = EvaluationFormSingleSelectQuestionOptionProperty
        {text = newValue, ..}