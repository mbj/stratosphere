module Stratosphere.CodeDeploy.DeploymentConfig (
        module Exports, DeploymentConfig(..), mkDeploymentConfig
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CodeDeploy.DeploymentConfig.MinimumHealthyHostsProperty as Exports
import {-# SOURCE #-} Stratosphere.CodeDeploy.DeploymentConfig.TrafficRoutingConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DeploymentConfig
  = DeploymentConfig {computePlatform :: (Prelude.Maybe (Value Prelude.Text)),
                      deploymentConfigName :: (Prelude.Maybe (Value Prelude.Text)),
                      minimumHealthyHosts :: (Prelude.Maybe MinimumHealthyHostsProperty),
                      trafficRoutingConfig :: (Prelude.Maybe TrafficRoutingConfigProperty)}
mkDeploymentConfig :: DeploymentConfig
mkDeploymentConfig
  = DeploymentConfig
      {computePlatform = Prelude.Nothing,
       deploymentConfigName = Prelude.Nothing,
       minimumHealthyHosts = Prelude.Nothing,
       trafficRoutingConfig = Prelude.Nothing}
instance ToResourceProperties DeploymentConfig where
  toResourceProperties DeploymentConfig {..}
    = ResourceProperties
        {awsType = "AWS::CodeDeploy::DeploymentConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ComputePlatform" Prelude.<$> computePlatform,
                            (JSON..=) "DeploymentConfigName" Prelude.<$> deploymentConfigName,
                            (JSON..=) "MinimumHealthyHosts" Prelude.<$> minimumHealthyHosts,
                            (JSON..=) "TrafficRoutingConfig"
                              Prelude.<$> trafficRoutingConfig])}
instance JSON.ToJSON DeploymentConfig where
  toJSON DeploymentConfig {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ComputePlatform" Prelude.<$> computePlatform,
               (JSON..=) "DeploymentConfigName" Prelude.<$> deploymentConfigName,
               (JSON..=) "MinimumHealthyHosts" Prelude.<$> minimumHealthyHosts,
               (JSON..=) "TrafficRoutingConfig"
                 Prelude.<$> trafficRoutingConfig]))
instance Property "ComputePlatform" DeploymentConfig where
  type PropertyType "ComputePlatform" DeploymentConfig = Value Prelude.Text
  set newValue DeploymentConfig {..}
    = DeploymentConfig {computePlatform = Prelude.pure newValue, ..}
instance Property "DeploymentConfigName" DeploymentConfig where
  type PropertyType "DeploymentConfigName" DeploymentConfig = Value Prelude.Text
  set newValue DeploymentConfig {..}
    = DeploymentConfig
        {deploymentConfigName = Prelude.pure newValue, ..}
instance Property "MinimumHealthyHosts" DeploymentConfig where
  type PropertyType "MinimumHealthyHosts" DeploymentConfig = MinimumHealthyHostsProperty
  set newValue DeploymentConfig {..}
    = DeploymentConfig
        {minimumHealthyHosts = Prelude.pure newValue, ..}
instance Property "TrafficRoutingConfig" DeploymentConfig where
  type PropertyType "TrafficRoutingConfig" DeploymentConfig = TrafficRoutingConfigProperty
  set newValue DeploymentConfig {..}
    = DeploymentConfig
        {trafficRoutingConfig = Prelude.pure newValue, ..}