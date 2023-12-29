module Stratosphere.Connect.EvaluationForm.EvaluationFormSingleSelectQuestionAutomationProperty (
        module Exports,
        EvaluationFormSingleSelectQuestionAutomationProperty(..),
        mkEvaluationFormSingleSelectQuestionAutomationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Connect.EvaluationForm.EvaluationFormSingleSelectQuestionAutomationOptionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EvaluationFormSingleSelectQuestionAutomationProperty
  = EvaluationFormSingleSelectQuestionAutomationProperty {defaultOptionRefId :: (Prelude.Maybe (Value Prelude.Text)),
                                                          options :: [EvaluationFormSingleSelectQuestionAutomationOptionProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEvaluationFormSingleSelectQuestionAutomationProperty ::
  [EvaluationFormSingleSelectQuestionAutomationOptionProperty]
  -> EvaluationFormSingleSelectQuestionAutomationProperty
mkEvaluationFormSingleSelectQuestionAutomationProperty options
  = EvaluationFormSingleSelectQuestionAutomationProperty
      {options = options, defaultOptionRefId = Prelude.Nothing}
instance ToResourceProperties EvaluationFormSingleSelectQuestionAutomationProperty where
  toResourceProperties
    EvaluationFormSingleSelectQuestionAutomationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Connect::EvaluationForm.EvaluationFormSingleSelectQuestionAutomation",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Options" JSON..= options]
                           (Prelude.catMaybes
                              [(JSON..=) "DefaultOptionRefId" Prelude.<$> defaultOptionRefId]))}
instance JSON.ToJSON EvaluationFormSingleSelectQuestionAutomationProperty where
  toJSON EvaluationFormSingleSelectQuestionAutomationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Options" JSON..= options]
              (Prelude.catMaybes
                 [(JSON..=) "DefaultOptionRefId" Prelude.<$> defaultOptionRefId])))
instance Property "DefaultOptionRefId" EvaluationFormSingleSelectQuestionAutomationProperty where
  type PropertyType "DefaultOptionRefId" EvaluationFormSingleSelectQuestionAutomationProperty = Value Prelude.Text
  set
    newValue
    EvaluationFormSingleSelectQuestionAutomationProperty {..}
    = EvaluationFormSingleSelectQuestionAutomationProperty
        {defaultOptionRefId = Prelude.pure newValue, ..}
instance Property "Options" EvaluationFormSingleSelectQuestionAutomationProperty where
  type PropertyType "Options" EvaluationFormSingleSelectQuestionAutomationProperty = [EvaluationFormSingleSelectQuestionAutomationOptionProperty]
  set
    newValue
    EvaluationFormSingleSelectQuestionAutomationProperty {..}
    = EvaluationFormSingleSelectQuestionAutomationProperty
        {options = newValue, ..}