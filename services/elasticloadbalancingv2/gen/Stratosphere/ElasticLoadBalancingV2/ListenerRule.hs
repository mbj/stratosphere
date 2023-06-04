module Stratosphere.ElasticLoadBalancingV2.ListenerRule (
        module Exports, ListenerRule(..), mkListenerRule
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ElasticLoadBalancingV2.ListenerRule.ActionProperty as Exports
import {-# SOURCE #-} Stratosphere.ElasticLoadBalancingV2.ListenerRule.RuleConditionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ListenerRule
  = ListenerRule {actions :: [ActionProperty],
                  conditions :: [RuleConditionProperty],
                  listenerArn :: (Prelude.Maybe (Value Prelude.Text)),
                  priority :: (Value Prelude.Integer)}
mkListenerRule ::
  [ActionProperty]
  -> [RuleConditionProperty] -> Value Prelude.Integer -> ListenerRule
mkListenerRule actions conditions priority
  = ListenerRule
      {actions = actions, conditions = conditions, priority = priority,
       listenerArn = Prelude.Nothing}
instance ToResourceProperties ListenerRule where
  toResourceProperties ListenerRule {..}
    = ResourceProperties
        {awsType = "AWS::ElasticLoadBalancingV2::ListenerRule",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Actions" JSON..= actions, "Conditions" JSON..= conditions,
                            "Priority" JSON..= priority]
                           (Prelude.catMaybes
                              [(JSON..=) "ListenerArn" Prelude.<$> listenerArn]))}
instance JSON.ToJSON ListenerRule where
  toJSON ListenerRule {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Actions" JSON..= actions, "Conditions" JSON..= conditions,
               "Priority" JSON..= priority]
              (Prelude.catMaybes
                 [(JSON..=) "ListenerArn" Prelude.<$> listenerArn])))
instance Property "Actions" ListenerRule where
  type PropertyType "Actions" ListenerRule = [ActionProperty]
  set newValue ListenerRule {..}
    = ListenerRule {actions = newValue, ..}
instance Property "Conditions" ListenerRule where
  type PropertyType "Conditions" ListenerRule = [RuleConditionProperty]
  set newValue ListenerRule {..}
    = ListenerRule {conditions = newValue, ..}
instance Property "ListenerArn" ListenerRule where
  type PropertyType "ListenerArn" ListenerRule = Value Prelude.Text
  set newValue ListenerRule {..}
    = ListenerRule {listenerArn = Prelude.pure newValue, ..}
instance Property "Priority" ListenerRule where
  type PropertyType "Priority" ListenerRule = Value Prelude.Integer
  set newValue ListenerRule {..}
    = ListenerRule {priority = newValue, ..}