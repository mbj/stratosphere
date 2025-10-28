module Stratosphere.Connect.EvaluationForm.EvaluationFormItemProperty (
        module Exports, EvaluationFormItemProperty(..),
        mkEvaluationFormItemProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Connect.EvaluationForm.EvaluationFormQuestionProperty as Exports
import {-# SOURCE #-} Stratosphere.Connect.EvaluationForm.EvaluationFormSectionProperty as Exports
import Stratosphere.ResourceProperties
data EvaluationFormItemProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-evaluationform-evaluationformitem.html>
    EvaluationFormItemProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-evaluationform-evaluationformitem.html#cfn-connect-evaluationform-evaluationformitem-question>
                                question :: (Prelude.Maybe EvaluationFormQuestionProperty),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-evaluationform-evaluationformitem.html#cfn-connect-evaluationform-evaluationformitem-section>
                                section :: (Prelude.Maybe EvaluationFormSectionProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEvaluationFormItemProperty :: EvaluationFormItemProperty
mkEvaluationFormItemProperty
  = EvaluationFormItemProperty
      {haddock_workaround_ = (), question = Prelude.Nothing,
       section = Prelude.Nothing}
instance ToResourceProperties EvaluationFormItemProperty where
  toResourceProperties EvaluationFormItemProperty {..}
    = ResourceProperties
        {awsType = "AWS::Connect::EvaluationForm.EvaluationFormItem",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Question" Prelude.<$> question,
                            (JSON..=) "Section" Prelude.<$> section])}
instance JSON.ToJSON EvaluationFormItemProperty where
  toJSON EvaluationFormItemProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Question" Prelude.<$> question,
               (JSON..=) "Section" Prelude.<$> section]))
instance Property "Question" EvaluationFormItemProperty where
  type PropertyType "Question" EvaluationFormItemProperty = EvaluationFormQuestionProperty
  set newValue EvaluationFormItemProperty {..}
    = EvaluationFormItemProperty {question = Prelude.pure newValue, ..}
instance Property "Section" EvaluationFormItemProperty where
  type PropertyType "Section" EvaluationFormItemProperty = EvaluationFormSectionProperty
  set newValue EvaluationFormItemProperty {..}
    = EvaluationFormItemProperty {section = Prelude.pure newValue, ..}