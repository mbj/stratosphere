module Stratosphere.ElasticLoadBalancingV2.ListenerRule.TargetGroupTupleProperty (
        TargetGroupTupleProperty(..), mkTargetGroupTupleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TargetGroupTupleProperty
  = TargetGroupTupleProperty {targetGroupArn :: (Prelude.Maybe (Value Prelude.Text)),
                              weight :: (Prelude.Maybe (Value Prelude.Integer))}
mkTargetGroupTupleProperty :: TargetGroupTupleProperty
mkTargetGroupTupleProperty
  = TargetGroupTupleProperty
      {targetGroupArn = Prelude.Nothing, weight = Prelude.Nothing}
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