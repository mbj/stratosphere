module Stratosphere.Lightsail.Container.HealthCheckConfigProperty (
        HealthCheckConfigProperty(..), mkHealthCheckConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HealthCheckConfigProperty
  = HealthCheckConfigProperty {healthyThreshold :: (Prelude.Maybe (Value Prelude.Integer)),
                               intervalSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
                               path :: (Prelude.Maybe (Value Prelude.Text)),
                               successCodes :: (Prelude.Maybe (Value Prelude.Text)),
                               timeoutSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
                               unhealthyThreshold :: (Prelude.Maybe (Value Prelude.Integer))}
mkHealthCheckConfigProperty :: HealthCheckConfigProperty
mkHealthCheckConfigProperty
  = HealthCheckConfigProperty
      {healthyThreshold = Prelude.Nothing,
       intervalSeconds = Prelude.Nothing, path = Prelude.Nothing,
       successCodes = Prelude.Nothing, timeoutSeconds = Prelude.Nothing,
       unhealthyThreshold = Prelude.Nothing}
instance ToResourceProperties HealthCheckConfigProperty where
  toResourceProperties HealthCheckConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lightsail::Container.HealthCheckConfig",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "HealthyThreshold" Prelude.<$> healthyThreshold,
                            (JSON..=) "IntervalSeconds" Prelude.<$> intervalSeconds,
                            (JSON..=) "Path" Prelude.<$> path,
                            (JSON..=) "SuccessCodes" Prelude.<$> successCodes,
                            (JSON..=) "TimeoutSeconds" Prelude.<$> timeoutSeconds,
                            (JSON..=) "UnhealthyThreshold" Prelude.<$> unhealthyThreshold])}
instance JSON.ToJSON HealthCheckConfigProperty where
  toJSON HealthCheckConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "HealthyThreshold" Prelude.<$> healthyThreshold,
               (JSON..=) "IntervalSeconds" Prelude.<$> intervalSeconds,
               (JSON..=) "Path" Prelude.<$> path,
               (JSON..=) "SuccessCodes" Prelude.<$> successCodes,
               (JSON..=) "TimeoutSeconds" Prelude.<$> timeoutSeconds,
               (JSON..=) "UnhealthyThreshold" Prelude.<$> unhealthyThreshold]))
instance Property "HealthyThreshold" HealthCheckConfigProperty where
  type PropertyType "HealthyThreshold" HealthCheckConfigProperty = Value Prelude.Integer
  set newValue HealthCheckConfigProperty {..}
    = HealthCheckConfigProperty
        {healthyThreshold = Prelude.pure newValue, ..}
instance Property "IntervalSeconds" HealthCheckConfigProperty where
  type PropertyType "IntervalSeconds" HealthCheckConfigProperty = Value Prelude.Integer
  set newValue HealthCheckConfigProperty {..}
    = HealthCheckConfigProperty
        {intervalSeconds = Prelude.pure newValue, ..}
instance Property "Path" HealthCheckConfigProperty where
  type PropertyType "Path" HealthCheckConfigProperty = Value Prelude.Text
  set newValue HealthCheckConfigProperty {..}
    = HealthCheckConfigProperty {path = Prelude.pure newValue, ..}
instance Property "SuccessCodes" HealthCheckConfigProperty where
  type PropertyType "SuccessCodes" HealthCheckConfigProperty = Value Prelude.Text
  set newValue HealthCheckConfigProperty {..}
    = HealthCheckConfigProperty
        {successCodes = Prelude.pure newValue, ..}
instance Property "TimeoutSeconds" HealthCheckConfigProperty where
  type PropertyType "TimeoutSeconds" HealthCheckConfigProperty = Value Prelude.Integer
  set newValue HealthCheckConfigProperty {..}
    = HealthCheckConfigProperty
        {timeoutSeconds = Prelude.pure newValue, ..}
instance Property "UnhealthyThreshold" HealthCheckConfigProperty where
  type PropertyType "UnhealthyThreshold" HealthCheckConfigProperty = Value Prelude.Integer
  set newValue HealthCheckConfigProperty {..}
    = HealthCheckConfigProperty
        {unhealthyThreshold = Prelude.pure newValue, ..}