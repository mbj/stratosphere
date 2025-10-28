module Stratosphere.Connect.EvaluationForm.EvaluationFormNumericQuestionPropertiesProperty (
        module Exports,
        EvaluationFormNumericQuestionPropertiesProperty(..),
        mkEvaluationFormNumericQuestionPropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Connect.EvaluationForm.EvaluationFormNumericQuestionAutomationProperty as Exports
import {-# SOURCE #-} Stratosphere.Connect.EvaluationForm.EvaluationFormNumericQuestionOptionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EvaluationFormNumericQuestionPropertiesProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-evaluationform-evaluationformnumericquestionproperties.html>
    EvaluationFormNumericQuestionPropertiesProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-evaluationform-evaluationformnumericquestionproperties.html#cfn-connect-evaluationform-evaluationformnumericquestionproperties-automation>
                                                     automation :: (Prelude.Maybe EvaluationFormNumericQuestionAutomationProperty),
                                                     -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-evaluationform-evaluationformnumericquestionproperties.html#cfn-connect-evaluationform-evaluationformnumericquestionproperties-maxvalue>
                                                     maxValue :: (Value Prelude.Integer),
                                                     -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-evaluationform-evaluationformnumericquestionproperties.html#cfn-connect-evaluationform-evaluationformnumericquestionproperties-minvalue>
                                                     minValue :: (Value Prelude.Integer),
                                                     -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-evaluationform-evaluationformnumericquestionproperties.html#cfn-connect-evaluationform-evaluationformnumericquestionproperties-options>
                                                     options :: (Prelude.Maybe [EvaluationFormNumericQuestionOptionProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEvaluationFormNumericQuestionPropertiesProperty ::
  Value Prelude.Integer
  -> Value Prelude.Integer
     -> EvaluationFormNumericQuestionPropertiesProperty
mkEvaluationFormNumericQuestionPropertiesProperty maxValue minValue
  = EvaluationFormNumericQuestionPropertiesProperty
      {maxValue = maxValue, minValue = minValue,
       automation = Prelude.Nothing, options = Prelude.Nothing}
instance ToResourceProperties EvaluationFormNumericQuestionPropertiesProperty where
  toResourceProperties
    EvaluationFormNumericQuestionPropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::Connect::EvaluationForm.EvaluationFormNumericQuestionProperties",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["MaxValue" JSON..= maxValue, "MinValue" JSON..= minValue]
                           (Prelude.catMaybes
                              [(JSON..=) "Automation" Prelude.<$> automation,
                               (JSON..=) "Options" Prelude.<$> options]))}
instance JSON.ToJSON EvaluationFormNumericQuestionPropertiesProperty where
  toJSON EvaluationFormNumericQuestionPropertiesProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["MaxValue" JSON..= maxValue, "MinValue" JSON..= minValue]
              (Prelude.catMaybes
                 [(JSON..=) "Automation" Prelude.<$> automation,
                  (JSON..=) "Options" Prelude.<$> options])))
instance Property "Automation" EvaluationFormNumericQuestionPropertiesProperty where
  type PropertyType "Automation" EvaluationFormNumericQuestionPropertiesProperty = EvaluationFormNumericQuestionAutomationProperty
  set newValue EvaluationFormNumericQuestionPropertiesProperty {..}
    = EvaluationFormNumericQuestionPropertiesProperty
        {automation = Prelude.pure newValue, ..}
instance Property "MaxValue" EvaluationFormNumericQuestionPropertiesProperty where
  type PropertyType "MaxValue" EvaluationFormNumericQuestionPropertiesProperty = Value Prelude.Integer
  set newValue EvaluationFormNumericQuestionPropertiesProperty {..}
    = EvaluationFormNumericQuestionPropertiesProperty
        {maxValue = newValue, ..}
instance Property "MinValue" EvaluationFormNumericQuestionPropertiesProperty where
  type PropertyType "MinValue" EvaluationFormNumericQuestionPropertiesProperty = Value Prelude.Integer
  set newValue EvaluationFormNumericQuestionPropertiesProperty {..}
    = EvaluationFormNumericQuestionPropertiesProperty
        {minValue = newValue, ..}
instance Property "Options" EvaluationFormNumericQuestionPropertiesProperty where
  type PropertyType "Options" EvaluationFormNumericQuestionPropertiesProperty = [EvaluationFormNumericQuestionOptionProperty]
  set newValue EvaluationFormNumericQuestionPropertiesProperty {..}
    = EvaluationFormNumericQuestionPropertiesProperty
        {options = Prelude.pure newValue, ..}