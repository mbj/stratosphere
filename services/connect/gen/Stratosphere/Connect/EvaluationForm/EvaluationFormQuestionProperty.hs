module Stratosphere.Connect.EvaluationForm.EvaluationFormQuestionProperty (
        module Exports, EvaluationFormQuestionProperty(..),
        mkEvaluationFormQuestionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Connect.EvaluationForm.EvaluationFormQuestionTypePropertiesProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EvaluationFormQuestionProperty
  = EvaluationFormQuestionProperty {instructions :: (Prelude.Maybe (Value Prelude.Text)),
                                    notApplicableEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
                                    questionType :: (Value Prelude.Text),
                                    questionTypeProperties :: (Prelude.Maybe EvaluationFormQuestionTypePropertiesProperty),
                                    refId :: (Value Prelude.Text),
                                    title :: (Value Prelude.Text),
                                    weight :: (Prelude.Maybe (Value Prelude.Double))}
mkEvaluationFormQuestionProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> EvaluationFormQuestionProperty
mkEvaluationFormQuestionProperty questionType refId title
  = EvaluationFormQuestionProperty
      {questionType = questionType, refId = refId, title = title,
       instructions = Prelude.Nothing,
       notApplicableEnabled = Prelude.Nothing,
       questionTypeProperties = Prelude.Nothing, weight = Prelude.Nothing}
instance ToResourceProperties EvaluationFormQuestionProperty where
  toResourceProperties EvaluationFormQuestionProperty {..}
    = ResourceProperties
        {awsType = "AWS::Connect::EvaluationForm.EvaluationFormQuestion",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["QuestionType" JSON..= questionType, "RefId" JSON..= refId,
                            "Title" JSON..= title]
                           (Prelude.catMaybes
                              [(JSON..=) "Instructions" Prelude.<$> instructions,
                               (JSON..=) "NotApplicableEnabled" Prelude.<$> notApplicableEnabled,
                               (JSON..=) "QuestionTypeProperties"
                                 Prelude.<$> questionTypeProperties,
                               (JSON..=) "Weight" Prelude.<$> weight]))}
instance JSON.ToJSON EvaluationFormQuestionProperty where
  toJSON EvaluationFormQuestionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["QuestionType" JSON..= questionType, "RefId" JSON..= refId,
               "Title" JSON..= title]
              (Prelude.catMaybes
                 [(JSON..=) "Instructions" Prelude.<$> instructions,
                  (JSON..=) "NotApplicableEnabled" Prelude.<$> notApplicableEnabled,
                  (JSON..=) "QuestionTypeProperties"
                    Prelude.<$> questionTypeProperties,
                  (JSON..=) "Weight" Prelude.<$> weight])))
instance Property "Instructions" EvaluationFormQuestionProperty where
  type PropertyType "Instructions" EvaluationFormQuestionProperty = Value Prelude.Text
  set newValue EvaluationFormQuestionProperty {..}
    = EvaluationFormQuestionProperty
        {instructions = Prelude.pure newValue, ..}
instance Property "NotApplicableEnabled" EvaluationFormQuestionProperty where
  type PropertyType "NotApplicableEnabled" EvaluationFormQuestionProperty = Value Prelude.Bool
  set newValue EvaluationFormQuestionProperty {..}
    = EvaluationFormQuestionProperty
        {notApplicableEnabled = Prelude.pure newValue, ..}
instance Property "QuestionType" EvaluationFormQuestionProperty where
  type PropertyType "QuestionType" EvaluationFormQuestionProperty = Value Prelude.Text
  set newValue EvaluationFormQuestionProperty {..}
    = EvaluationFormQuestionProperty {questionType = newValue, ..}
instance Property "QuestionTypeProperties" EvaluationFormQuestionProperty where
  type PropertyType "QuestionTypeProperties" EvaluationFormQuestionProperty = EvaluationFormQuestionTypePropertiesProperty
  set newValue EvaluationFormQuestionProperty {..}
    = EvaluationFormQuestionProperty
        {questionTypeProperties = Prelude.pure newValue, ..}
instance Property "RefId" EvaluationFormQuestionProperty where
  type PropertyType "RefId" EvaluationFormQuestionProperty = Value Prelude.Text
  set newValue EvaluationFormQuestionProperty {..}
    = EvaluationFormQuestionProperty {refId = newValue, ..}
instance Property "Title" EvaluationFormQuestionProperty where
  type PropertyType "Title" EvaluationFormQuestionProperty = Value Prelude.Text
  set newValue EvaluationFormQuestionProperty {..}
    = EvaluationFormQuestionProperty {title = newValue, ..}
instance Property "Weight" EvaluationFormQuestionProperty where
  type PropertyType "Weight" EvaluationFormQuestionProperty = Value Prelude.Double
  set newValue EvaluationFormQuestionProperty {..}
    = EvaluationFormQuestionProperty
        {weight = Prelude.pure newValue, ..}