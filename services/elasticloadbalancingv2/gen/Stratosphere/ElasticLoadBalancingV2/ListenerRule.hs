module Stratosphere.ElasticLoadBalancingV2.ListenerRule (
        module Exports, ListenerRule(..), mkListenerRule
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ElasticLoadBalancingV2.ListenerRule.ActionProperty as Exports
import {-# SOURCE #-} Stratosphere.ElasticLoadBalancingV2.ListenerRule.RuleConditionProperty as Exports
import {-# SOURCE #-} Stratosphere.ElasticLoadBalancingV2.ListenerRule.TransformProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ListenerRule
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticloadbalancingv2-listenerrule.html>
    ListenerRule {haddock_workaround_ :: (),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticloadbalancingv2-listenerrule.html#cfn-elasticloadbalancingv2-listenerrule-actions>
                  actions :: [ActionProperty],
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticloadbalancingv2-listenerrule.html#cfn-elasticloadbalancingv2-listenerrule-conditions>
                  conditions :: [RuleConditionProperty],
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticloadbalancingv2-listenerrule.html#cfn-elasticloadbalancingv2-listenerrule-listenerarn>
                  listenerArn :: (Prelude.Maybe (Value Prelude.Text)),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticloadbalancingv2-listenerrule.html#cfn-elasticloadbalancingv2-listenerrule-priority>
                  priority :: (Value Prelude.Integer),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticloadbalancingv2-listenerrule.html#cfn-elasticloadbalancingv2-listenerrule-transforms>
                  transforms :: (Prelude.Maybe [TransformProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkListenerRule ::
  [ActionProperty]
  -> [RuleConditionProperty] -> Value Prelude.Integer -> ListenerRule
mkListenerRule actions conditions priority
  = ListenerRule
      {haddock_workaround_ = (), actions = actions,
       conditions = conditions, priority = priority,
       listenerArn = Prelude.Nothing, transforms = Prelude.Nothing}
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
                              [(JSON..=) "ListenerArn" Prelude.<$> listenerArn,
                               (JSON..=) "Transforms" Prelude.<$> transforms]))}
instance JSON.ToJSON ListenerRule where
  toJSON ListenerRule {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Actions" JSON..= actions, "Conditions" JSON..= conditions,
               "Priority" JSON..= priority]
              (Prelude.catMaybes
                 [(JSON..=) "ListenerArn" Prelude.<$> listenerArn,
                  (JSON..=) "Transforms" Prelude.<$> transforms])))
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
instance Property "Transforms" ListenerRule where
  type PropertyType "Transforms" ListenerRule = [TransformProperty]
  set newValue ListenerRule {..}
    = ListenerRule {transforms = Prelude.pure newValue, ..}