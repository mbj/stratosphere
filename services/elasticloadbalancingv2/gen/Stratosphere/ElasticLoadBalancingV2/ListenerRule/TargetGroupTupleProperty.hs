module Stratosphere.ElasticLoadBalancingV2.ListenerRule.TargetGroupTupleProperty (
        TargetGroupTupleProperty(..), mkTargetGroupTupleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TargetGroupTupleProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-targetgrouptuple.html>
    TargetGroupTupleProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-targetgrouptuple.html#cfn-elasticloadbalancingv2-listenerrule-targetgrouptuple-targetgrouparn>
                              targetGroupArn :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-targetgrouptuple.html#cfn-elasticloadbalancingv2-listenerrule-targetgrouptuple-weight>
                              weight :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTargetGroupTupleProperty :: TargetGroupTupleProperty
mkTargetGroupTupleProperty
  = TargetGroupTupleProperty
      {haddock_workaround_ = (), targetGroupArn = Prelude.Nothing,
       weight = Prelude.Nothing}
instance ToResourceProperties TargetGroupTupleProperty where
  toResourceProperties TargetGroupTupleProperty {..}
    = ResourceProperties
        {awsType = "AWS::ElasticLoadBalancingV2::ListenerRule.TargetGroupTuple",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "TargetGroupArn" Prelude.<$> targetGroupArn,
                            (JSON..=) "Weight" Prelude.<$> weight])}
instance JSON.ToJSON TargetGroupTupleProperty where
  toJSON TargetGroupTupleProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "TargetGroupArn" Prelude.<$> targetGroupArn,
               (JSON..=) "Weight" Prelude.<$> weight]))
instance Property "TargetGroupArn" TargetGroupTupleProperty where
  type PropertyType "TargetGroupArn" TargetGroupTupleProperty = Value Prelude.Text
  set newValue TargetGroupTupleProperty {..}
    = TargetGroupTupleProperty
        {targetGroupArn = Prelude.pure newValue, ..}
instance Property "Weight" TargetGroupTupleProperty where
  type PropertyType "Weight" TargetGroupTupleProperty = Value Prelude.Integer
  set newValue TargetGroupTupleProperty {..}
    = TargetGroupTupleProperty {weight = Prelude.pure newValue, ..}