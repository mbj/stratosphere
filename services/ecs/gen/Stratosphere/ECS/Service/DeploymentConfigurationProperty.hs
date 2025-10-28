module Stratosphere.ECS.Service.DeploymentConfigurationProperty (
        module Exports, DeploymentConfigurationProperty(..),
        mkDeploymentConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ECS.Service.DeploymentAlarmsProperty as Exports
import {-# SOURCE #-} Stratosphere.ECS.Service.DeploymentCircuitBreakerProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DeploymentConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-deploymentconfiguration.html>
    DeploymentConfigurationProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-deploymentconfiguration.html#cfn-ecs-service-deploymentconfiguration-alarms>
                                     alarms :: (Prelude.Maybe DeploymentAlarmsProperty),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-deploymentconfiguration.html#cfn-ecs-service-deploymentconfiguration-deploymentcircuitbreaker>
                                     deploymentCircuitBreaker :: (Prelude.Maybe DeploymentCircuitBreakerProperty),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-deploymentconfiguration.html#cfn-ecs-service-deploymentconfiguration-maximumpercent>
                                     maximumPercent :: (Prelude.Maybe (Value Prelude.Integer)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-deploymentconfiguration.html#cfn-ecs-service-deploymentconfiguration-minimumhealthypercent>
                                     minimumHealthyPercent :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDeploymentConfigurationProperty ::
  DeploymentConfigurationProperty
mkDeploymentConfigurationProperty
  = DeploymentConfigurationProperty
      {haddock_workaround_ = (), alarms = Prelude.Nothing,
       deploymentCircuitBreaker = Prelude.Nothing,
       maximumPercent = Prelude.Nothing,
       minimumHealthyPercent = Prelude.Nothing}
instance ToResourceProperties DeploymentConfigurationProperty where
  toResourceProperties DeploymentConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::ECS::Service.DeploymentConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Alarms" Prelude.<$> alarms,
                            (JSON..=) "DeploymentCircuitBreaker"
                              Prelude.<$> deploymentCircuitBreaker,
                            (JSON..=) "MaximumPercent" Prelude.<$> maximumPercent,
                            (JSON..=) "MinimumHealthyPercent"
                              Prelude.<$> minimumHealthyPercent])}
instance JSON.ToJSON DeploymentConfigurationProperty where
  toJSON DeploymentConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Alarms" Prelude.<$> alarms,
               (JSON..=) "DeploymentCircuitBreaker"
                 Prelude.<$> deploymentCircuitBreaker,
               (JSON..=) "MaximumPercent" Prelude.<$> maximumPercent,
               (JSON..=) "MinimumHealthyPercent"
                 Prelude.<$> minimumHealthyPercent]))
instance Property "Alarms" DeploymentConfigurationProperty where
  type PropertyType "Alarms" DeploymentConfigurationProperty = DeploymentAlarmsProperty
  set newValue DeploymentConfigurationProperty {..}
    = DeploymentConfigurationProperty
        {alarms = Prelude.pure newValue, ..}
instance Property "DeploymentCircuitBreaker" DeploymentConfigurationProperty where
  type PropertyType "DeploymentCircuitBreaker" DeploymentConfigurationProperty = DeploymentCircuitBreakerProperty
  set newValue DeploymentConfigurationProperty {..}
    = DeploymentConfigurationProperty
        {deploymentCircuitBreaker = Prelude.pure newValue, ..}
instance Property "MaximumPercent" DeploymentConfigurationProperty where
  type PropertyType "MaximumPercent" DeploymentConfigurationProperty = Value Prelude.Integer
  set newValue DeploymentConfigurationProperty {..}
    = DeploymentConfigurationProperty
        {maximumPercent = Prelude.pure newValue, ..}
instance Property "MinimumHealthyPercent" DeploymentConfigurationProperty where
  type PropertyType "MinimumHealthyPercent" DeploymentConfigurationProperty = Value Prelude.Integer
  set newValue DeploymentConfigurationProperty {..}
    = DeploymentConfigurationProperty
        {minimumHealthyPercent = Prelude.pure newValue, ..}