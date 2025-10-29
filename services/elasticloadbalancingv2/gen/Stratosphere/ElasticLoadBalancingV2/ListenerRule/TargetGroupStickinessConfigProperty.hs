module Stratosphere.ElasticLoadBalancingV2.ListenerRule.TargetGroupStickinessConfigProperty (
        TargetGroupStickinessConfigProperty(..),
        mkTargetGroupStickinessConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TargetGroupStickinessConfigProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-targetgroupstickinessconfig.html>
    TargetGroupStickinessConfigProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-targetgroupstickinessconfig.html#cfn-elasticloadbalancingv2-listenerrule-targetgroupstickinessconfig-durationseconds>
                                         durationSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
                                         -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-targetgroupstickinessconfig.html#cfn-elasticloadbalancingv2-listenerrule-targetgroupstickinessconfig-enabled>
                                         enabled :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTargetGroupStickinessConfigProperty ::
  TargetGroupStickinessConfigProperty
mkTargetGroupStickinessConfigProperty
  = TargetGroupStickinessConfigProperty
      {durationSeconds = Prelude.Nothing, enabled = Prelude.Nothing}
instance ToResourceProperties TargetGroupStickinessConfigProperty where
  toResourceProperties TargetGroupStickinessConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::ElasticLoadBalancingV2::ListenerRule.TargetGroupStickinessConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DurationSeconds" Prelude.<$> durationSeconds,
                            (JSON..=) "Enabled" Prelude.<$> enabled])}
instance JSON.ToJSON TargetGroupStickinessConfigProperty where
  toJSON TargetGroupStickinessConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DurationSeconds" Prelude.<$> durationSeconds,
               (JSON..=) "Enabled" Prelude.<$> enabled]))
instance Property "DurationSeconds" TargetGroupStickinessConfigProperty where
  type PropertyType "DurationSeconds" TargetGroupStickinessConfigProperty = Value Prelude.Integer
  set newValue TargetGroupStickinessConfigProperty {..}
    = TargetGroupStickinessConfigProperty
        {durationSeconds = Prelude.pure newValue, ..}
instance Property "Enabled" TargetGroupStickinessConfigProperty where
  type PropertyType "Enabled" TargetGroupStickinessConfigProperty = Value Prelude.Bool
  set newValue TargetGroupStickinessConfigProperty {..}
    = TargetGroupStickinessConfigProperty
        {enabled = Prelude.pure newValue, ..}