module Stratosphere.WAFRegional.WebACL.RuleProperty (
        module Exports, RuleProperty(..), mkRuleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.WAFRegional.WebACL.ActionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RuleProperty
  = RuleProperty {action :: ActionProperty,
                  priority :: (Value Prelude.Integer),
                  ruleId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRuleProperty ::
  ActionProperty
  -> Value Prelude.Integer -> Value Prelude.Text -> RuleProperty
mkRuleProperty action priority ruleId
  = RuleProperty
      {action = action, priority = priority, ruleId = ruleId}
instance ToResourceProperties RuleProperty where
  toResourceProperties RuleProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFRegional::WebACL.Rule",
         supportsTags = Prelude.False,
         properties = ["Action" JSON..= action, "Priority" JSON..= priority,
                       "RuleId" JSON..= ruleId]}
instance JSON.ToJSON RuleProperty where
  toJSON RuleProperty {..}
    = JSON.object
        ["Action" JSON..= action, "Priority" JSON..= priority,
         "RuleId" JSON..= ruleId]
instance Property "Action" RuleProperty where
  type PropertyType "Action" RuleProperty = ActionProperty
  set newValue RuleProperty {..}
    = RuleProperty {action = newValue, ..}
instance Property "Priority" RuleProperty where
  type PropertyType "Priority" RuleProperty = Value Prelude.Integer
  set newValue RuleProperty {..}
    = RuleProperty {priority = newValue, ..}
instance Property "RuleId" RuleProperty where
  type PropertyType "RuleId" RuleProperty = Value Prelude.Text
  set newValue RuleProperty {..}
    = RuleProperty {ruleId = newValue, ..}