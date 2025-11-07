module Stratosphere.ECS.Service.DeploymentConfigurationProperty (
        module Exports, DeploymentConfigurationProperty(..),
        mkDeploymentConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ECS.Service.CanaryConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.ECS.Service.DeploymentAlarmsProperty as Exports
import {-# SOURCE #-} Stratosphere.ECS.Service.DeploymentCircuitBreakerProperty as Exports
import {-# SOURCE #-} Stratosphere.ECS.Service.DeploymentLifecycleHookProperty as Exports
import {-# SOURCE #-} Stratosphere.ECS.Service.LinearConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DeploymentConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-deploymentconfiguration.html>
    DeploymentConfigurationProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-deploymentconfiguration.html#cfn-ecs-service-deploymentconfiguration-alarms>
                                     alarms :: (Prelude.Maybe DeploymentAlarmsProperty),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-deploymentconfiguration.html#cfn-ecs-service-deploymentconfiguration-baketimeinminutes>
                                     bakeTimeInMinutes :: (Prelude.Maybe (Value Prelude.Integer)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-deploymentconfiguration.html#cfn-ecs-service-deploymentconfiguration-canaryconfiguration>
                                     canaryConfiguration :: (Prelude.Maybe CanaryConfigurationProperty),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-deploymentconfiguration.html#cfn-ecs-service-deploymentconfiguration-deploymentcircuitbreaker>
                                     deploymentCircuitBreaker :: (Prelude.Maybe DeploymentCircuitBreakerProperty),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-deploymentconfiguration.html#cfn-ecs-service-deploymentconfiguration-lifecyclehooks>
                                     lifecycleHooks :: (Prelude.Maybe [DeploymentLifecycleHookProperty]),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-deploymentconfiguration.html#cfn-ecs-service-deploymentconfiguration-linearconfiguration>
                                     linearConfiguration :: (Prelude.Maybe LinearConfigurationProperty),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-deploymentconfiguration.html#cfn-ecs-service-deploymentconfiguration-maximumpercent>
                                     maximumPercent :: (Prelude.Maybe (Value Prelude.Integer)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-deploymentconfiguration.html#cfn-ecs-service-deploymentconfiguration-minimumhealthypercent>
                                     minimumHealthyPercent :: (Prelude.Maybe (Value Prelude.Integer)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-deploymentconfiguration.html#cfn-ecs-service-deploymentconfiguration-strategy>
                                     strategy :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDeploymentConfigurationProperty ::
  DeploymentConfigurationProperty
mkDeploymentConfigurationProperty
  = DeploymentConfigurationProperty
      {haddock_workaround_ = (), alarms = Prelude.Nothing,
       bakeTimeInMinutes = Prelude.Nothing,
       canaryConfiguration = Prelude.Nothing,
       deploymentCircuitBreaker = Prelude.Nothing,
       lifecycleHooks = Prelude.Nothing,
       linearConfiguration = Prelude.Nothing,
       maximumPercent = Prelude.Nothing,
       minimumHealthyPercent = Prelude.Nothing,
       strategy = Prelude.Nothing}
instance ToResourceProperties DeploymentConfigurationProperty where
  toResourceProperties DeploymentConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::ECS::Service.DeploymentConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Alarms" Prelude.<$> alarms,
                            (JSON..=) "BakeTimeInMinutes" Prelude.<$> bakeTimeInMinutes,
                            (JSON..=) "CanaryConfiguration" Prelude.<$> canaryConfiguration,
                            (JSON..=) "DeploymentCircuitBreaker"
                              Prelude.<$> deploymentCircuitBreaker,
                            (JSON..=) "LifecycleHooks" Prelude.<$> lifecycleHooks,
                            (JSON..=) "LinearConfiguration" Prelude.<$> linearConfiguration,
                            (JSON..=) "MaximumPercent" Prelude.<$> maximumPercent,
                            (JSON..=) "MinimumHealthyPercent"
                              Prelude.<$> minimumHealthyPercent,
                            (JSON..=) "Strategy" Prelude.<$> strategy])}
instance JSON.ToJSON DeploymentConfigurationProperty where
  toJSON DeploymentConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Alarms" Prelude.<$> alarms,
               (JSON..=) "BakeTimeInMinutes" Prelude.<$> bakeTimeInMinutes,
               (JSON..=) "CanaryConfiguration" Prelude.<$> canaryConfiguration,
               (JSON..=) "DeploymentCircuitBreaker"
                 Prelude.<$> deploymentCircuitBreaker,
               (JSON..=) "LifecycleHooks" Prelude.<$> lifecycleHooks,
               (JSON..=) "LinearConfiguration" Prelude.<$> linearConfiguration,
               (JSON..=) "MaximumPercent" Prelude.<$> maximumPercent,
               (JSON..=) "MinimumHealthyPercent"
                 Prelude.<$> minimumHealthyPercent,
               (JSON..=) "Strategy" Prelude.<$> strategy]))
instance Property "Alarms" DeploymentConfigurationProperty where
  type PropertyType "Alarms" DeploymentConfigurationProperty = DeploymentAlarmsProperty
  set newValue DeploymentConfigurationProperty {..}
    = DeploymentConfigurationProperty
        {alarms = Prelude.pure newValue, ..}
instance Property "BakeTimeInMinutes" DeploymentConfigurationProperty where
  type PropertyType "BakeTimeInMinutes" DeploymentConfigurationProperty = Value Prelude.Integer
  set newValue DeploymentConfigurationProperty {..}
    = DeploymentConfigurationProperty
        {bakeTimeInMinutes = Prelude.pure newValue, ..}
instance Property "CanaryConfiguration" DeploymentConfigurationProperty where
  type PropertyType "CanaryConfiguration" DeploymentConfigurationProperty = CanaryConfigurationProperty
  set newValue DeploymentConfigurationProperty {..}
    = DeploymentConfigurationProperty
        {canaryConfiguration = Prelude.pure newValue, ..}
instance Property "DeploymentCircuitBreaker" DeploymentConfigurationProperty where
  type PropertyType "DeploymentCircuitBreaker" DeploymentConfigurationProperty = DeploymentCircuitBreakerProperty
  set newValue DeploymentConfigurationProperty {..}
    = DeploymentConfigurationProperty
        {deploymentCircuitBreaker = Prelude.pure newValue, ..}
instance Property "LifecycleHooks" DeploymentConfigurationProperty where
  type PropertyType "LifecycleHooks" DeploymentConfigurationProperty = [DeploymentLifecycleHookProperty]
  set newValue DeploymentConfigurationProperty {..}
    = DeploymentConfigurationProperty
        {lifecycleHooks = Prelude.pure newValue, ..}
instance Property "LinearConfiguration" DeploymentConfigurationProperty where
  type PropertyType "LinearConfiguration" DeploymentConfigurationProperty = LinearConfigurationProperty
  set newValue DeploymentConfigurationProperty {..}
    = DeploymentConfigurationProperty
        {linearConfiguration = Prelude.pure newValue, ..}
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
instance Property "Strategy" DeploymentConfigurationProperty where
  type PropertyType "Strategy" DeploymentConfigurationProperty = Value Prelude.Text
  set newValue DeploymentConfigurationProperty {..}
    = DeploymentConfigurationProperty
        {strategy = Prelude.pure newValue, ..}