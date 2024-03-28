module Stratosphere.SecurityHub.AutomationRule (
        module Exports, AutomationRule(..), mkAutomationRule
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SecurityHub.AutomationRule.AutomationRulesActionProperty as Exports
import {-# SOURCE #-} Stratosphere.SecurityHub.AutomationRule.AutomationRulesFindingFiltersProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AutomationRule
  = AutomationRule {actions :: (Prelude.Maybe [AutomationRulesActionProperty]),
                    criteria :: (Prelude.Maybe AutomationRulesFindingFiltersProperty),
                    description :: (Prelude.Maybe (Value Prelude.Text)),
                    isTerminal :: (Prelude.Maybe (Value Prelude.Bool)),
                    ruleName :: (Prelude.Maybe (Value Prelude.Text)),
                    ruleOrder :: (Prelude.Maybe (Value Prelude.Integer)),
                    ruleStatus :: (Prelude.Maybe (Value Prelude.Text)),
                    tags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text)))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAutomationRule :: AutomationRule
mkAutomationRule
  = AutomationRule
      {actions = Prelude.Nothing, criteria = Prelude.Nothing,
       description = Prelude.Nothing, isTerminal = Prelude.Nothing,
       ruleName = Prelude.Nothing, ruleOrder = Prelude.Nothing,
       ruleStatus = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties AutomationRule where
  toResourceProperties AutomationRule {..}
    = ResourceProperties
        {awsType = "AWS::SecurityHub::AutomationRule",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Actions" Prelude.<$> actions,
                            (JSON..=) "Criteria" Prelude.<$> criteria,
                            (JSON..=) "Description" Prelude.<$> description,
                            (JSON..=) "IsTerminal" Prelude.<$> isTerminal,
                            (JSON..=) "RuleName" Prelude.<$> ruleName,
                            (JSON..=) "RuleOrder" Prelude.<$> ruleOrder,
                            (JSON..=) "RuleStatus" Prelude.<$> ruleStatus,
                            (JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON AutomationRule where
  toJSON AutomationRule {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Actions" Prelude.<$> actions,
               (JSON..=) "Criteria" Prelude.<$> criteria,
               (JSON..=) "Description" Prelude.<$> description,
               (JSON..=) "IsTerminal" Prelude.<$> isTerminal,
               (JSON..=) "RuleName" Prelude.<$> ruleName,
               (JSON..=) "RuleOrder" Prelude.<$> ruleOrder,
               (JSON..=) "RuleStatus" Prelude.<$> ruleStatus,
               (JSON..=) "Tags" Prelude.<$> tags]))
instance Property "Actions" AutomationRule where
  type PropertyType "Actions" AutomationRule = [AutomationRulesActionProperty]
  set newValue AutomationRule {..}
    = AutomationRule {actions = Prelude.pure newValue, ..}
instance Property "Criteria" AutomationRule where
  type PropertyType "Criteria" AutomationRule = AutomationRulesFindingFiltersProperty
  set newValue AutomationRule {..}
    = AutomationRule {criteria = Prelude.pure newValue, ..}
instance Property "Description" AutomationRule where
  type PropertyType "Description" AutomationRule = Value Prelude.Text
  set newValue AutomationRule {..}
    = AutomationRule {description = Prelude.pure newValue, ..}
instance Property "IsTerminal" AutomationRule where
  type PropertyType "IsTerminal" AutomationRule = Value Prelude.Bool
  set newValue AutomationRule {..}
    = AutomationRule {isTerminal = Prelude.pure newValue, ..}
instance Property "RuleName" AutomationRule where
  type PropertyType "RuleName" AutomationRule = Value Prelude.Text
  set newValue AutomationRule {..}
    = AutomationRule {ruleName = Prelude.pure newValue, ..}
instance Property "RuleOrder" AutomationRule where
  type PropertyType "RuleOrder" AutomationRule = Value Prelude.Integer
  set newValue AutomationRule {..}
    = AutomationRule {ruleOrder = Prelude.pure newValue, ..}
instance Property "RuleStatus" AutomationRule where
  type PropertyType "RuleStatus" AutomationRule = Value Prelude.Text
  set newValue AutomationRule {..}
    = AutomationRule {ruleStatus = Prelude.pure newValue, ..}
instance Property "Tags" AutomationRule where
  type PropertyType "Tags" AutomationRule = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue AutomationRule {..}
    = AutomationRule {tags = Prelude.pure newValue, ..}