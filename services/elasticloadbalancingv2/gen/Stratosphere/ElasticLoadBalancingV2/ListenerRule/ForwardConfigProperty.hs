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
  = ForwardConfigProperty {targetGroupStickinessConfig :: (Prelude.Maybe TargetGroupStickinessConfigProperty),
                           targetGroups :: (Prelude.Maybe [TargetGroupTupleProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkForwardConfigProperty :: ForwardConfigProperty
mkForwardConfigProperty
  = ForwardConfigProperty
      {targetGroupStickinessConfig = Prelude.Nothing,
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