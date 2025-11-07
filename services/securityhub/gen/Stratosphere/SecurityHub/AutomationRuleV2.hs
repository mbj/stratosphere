module Stratosphere.SecurityHub.AutomationRuleV2 (
        module Exports, AutomationRuleV2(..), mkAutomationRuleV2
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SecurityHub.AutomationRuleV2.AutomationRulesActionV2Property as Exports
import {-# SOURCE #-} Stratosphere.SecurityHub.AutomationRuleV2.CriteriaProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AutomationRuleV2
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-securityhub-automationrulev2.html>
    AutomationRuleV2 {haddock_workaround_ :: (),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-securityhub-automationrulev2.html#cfn-securityhub-automationrulev2-actions>
                      actions :: [AutomationRulesActionV2Property],
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-securityhub-automationrulev2.html#cfn-securityhub-automationrulev2-criteria>
                      criteria :: CriteriaProperty,
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-securityhub-automationrulev2.html#cfn-securityhub-automationrulev2-description>
                      description :: (Value Prelude.Text),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-securityhub-automationrulev2.html#cfn-securityhub-automationrulev2-rulename>
                      ruleName :: (Value Prelude.Text),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-securityhub-automationrulev2.html#cfn-securityhub-automationrulev2-ruleorder>
                      ruleOrder :: (Value Prelude.Double),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-securityhub-automationrulev2.html#cfn-securityhub-automationrulev2-rulestatus>
                      ruleStatus :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-securityhub-automationrulev2.html#cfn-securityhub-automationrulev2-tags>
                      tags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text)))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAutomationRuleV2 ::
  [AutomationRulesActionV2Property]
  -> CriteriaProperty
     -> Value Prelude.Text
        -> Value Prelude.Text -> Value Prelude.Double -> AutomationRuleV2
mkAutomationRuleV2 actions criteria description ruleName ruleOrder
  = AutomationRuleV2
      {haddock_workaround_ = (), actions = actions, criteria = criteria,
       description = description, ruleName = ruleName,
       ruleOrder = ruleOrder, ruleStatus = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties AutomationRuleV2 where
  toResourceProperties AutomationRuleV2 {..}
    = ResourceProperties
        {awsType = "AWS::SecurityHub::AutomationRuleV2",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Actions" JSON..= actions, "Criteria" JSON..= criteria,
                            "Description" JSON..= description, "RuleName" JSON..= ruleName,
                            "RuleOrder" JSON..= ruleOrder]
                           (Prelude.catMaybes
                              [(JSON..=) "RuleStatus" Prelude.<$> ruleStatus,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON AutomationRuleV2 where
  toJSON AutomationRuleV2 {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Actions" JSON..= actions, "Criteria" JSON..= criteria,
               "Description" JSON..= description, "RuleName" JSON..= ruleName,
               "RuleOrder" JSON..= ruleOrder]
              (Prelude.catMaybes
                 [(JSON..=) "RuleStatus" Prelude.<$> ruleStatus,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Actions" AutomationRuleV2 where
  type PropertyType "Actions" AutomationRuleV2 = [AutomationRulesActionV2Property]
  set newValue AutomationRuleV2 {..}
    = AutomationRuleV2 {actions = newValue, ..}
instance Property "Criteria" AutomationRuleV2 where
  type PropertyType "Criteria" AutomationRuleV2 = CriteriaProperty
  set newValue AutomationRuleV2 {..}
    = AutomationRuleV2 {criteria = newValue, ..}
instance Property "Description" AutomationRuleV2 where
  type PropertyType "Description" AutomationRuleV2 = Value Prelude.Text
  set newValue AutomationRuleV2 {..}
    = AutomationRuleV2 {description = newValue, ..}
instance Property "RuleName" AutomationRuleV2 where
  type PropertyType "RuleName" AutomationRuleV2 = Value Prelude.Text
  set newValue AutomationRuleV2 {..}
    = AutomationRuleV2 {ruleName = newValue, ..}
instance Property "RuleOrder" AutomationRuleV2 where
  type PropertyType "RuleOrder" AutomationRuleV2 = Value Prelude.Double
  set newValue AutomationRuleV2 {..}
    = AutomationRuleV2 {ruleOrder = newValue, ..}
instance Property "RuleStatus" AutomationRuleV2 where
  type PropertyType "RuleStatus" AutomationRuleV2 = Value Prelude.Text
  set newValue AutomationRuleV2 {..}
    = AutomationRuleV2 {ruleStatus = Prelude.pure newValue, ..}
instance Property "Tags" AutomationRuleV2 where
  type PropertyType "Tags" AutomationRuleV2 = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue AutomationRuleV2 {..}
    = AutomationRuleV2 {tags = Prelude.pure newValue, ..}