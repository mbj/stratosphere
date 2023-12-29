module Stratosphere.ElasticLoadBalancing.LoadBalancer.HealthCheckProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data HealthCheckProperty :: Prelude.Type
instance ToResourceProperties HealthCheckProperty
instance Prelude.Eq HealthCheckProperty
instance Prelude.Show HealthCheckProperty
instance JSON.ToJSON HealthCheckProperty