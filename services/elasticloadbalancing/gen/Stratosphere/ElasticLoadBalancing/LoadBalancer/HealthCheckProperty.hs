module Stratosphere.ElasticLoadBalancing.LoadBalancer.HealthCheckProperty (
        HealthCheckProperty(..), mkHealthCheckProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HealthCheckProperty
  = HealthCheckProperty {healthyThreshold :: (Value Prelude.Text),
                         interval :: (Value Prelude.Text),
                         target :: (Value Prelude.Text),
                         timeout :: (Value Prelude.Text),
                         unhealthyThreshold :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHealthCheckProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text
        -> Value Prelude.Text -> Value Prelude.Text -> HealthCheckProperty
mkHealthCheckProperty
  healthyThreshold
  interval
  target
  timeout
  unhealthyThreshold
  = HealthCheckProperty
      {healthyThreshold = healthyThreshold, interval = interval,
       target = target, timeout = timeout,
       unhealthyThreshold = unhealthyThreshold}
instance ToResourceProperties HealthCheckProperty where
  toResourceProperties HealthCheckProperty {..}
    = ResourceProperties
        {awsType = "AWS::ElasticLoadBalancing::LoadBalancer.HealthCheck",
         supportsTags = Prelude.False,
         properties = ["HealthyThreshold" JSON..= healthyThreshold,
                       "Interval" JSON..= interval, "Target" JSON..= target,
                       "Timeout" JSON..= timeout,
                       "UnhealthyThreshold" JSON..= unhealthyThreshold]}
instance JSON.ToJSON HealthCheckProperty where
  toJSON HealthCheckProperty {..}
    = JSON.object
        ["HealthyThreshold" JSON..= healthyThreshold,
         "Interval" JSON..= interval, "Target" JSON..= target,
         "Timeout" JSON..= timeout,
         "UnhealthyThreshold" JSON..= unhealthyThreshold]
instance Property "HealthyThreshold" HealthCheckProperty where
  type PropertyType "HealthyThreshold" HealthCheckProperty = Value Prelude.Text
  set newValue HealthCheckProperty {..}
    = HealthCheckProperty {healthyThreshold = newValue, ..}
instance Property "Interval" HealthCheckProperty where
  type PropertyType "Interval" HealthCheckProperty = Value Prelude.Text
  set newValue HealthCheckProperty {..}
    = HealthCheckProperty {interval = newValue, ..}
instance Property "Target" HealthCheckProperty where
  type PropertyType "Target" HealthCheckProperty = Value Prelude.Text
  set newValue HealthCheckProperty {..}
    = HealthCheckProperty {target = newValue, ..}
instance Property "Timeout" HealthCheckProperty where
  type PropertyType "Timeout" HealthCheckProperty = Value Prelude.Text
  set newValue HealthCheckProperty {..}
    = HealthCheckProperty {timeout = newValue, ..}
instance Property "UnhealthyThreshold" HealthCheckProperty where
  type PropertyType "UnhealthyThreshold" HealthCheckProperty = Value Prelude.Text
  set newValue HealthCheckProperty {..}
    = HealthCheckProperty {unhealthyThreshold = newValue, ..}