module Stratosphere.ECS.Service.DeploymentCircuitBreakerProperty (
        DeploymentCircuitBreakerProperty(..),
        mkDeploymentCircuitBreakerProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DeploymentCircuitBreakerProperty
  = DeploymentCircuitBreakerProperty {enable :: (Value Prelude.Bool),
                                      rollback :: (Value Prelude.Bool)}
mkDeploymentCircuitBreakerProperty ::
  Value Prelude.Bool
  -> Value Prelude.Bool -> DeploymentCircuitBreakerProperty
mkDeploymentCircuitBreakerProperty enable rollback
  = DeploymentCircuitBreakerProperty
      {enable = enable, rollback = rollback}
instance ToResourceProperties DeploymentCircuitBreakerProperty where
  toResourceProperties DeploymentCircuitBreakerProperty {..}
    = ResourceProperties
        {awsType = "AWS::ECS::Service.DeploymentCircuitBreaker",
         supportsTags = Prelude.False,
         properties = ["Enable" JSON..= enable,
                       "Rollback" JSON..= rollback]}
instance JSON.ToJSON DeploymentCircuitBreakerProperty where
  toJSON DeploymentCircuitBreakerProperty {..}
    = JSON.object
        ["Enable" JSON..= enable, "Rollback" JSON..= rollback]
instance Property "Enable" DeploymentCircuitBreakerProperty where
  type PropertyType "Enable" DeploymentCircuitBreakerProperty = Value Prelude.Bool
  set newValue DeploymentCircuitBreakerProperty {..}
    = DeploymentCircuitBreakerProperty {enable = newValue, ..}
instance Property "Rollback" DeploymentCircuitBreakerProperty where
  type PropertyType "Rollback" DeploymentCircuitBreakerProperty = Value Prelude.Bool
  set newValue DeploymentCircuitBreakerProperty {..}
    = DeploymentCircuitBreakerProperty {rollback = newValue, ..}