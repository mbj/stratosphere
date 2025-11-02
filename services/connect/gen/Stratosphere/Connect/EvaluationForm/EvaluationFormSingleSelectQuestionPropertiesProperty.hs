module Stratosphere.Connect.EvaluationForm.EvaluationFormSingleSelectQuestionPropertiesProperty (
        module Exports,
        EvaluationFormSingleSelectQuestionPropertiesProperty(..),
        mkEvaluationFormSingleSelectQuestionPropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Connect.EvaluationForm.EvaluationFormSingleSelectQuestionAutomationProperty as Exports
import {-# SOURCE #-} Stratosphere.Connect.EvaluationForm.EvaluationFormSingleSelectQuestionOptionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EvaluationFormSingleSelectQuestionPropertiesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-evaluationform-evaluationformsingleselectquestionproperties.html>
    EvaluationFormSingleSelectQuestionPropertiesProperty {haddock_workaround_ :: (),
                                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-evaluationform-evaluationformsingleselectquestionproperties.html#cfn-connect-evaluationform-evaluationformsingleselectquestionproperties-automation>
                                                          automation :: (Prelude.Maybe EvaluationFormSingleSelectQuestionAutomationProperty),
                                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-evaluationform-evaluationformsingleselectquestionproperties.html#cfn-connect-evaluationform-evaluationformsingleselectquestionproperties-displayas>
                                                          displayAs :: (Prelude.Maybe (Value Prelude.Text)),
                                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-evaluationform-evaluationformsingleselectquestionproperties.html#cfn-connect-evaluationform-evaluationformsingleselectquestionproperties-options>
                                                          options :: [EvaluationFormSingleSelectQuestionOptionProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEvaluationFormSingleSelectQuestionPropertiesProperty ::
  [EvaluationFormSingleSelectQuestionOptionProperty]
  -> EvaluationFormSingleSelectQuestionPropertiesProperty
mkEvaluationFormSingleSelectQuestionPropertiesProperty options
  = EvaluationFormSingleSelectQuestionPropertiesProperty
      {haddock_workaround_ = (), options = options,
       automation = Prelude.Nothing, displayAs = Prelude.Nothing}
instance ToResourceProperties EvaluationFormSingleSelectQuestionPropertiesProperty where
  toResourceProperties
    EvaluationFormSingleSelectQuestionPropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::Connect::EvaluationForm.EvaluationFormSingleSelectQuestionProperties",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Options" JSON..= options]
                           (Prelude.catMaybes
                              [(JSON..=) "Automation" Prelude.<$> automation,
                               (JSON..=) "DisplayAs" Prelude.<$> displayAs]))}
instance JSON.ToJSON EvaluationFormSingleSelectQuestionPropertiesProperty where
  toJSON EvaluationFormSingleSelectQuestionPropertiesProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Options" JSON..= options]
              (Prelude.catMaybes
                 [(JSON..=) "Automation" Prelude.<$> automation,
                  (JSON..=) "DisplayAs" Prelude.<$> displayAs])))
instance Property "Automation" EvaluationFormSingleSelectQuestionPropertiesProperty where
  type PropertyType "Automation" EvaluationFormSingleSelectQuestionPropertiesProperty = EvaluationFormSingleSelectQuestionAutomationProperty
  set
    newValue
    EvaluationFormSingleSelectQuestionPropertiesProperty {..}
    = EvaluationFormSingleSelectQuestionPropertiesProperty
        {automation = Prelude.pure newValue, ..}
instance Property "DisplayAs" EvaluationFormSingleSelectQuestionPropertiesProperty where
  type PropertyType "DisplayAs" EvaluationFormSingleSelectQuestionPropertiesProperty = Value Prelude.Text
  set
    newValue
    EvaluationFormSingleSelectQuestionPropertiesProperty {..}
    = EvaluationFormSingleSelectQuestionPropertiesProperty
        {displayAs = Prelude.pure newValue, ..}
instance Property "Options" EvaluationFormSingleSelectQuestionPropertiesProperty where
  type PropertyType "Options" EvaluationFormSingleSelectQuestionPropertiesProperty = [EvaluationFormSingleSelectQuestionOptionProperty]
  set
    newValue
    EvaluationFormSingleSelectQuestionPropertiesProperty {..}
    = EvaluationFormSingleSelectQuestionPropertiesProperty
        {options = newValue, ..}