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
  = MinimumLoadBalancerCapacityProperty {capacityUnits :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMinimumLoadBalancerCapacityProperty ::
  Value Prelude.Integer -> MinimumLoadBalancerCapacityProperty
mkMinimumLoadBalancerCapacityProperty capacityUnits
  = MinimumLoadBalancerCapacityProperty
      {capacityUnits = capacityUnits}
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
  set newValue MinimumLoadBalancerCapacityProperty {}
    = MinimumLoadBalancerCapacityProperty
        {capacityUnits = newValue, ..}