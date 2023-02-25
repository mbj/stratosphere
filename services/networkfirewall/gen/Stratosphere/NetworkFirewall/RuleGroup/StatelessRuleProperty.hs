module Stratosphere.NetworkFirewall.RuleGroup.StatelessRuleProperty (
        module Exports, StatelessRuleProperty(..), mkStatelessRuleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.NetworkFirewall.RuleGroup.RuleDefinitionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data StatelessRuleProperty
  = StatelessRuleProperty {priority :: (Value Prelude.Integer),
                           ruleDefinition :: RuleDefinitionProperty}
mkStatelessRuleProperty ::
  Value Prelude.Integer
  -> RuleDefinitionProperty -> StatelessRuleProperty
mkStatelessRuleProperty priority ruleDefinition
  = StatelessRuleProperty
      {priority = priority, ruleDefinition = ruleDefinition}
instance ToResourceProperties StatelessRuleProperty where
  toResourceProperties StatelessRuleProperty {..}
    = ResourceProperties
        {awsType = "AWS::NetworkFirewall::RuleGroup.StatelessRule",
         properties = ["Priority" JSON..= priority,
                       "RuleDefinition" JSON..= ruleDefinition]}
instance JSON.ToJSON StatelessRuleProperty where
  toJSON StatelessRuleProperty {..}
    = JSON.object
        ["Priority" JSON..= priority,
         "RuleDefinition" JSON..= ruleDefinition]
instance Property "Priority" StatelessRuleProperty where
  type PropertyType "Priority" StatelessRuleProperty = Value Prelude.Integer
  set newValue StatelessRuleProperty {..}
    = StatelessRuleProperty {priority = newValue, ..}
instance Property "RuleDefinition" StatelessRuleProperty where
  type PropertyType "RuleDefinition" StatelessRuleProperty = RuleDefinitionProperty
  set newValue StatelessRuleProperty {..}
    = StatelessRuleProperty {ruleDefinition = newValue, ..}