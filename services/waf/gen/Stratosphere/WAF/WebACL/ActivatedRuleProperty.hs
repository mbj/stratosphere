module Stratosphere.WAF.WebACL.ActivatedRuleProperty (
        module Exports, ActivatedRuleProperty(..), mkActivatedRuleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.WAF.WebACL.WafActionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ActivatedRuleProperty
  = ActivatedRuleProperty {action :: (Prelude.Maybe WafActionProperty),
                           priority :: (Value Prelude.Integer),
                           ruleId :: (Value Prelude.Text)}
mkActivatedRuleProperty ::
  Value Prelude.Integer
  -> Value Prelude.Text -> ActivatedRuleProperty
mkActivatedRuleProperty priority ruleId
  = ActivatedRuleProperty
      {priority = priority, ruleId = ruleId, action = Prelude.Nothing}
instance ToResourceProperties ActivatedRuleProperty where
  toResourceProperties ActivatedRuleProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAF::WebACL.ActivatedRule",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Priority" JSON..= priority, "RuleId" JSON..= ruleId]
                           (Prelude.catMaybes [(JSON..=) "Action" Prelude.<$> action]))}
instance JSON.ToJSON ActivatedRuleProperty where
  toJSON ActivatedRuleProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Priority" JSON..= priority, "RuleId" JSON..= ruleId]
              (Prelude.catMaybes [(JSON..=) "Action" Prelude.<$> action])))
instance Property "Action" ActivatedRuleProperty where
  type PropertyType "Action" ActivatedRuleProperty = WafActionProperty
  set newValue ActivatedRuleProperty {..}
    = ActivatedRuleProperty {action = Prelude.pure newValue, ..}
instance Property "Priority" ActivatedRuleProperty where
  type PropertyType "Priority" ActivatedRuleProperty = Value Prelude.Integer
  set newValue ActivatedRuleProperty {..}
    = ActivatedRuleProperty {priority = newValue, ..}
instance Property "RuleId" ActivatedRuleProperty where
  type PropertyType "RuleId" ActivatedRuleProperty = Value Prelude.Text
  set newValue ActivatedRuleProperty {..}
    = ActivatedRuleProperty {ruleId = newValue, ..}