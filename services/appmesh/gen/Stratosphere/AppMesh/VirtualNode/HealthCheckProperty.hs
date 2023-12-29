module Stratosphere.AppMesh.VirtualNode.HealthCheckProperty (
        HealthCheckProperty(..), mkHealthCheckProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HealthCheckProperty
  = HealthCheckProperty {healthyThreshold :: (Value Prelude.Integer),
                         intervalMillis :: (Value Prelude.Integer),
                         path :: (Prelude.Maybe (Value Prelude.Text)),
                         port :: (Prelude.Maybe (Value Prelude.Integer)),
                         protocol :: (Value Prelude.Text),
                         timeoutMillis :: (Value Prelude.Integer),
                         unhealthyThreshold :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHealthCheckProperty ::
  Value Prelude.Integer
  -> Value Prelude.Integer
     -> Value Prelude.Text
        -> Value Prelude.Integer
           -> Value Prelude.Integer -> HealthCheckProperty
mkHealthCheckProperty
  healthyThreshold
  intervalMillis
  protocol
  timeoutMillis
  unhealthyThreshold
  = HealthCheckProperty
      {healthyThreshold = healthyThreshold,
       intervalMillis = intervalMillis, protocol = protocol,
       timeoutMillis = timeoutMillis,
       unhealthyThreshold = unhealthyThreshold, path = Prelude.Nothing,
       port = Prelude.Nothing}
instance ToResourceProperties HealthCheckProperty where
  toResourceProperties HealthCheckProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::VirtualNode.HealthCheck",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["HealthyThreshold" JSON..= healthyThreshold,
                            "IntervalMillis" JSON..= intervalMillis,
                            "Protocol" JSON..= protocol, "TimeoutMillis" JSON..= timeoutMillis,
                            "UnhealthyThreshold" JSON..= unhealthyThreshold]
                           (Prelude.catMaybes
                              [(JSON..=) "Path" Prelude.<$> path,
                               (JSON..=) "Port" Prelude.<$> port]))}
instance JSON.ToJSON HealthCheckProperty where
  toJSON HealthCheckProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["HealthyThreshold" JSON..= healthyThreshold,
               "IntervalMillis" JSON..= intervalMillis,
               "Protocol" JSON..= protocol, "TimeoutMillis" JSON..= timeoutMillis,
               "UnhealthyThreshold" JSON..= unhealthyThreshold]
              (Prelude.catMaybes
                 [(JSON..=) "Path" Prelude.<$> path,
                  (JSON..=) "Port" Prelude.<$> port])))
instance Property "HealthyThreshold" HealthCheckProperty where
  type PropertyType "HealthyThreshold" HealthCheckProperty = Value Prelude.Integer
  set newValue HealthCheckProperty {..}
    = HealthCheckProperty {healthyThreshold = newValue, ..}
instance Property "IntervalMillis" HealthCheckProperty where
  type PropertyType "IntervalMillis" HealthCheckProperty = Value Prelude.Integer
  set newValue HealthCheckProperty {..}
    = HealthCheckProperty {intervalMillis = newValue, ..}
instance Property "Path" HealthCheckProperty where
  type PropertyType "Path" HealthCheckProperty = Value Prelude.Text
  set newValue HealthCheckProperty {..}
    = HealthCheckProperty {path = Prelude.pure newValue, ..}
instance Property "Port" HealthCheckProperty where
  type PropertyType "Port" HealthCheckProperty = Value Prelude.Integer
  set newValue HealthCheckProperty {..}
    = HealthCheckProperty {port = Prelude.pure newValue, ..}
instance Property "Protocol" HealthCheckProperty where
  type PropertyType "Protocol" HealthCheckProperty = Value Prelude.Text
  set newValue HealthCheckProperty {..}
    = HealthCheckProperty {protocol = newValue, ..}
instance Property "TimeoutMillis" HealthCheckProperty where
  type PropertyType "TimeoutMillis" HealthCheckProperty = Value Prelude.Integer
  set newValue HealthCheckProperty {..}
    = HealthCheckProperty {timeoutMillis = newValue, ..}
instance Property "UnhealthyThreshold" HealthCheckProperty where
  type PropertyType "UnhealthyThreshold" HealthCheckProperty = Value Prelude.Integer
  set newValue HealthCheckProperty {..}
    = HealthCheckProperty {unhealthyThreshold = newValue, ..}