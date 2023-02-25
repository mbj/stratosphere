module Stratosphere.Route53.HealthCheck.HealthCheckTagProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data HealthCheckTagProperty :: Prelude.Type
instance ToResourceProperties HealthCheckTagProperty
instance JSON.ToJSON HealthCheckTagProperty