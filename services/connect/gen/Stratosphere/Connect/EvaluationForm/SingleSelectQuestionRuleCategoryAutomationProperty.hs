module Stratosphere.Connect.EvaluationForm.SingleSelectQuestionRuleCategoryAutomationProperty (
        SingleSelectQuestionRuleCategoryAutomationProperty(..),
        mkSingleSelectQuestionRuleCategoryAutomationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SingleSelectQuestionRuleCategoryAutomationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-evaluationform-singleselectquestionrulecategoryautomation.html>
    SingleSelectQuestionRuleCategoryAutomationProperty {haddock_workaround_ :: (),
                                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-evaluationform-singleselectquestionrulecategoryautomation.html#cfn-connect-evaluationform-singleselectquestionrulecategoryautomation-category>
                                                        category :: (Value Prelude.Text),
                                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-evaluationform-singleselectquestionrulecategoryautomation.html#cfn-connect-evaluationform-singleselectquestionrulecategoryautomation-condition>
                                                        condition :: (Value Prelude.Text),
                                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-evaluationform-singleselectquestionrulecategoryautomation.html#cfn-connect-evaluationform-singleselectquestionrulecategoryautomation-optionrefid>
                                                        optionRefId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSingleSelectQuestionRuleCategoryAutomationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text
        -> SingleSelectQuestionRuleCategoryAutomationProperty
mkSingleSelectQuestionRuleCategoryAutomationProperty
  category
  condition
  optionRefId
  = SingleSelectQuestionRuleCategoryAutomationProperty
      {haddock_workaround_ = (), category = category,
       condition = condition, optionRefId = optionRefId}
instance ToResourceProperties SingleSelectQuestionRuleCategoryAutomationProperty where
  toResourceProperties
    SingleSelectQuestionRuleCategoryAutomationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Connect::EvaluationForm.SingleSelectQuestionRuleCategoryAutomation",
         supportsTags = Prelude.False,
         properties = ["Category" JSON..= category,
                       "Condition" JSON..= condition, "OptionRefId" JSON..= optionRefId]}
instance JSON.ToJSON SingleSelectQuestionRuleCategoryAutomationProperty where
  toJSON SingleSelectQuestionRuleCategoryAutomationProperty {..}
    = JSON.object
        ["Category" JSON..= category, "Condition" JSON..= condition,
         "OptionRefId" JSON..= optionRefId]
instance Property "Category" SingleSelectQuestionRuleCategoryAutomationProperty where
  type PropertyType "Category" SingleSelectQuestionRuleCategoryAutomationProperty = Value Prelude.Text
  set
    newValue
    SingleSelectQuestionRuleCategoryAutomationProperty {..}
    = SingleSelectQuestionRuleCategoryAutomationProperty
        {category = newValue, ..}
instance Property "Condition" SingleSelectQuestionRuleCategoryAutomationProperty where
  type PropertyType "Condition" SingleSelectQuestionRuleCategoryAutomationProperty = Value Prelude.Text
  set
    newValue
    SingleSelectQuestionRuleCategoryAutomationProperty {..}
    = SingleSelectQuestionRuleCategoryAutomationProperty
        {condition = newValue, ..}
instance Property "OptionRefId" SingleSelectQuestionRuleCategoryAutomationProperty where
  type PropertyType "OptionRefId" SingleSelectQuestionRuleCategoryAutomationProperty = Value Prelude.Text
  set
    newValue
    SingleSelectQuestionRuleCategoryAutomationProperty {..}
    = SingleSelectQuestionRuleCategoryAutomationProperty
        {optionRefId = newValue, ..}