module Stratosphere.Route53RecoveryControl.SafetyRule (
        module Exports, SafetyRule(..), mkSafetyRule
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Route53RecoveryControl.SafetyRule.AssertionRuleProperty as Exports
import {-# SOURCE #-} Stratosphere.Route53RecoveryControl.SafetyRule.GatingRuleProperty as Exports
import {-# SOURCE #-} Stratosphere.Route53RecoveryControl.SafetyRule.RuleConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data SafetyRule
  = SafetyRule {assertionRule :: (Prelude.Maybe AssertionRuleProperty),
                controlPanelArn :: (Value Prelude.Text),
                gatingRule :: (Prelude.Maybe GatingRuleProperty),
                name :: (Value Prelude.Text),
                ruleConfig :: RuleConfigProperty,
                tags :: (Prelude.Maybe [Tag])}
mkSafetyRule ::
  Value Prelude.Text
  -> Value Prelude.Text -> RuleConfigProperty -> SafetyRule
mkSafetyRule controlPanelArn name ruleConfig
  = SafetyRule
      {controlPanelArn = controlPanelArn, name = name,
       ruleConfig = ruleConfig, assertionRule = Prelude.Nothing,
       gatingRule = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties SafetyRule where
  toResourceProperties SafetyRule {..}
    = ResourceProperties
        {awsType = "AWS::Route53RecoveryControl::SafetyRule",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ControlPanelArn" JSON..= controlPanelArn, "Name" JSON..= name,
                            "RuleConfig" JSON..= ruleConfig]
                           (Prelude.catMaybes
                              [(JSON..=) "AssertionRule" Prelude.<$> assertionRule,
                               (JSON..=) "GatingRule" Prelude.<$> gatingRule,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON SafetyRule where
  toJSON SafetyRule {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ControlPanelArn" JSON..= controlPanelArn, "Name" JSON..= name,
               "RuleConfig" JSON..= ruleConfig]
              (Prelude.catMaybes
                 [(JSON..=) "AssertionRule" Prelude.<$> assertionRule,
                  (JSON..=) "GatingRule" Prelude.<$> gatingRule,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "AssertionRule" SafetyRule where
  type PropertyType "AssertionRule" SafetyRule = AssertionRuleProperty
  set newValue SafetyRule {..}
    = SafetyRule {assertionRule = Prelude.pure newValue, ..}
instance Property "ControlPanelArn" SafetyRule where
  type PropertyType "ControlPanelArn" SafetyRule = Value Prelude.Text
  set newValue SafetyRule {..}
    = SafetyRule {controlPanelArn = newValue, ..}
instance Property "GatingRule" SafetyRule where
  type PropertyType "GatingRule" SafetyRule = GatingRuleProperty
  set newValue SafetyRule {..}
    = SafetyRule {gatingRule = Prelude.pure newValue, ..}
instance Property "Name" SafetyRule where
  type PropertyType "Name" SafetyRule = Value Prelude.Text
  set newValue SafetyRule {..} = SafetyRule {name = newValue, ..}
instance Property "RuleConfig" SafetyRule where
  type PropertyType "RuleConfig" SafetyRule = RuleConfigProperty
  set newValue SafetyRule {..}
    = SafetyRule {ruleConfig = newValue, ..}
instance Property "Tags" SafetyRule where
  type PropertyType "Tags" SafetyRule = [Tag]
  set newValue SafetyRule {..}
    = SafetyRule {tags = Prelude.pure newValue, ..}