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
  = EvaluationFormSingleSelectQuestionPropertiesProperty {automation :: (Prelude.Maybe EvaluationFormSingleSelectQuestionAutomationProperty),
                                                          displayAs :: (Prelude.Maybe (Value Prelude.Text)),
                                                          options :: [EvaluationFormSingleSelectQuestionOptionProperty]}
mkEvaluationFormSingleSelectQuestionPropertiesProperty ::
  [EvaluationFormSingleSelectQuestionOptionProperty]
  -> EvaluationFormSingleSelectQuestionPropertiesProperty
mkEvaluationFormSingleSelectQuestionPropertiesProperty options
  = EvaluationFormSingleSelectQuestionPropertiesProperty
      {options = options, automation = Prelude.Nothing,
       displayAs = Prelude.Nothing}
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