module Stratosphere.ElasticLoadBalancingV2.Listener.TargetGroupStickinessConfigProperty (
        TargetGroupStickinessConfigProperty(..),
        mkTargetGroupStickinessConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TargetGroupStickinessConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-targetgroupstickinessconfig.html>
    TargetGroupStickinessConfigProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-targetgroupstickinessconfig.html#cfn-elasticloadbalancingv2-listener-targetgroupstickinessconfig-durationseconds>
                                         durationSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-targetgroupstickinessconfig.html#cfn-elasticloadbalancingv2-listener-targetgroupstickinessconfig-enabled>
                                         enabled :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTargetGroupStickinessConfigProperty ::
  TargetGroupStickinessConfigProperty
mkTargetGroupStickinessConfigProperty
  = TargetGroupStickinessConfigProperty
      {haddock_workaround_ = (), durationSeconds = Prelude.Nothing,
       enabled = Prelude.Nothing}
instance ToResourceProperties TargetGroupStickinessConfigProperty where
  toResourceProperties TargetGroupStickinessConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::ElasticLoadBalancingV2::Listener.TargetGroupStickinessConfig",
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