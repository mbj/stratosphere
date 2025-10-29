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
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-deploymentcircuitbreaker.html>
    DeploymentCircuitBreakerProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-deploymentcircuitbreaker.html#cfn-ecs-service-deploymentcircuitbreaker-enable>
                                      enable :: (Value Prelude.Bool),
                                      -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-deploymentcircuitbreaker.html#cfn-ecs-service-deploymentcircuitbreaker-rollback>
                                      rollback :: (Value Prelude.Bool)}
  deriving stock (Prelude.Eq, Prelude.Show)
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