module Stratosphere.Connect.EvaluationForm.EvaluationFormQuestionTypePropertiesProperty (
        module Exports, EvaluationFormQuestionTypePropertiesProperty(..),
        mkEvaluationFormQuestionTypePropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Connect.EvaluationForm.EvaluationFormNumericQuestionPropertiesProperty as Exports
import {-# SOURCE #-} Stratosphere.Connect.EvaluationForm.EvaluationFormSingleSelectQuestionPropertiesProperty as Exports
import Stratosphere.ResourceProperties
data EvaluationFormQuestionTypePropertiesProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-evaluationform-evaluationformquestiontypeproperties.html>
    EvaluationFormQuestionTypePropertiesProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-evaluationform-evaluationformquestiontypeproperties.html#cfn-connect-evaluationform-evaluationformquestiontypeproperties-numeric>
                                                  numeric :: (Prelude.Maybe EvaluationFormNumericQuestionPropertiesProperty),
                                                  -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-evaluationform-evaluationformquestiontypeproperties.html#cfn-connect-evaluationform-evaluationformquestiontypeproperties-singleselect>
                                                  singleSelect :: (Prelude.Maybe EvaluationFormSingleSelectQuestionPropertiesProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEvaluationFormQuestionTypePropertiesProperty ::
  EvaluationFormQuestionTypePropertiesProperty
mkEvaluationFormQuestionTypePropertiesProperty
  = EvaluationFormQuestionTypePropertiesProperty
      {numeric = Prelude.Nothing, singleSelect = Prelude.Nothing}
instance ToResourceProperties EvaluationFormQuestionTypePropertiesProperty where
  toResourceProperties
    EvaluationFormQuestionTypePropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::Connect::EvaluationForm.EvaluationFormQuestionTypeProperties",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Numeric" Prelude.<$> numeric,
                            (JSON..=) "SingleSelect" Prelude.<$> singleSelect])}
instance JSON.ToJSON EvaluationFormQuestionTypePropertiesProperty where
  toJSON EvaluationFormQuestionTypePropertiesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Numeric" Prelude.<$> numeric,
               (JSON..=) "SingleSelect" Prelude.<$> singleSelect]))
instance Property "Numeric" EvaluationFormQuestionTypePropertiesProperty where
  type PropertyType "Numeric" EvaluationFormQuestionTypePropertiesProperty = EvaluationFormNumericQuestionPropertiesProperty
  set newValue EvaluationFormQuestionTypePropertiesProperty {..}
    = EvaluationFormQuestionTypePropertiesProperty
        {numeric = Prelude.pure newValue, ..}
instance Property "SingleSelect" EvaluationFormQuestionTypePropertiesProperty where
  type PropertyType "SingleSelect" EvaluationFormQuestionTypePropertiesProperty = EvaluationFormSingleSelectQuestionPropertiesProperty
  set newValue EvaluationFormQuestionTypePropertiesProperty {..}
    = EvaluationFormQuestionTypePropertiesProperty
        {singleSelect = Prelude.pure newValue, ..}