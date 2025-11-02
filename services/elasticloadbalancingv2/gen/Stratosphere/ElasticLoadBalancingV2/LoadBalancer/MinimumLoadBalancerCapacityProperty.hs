module Stratosphere.ElasticLoadBalancingV2.LoadBalancer.MinimumLoadBalancerCapacityProperty (
        MinimumLoadBalancerCapacityProperty(..),
        mkMinimumLoadBalancerCapacityProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MinimumLoadBalancerCapacityProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-loadbalancer-minimumloadbalancercapacity.html>
    MinimumLoadBalancerCapacityProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-loadbalancer-minimumloadbalancercapacity.html#cfn-elasticloadbalancingv2-loadbalancer-minimumloadbalancercapacity-capacityunits>
                                         capacityUnits :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMinimumLoadBalancerCapacityProperty ::
  Value Prelude.Integer -> MinimumLoadBalancerCapacityProperty
mkMinimumLoadBalancerCapacityProperty capacityUnits
  = MinimumLoadBalancerCapacityProperty
      {haddock_workaround_ = (), capacityUnits = capacityUnits}
instance ToResourceProperties MinimumLoadBalancerCapacityProperty where
  toResourceProperties MinimumLoadBalancerCapacityProperty {..}
    = ResourceProperties
        {awsType = "AWS::ElasticLoadBalancingV2::LoadBalancer.MinimumLoadBalancerCapacity",
         supportsTags = Prelude.False,
         properties = ["CapacityUnits" JSON..= capacityUnits]}
instance JSON.ToJSON MinimumLoadBalancerCapacityProperty where
  toJSON MinimumLoadBalancerCapacityProperty {..}
    = JSON.object ["CapacityUnits" JSON..= capacityUnits]
instance Property "CapacityUnits" MinimumLoadBalancerCapacityProperty where
  type PropertyType "CapacityUnits" MinimumLoadBalancerCapacityProperty = Value Prelude.Integer
  set newValue MinimumLoadBalancerCapacityProperty {..}
    = MinimumLoadBalancerCapacityProperty
        {capacityUnits = newValue, ..}