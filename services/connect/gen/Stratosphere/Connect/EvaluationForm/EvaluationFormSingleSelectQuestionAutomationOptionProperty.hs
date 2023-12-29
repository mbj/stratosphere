module Stratosphere.Connect.EvaluationForm.EvaluationFormSingleSelectQuestionAutomationOptionProperty (
        module Exports,
        EvaluationFormSingleSelectQuestionAutomationOptionProperty(..),
        mkEvaluationFormSingleSelectQuestionAutomationOptionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Connect.EvaluationForm.SingleSelectQuestionRuleCategoryAutomationProperty as Exports
import Stratosphere.ResourceProperties
data EvaluationFormSingleSelectQuestionAutomationOptionProperty
  = EvaluationFormSingleSelectQuestionAutomationOptionProperty {ruleCategory :: SingleSelectQuestionRuleCategoryAutomationProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEvaluationFormSingleSelectQuestionAutomationOptionProperty ::
  SingleSelectQuestionRuleCategoryAutomationProperty
  -> EvaluationFormSingleSelectQuestionAutomationOptionProperty
mkEvaluationFormSingleSelectQuestionAutomationOptionProperty
  ruleCategory
  = EvaluationFormSingleSelectQuestionAutomationOptionProperty
      {ruleCategory = ruleCategory}
instance ToResourceProperties EvaluationFormSingleSelectQuestionAutomationOptionProperty where
  toResourceProperties
    EvaluationFormSingleSelectQuestionAutomationOptionProperty {..}
    = ResourceProperties
        {awsType = "AWS::Connect::EvaluationForm.EvaluationFormSingleSelectQuestionAutomationOption",
         supportsTags = Prelude.False,
         properties = ["RuleCategory" JSON..= ruleCategory]}
instance JSON.ToJSON EvaluationFormSingleSelectQuestionAutomationOptionProperty where
  toJSON
    EvaluationFormSingleSelectQuestionAutomationOptionProperty {..}
    = JSON.object ["RuleCategory" JSON..= ruleCategory]
instance Property "RuleCategory" EvaluationFormSingleSelectQuestionAutomationOptionProperty where
  type PropertyType "RuleCategory" EvaluationFormSingleSelectQuestionAutomationOptionProperty = SingleSelectQuestionRuleCategoryAutomationProperty
  set
    newValue
    EvaluationFormSingleSelectQuestionAutomationOptionProperty {}
    = EvaluationFormSingleSelectQuestionAutomationOptionProperty
        {ruleCategory = newValue, ..}