module Stratosphere.ServiceDiscovery.Service.HealthCheckCustomConfigProperty (
        HealthCheckCustomConfigProperty(..),
        mkHealthCheckCustomConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HealthCheckCustomConfigProperty
  = HealthCheckCustomConfigProperty {failureThreshold :: (Prelude.Maybe (Value Prelude.Double))}
mkHealthCheckCustomConfigProperty ::
  HealthCheckCustomConfigProperty
mkHealthCheckCustomConfigProperty
  = HealthCheckCustomConfigProperty
      {failureThreshold = Prelude.Nothing}
instance ToResourceProperties HealthCheckCustomConfigProperty where
  toResourceProperties HealthCheckCustomConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::ServiceDiscovery::Service.HealthCheckCustomConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "FailureThreshold" Prelude.<$> failureThreshold])}
instance JSON.ToJSON HealthCheckCustomConfigProperty where
  toJSON HealthCheckCustomConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "FailureThreshold" Prelude.<$> failureThreshold]))
instance Property "FailureThreshold" HealthCheckCustomConfigProperty where
  type PropertyType "FailureThreshold" HealthCheckCustomConfigProperty = Value Prelude.Double
  set newValue HealthCheckCustomConfigProperty {}
    = HealthCheckCustomConfigProperty
        {failureThreshold = Prelude.pure newValue, ..}