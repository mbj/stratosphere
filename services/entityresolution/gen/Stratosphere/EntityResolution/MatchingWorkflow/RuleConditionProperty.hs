module Stratosphere.EntityResolution.MatchingWorkflow.RuleConditionProperty (
        RuleConditionProperty(..), mkRuleConditionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RuleConditionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-entityresolution-matchingworkflow-rulecondition.html>
    RuleConditionProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-entityresolution-matchingworkflow-rulecondition.html#cfn-entityresolution-matchingworkflow-rulecondition-condition>
                           condition :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-entityresolution-matchingworkflow-rulecondition.html#cfn-entityresolution-matchingworkflow-rulecondition-rulename>
                           ruleName :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRuleConditionProperty :: RuleConditionProperty
mkRuleConditionProperty
  = RuleConditionProperty
      {haddock_workaround_ = (), condition = Prelude.Nothing,
       ruleName = Prelude.Nothing}
instance ToResourceProperties RuleConditionProperty where
  toResourceProperties RuleConditionProperty {..}
    = ResourceProperties
        {awsType = "AWS::EntityResolution::MatchingWorkflow.RuleCondition",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Condition" Prelude.<$> condition,
                            (JSON..=) "RuleName" Prelude.<$> ruleName])}
instance JSON.ToJSON RuleConditionProperty where
  toJSON RuleConditionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Condition" Prelude.<$> condition,
               (JSON..=) "RuleName" Prelude.<$> ruleName]))
instance Property "Condition" RuleConditionProperty where
  type PropertyType "Condition" RuleConditionProperty = Value Prelude.Text
  set newValue RuleConditionProperty {..}
    = RuleConditionProperty {condition = Prelude.pure newValue, ..}
instance Property "RuleName" RuleConditionProperty where
  type PropertyType "RuleName" RuleConditionProperty = Value Prelude.Text
  set newValue RuleConditionProperty {..}
    = RuleConditionProperty {ruleName = Prelude.pure newValue, ..}