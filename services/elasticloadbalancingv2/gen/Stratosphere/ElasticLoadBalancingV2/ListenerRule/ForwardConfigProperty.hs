module Stratosphere.ElasticLoadBalancingV2.ListenerRule.ForwardConfigProperty (
        module Exports, ForwardConfigProperty(..), mkForwardConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ElasticLoadBalancingV2.ListenerRule.TargetGroupStickinessConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.ElasticLoadBalancingV2.ListenerRule.TargetGroupTupleProperty as Exports
import Stratosphere.ResourceProperties
data ForwardConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-forwardconfig.html>
    ForwardConfigProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-forwardconfig.html#cfn-elasticloadbalancingv2-listenerrule-forwardconfig-targetgroupstickinessconfig>
                           targetGroupStickinessConfig :: (Prelude.Maybe TargetGroupStickinessConfigProperty),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-forwardconfig.html#cfn-elasticloadbalancingv2-listenerrule-forwardconfig-targetgroups>
                           targetGroups :: (Prelude.Maybe [TargetGroupTupleProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkForwardConfigProperty :: ForwardConfigProperty
mkForwardConfigProperty
  = ForwardConfigProperty
      {haddock_workaround_ = (),
       targetGroupStickinessConfig = Prelude.Nothing,
       targetGroups = Prelude.Nothing}
instance ToResourceProperties ForwardConfigProperty where
  toResourceProperties ForwardConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::ElasticLoadBalancingV2::ListenerRule.ForwardConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "TargetGroupStickinessConfig"
                              Prelude.<$> targetGroupStickinessConfig,
                            (JSON..=) "TargetGroups" Prelude.<$> targetGroups])}
instance JSON.ToJSON ForwardConfigProperty where
  toJSON ForwardConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "TargetGroupStickinessConfig"
                 Prelude.<$> targetGroupStickinessConfig,
               (JSON..=) "TargetGroups" Prelude.<$> targetGroups]))
instance Property "TargetGroupStickinessConfig" ForwardConfigProperty where
  type PropertyType "TargetGroupStickinessConfig" ForwardConfigProperty = TargetGroupStickinessConfigProperty
  set newValue ForwardConfigProperty {..}
    = ForwardConfigProperty
        {targetGroupStickinessConfig = Prelude.pure newValue, ..}
instance Property "TargetGroups" ForwardConfigProperty where
  type PropertyType "TargetGroups" ForwardConfigProperty = [TargetGroupTupleProperty]
  set newValue ForwardConfigProperty {..}
    = ForwardConfigProperty {targetGroups = Prelude.pure newValue, ..}