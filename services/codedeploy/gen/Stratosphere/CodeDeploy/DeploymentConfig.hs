module Stratosphere.CodeDeploy.DeploymentConfig (
        module Exports, DeploymentConfig(..), mkDeploymentConfig
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CodeDeploy.DeploymentConfig.MinimumHealthyHostsProperty as Exports
import {-# SOURCE #-} Stratosphere.CodeDeploy.DeploymentConfig.TrafficRoutingConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.CodeDeploy.DeploymentConfig.ZonalConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DeploymentConfig
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-deploymentconfig.html>
    DeploymentConfig {haddock_workaround_ :: (),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-deploymentconfig.html#cfn-codedeploy-deploymentconfig-computeplatform>
                      computePlatform :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-deploymentconfig.html#cfn-codedeploy-deploymentconfig-deploymentconfigname>
                      deploymentConfigName :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-deploymentconfig.html#cfn-codedeploy-deploymentconfig-minimumhealthyhosts>
                      minimumHealthyHosts :: (Prelude.Maybe MinimumHealthyHostsProperty),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-deploymentconfig.html#cfn-codedeploy-deploymentconfig-trafficroutingconfig>
                      trafficRoutingConfig :: (Prelude.Maybe TrafficRoutingConfigProperty),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-deploymentconfig.html#cfn-codedeploy-deploymentconfig-zonalconfig>
                      zonalConfig :: (Prelude.Maybe ZonalConfigProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDeploymentConfig :: DeploymentConfig
mkDeploymentConfig
  = DeploymentConfig
      {haddock_workaround_ = (), computePlatform = Prelude.Nothing,
       deploymentConfigName = Prelude.Nothing,
       minimumHealthyHosts = Prelude.Nothing,
       trafficRoutingConfig = Prelude.Nothing,
       zonalConfig = Prelude.Nothing}
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
                            (JSON..=) "TrafficRoutingConfig" Prelude.<$> trafficRoutingConfig,
                            (JSON..=) "ZonalConfig" Prelude.<$> zonalConfig])}
instance JSON.ToJSON DeploymentConfig where
  toJSON DeploymentConfig {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ComputePlatform" Prelude.<$> computePlatform,
               (JSON..=) "DeploymentConfigName" Prelude.<$> deploymentConfigName,
               (JSON..=) "MinimumHealthyHosts" Prelude.<$> minimumHealthyHosts,
               (JSON..=) "TrafficRoutingConfig" Prelude.<$> trafficRoutingConfig,
               (JSON..=) "ZonalConfig" Prelude.<$> zonalConfig]))
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
instance Property "ZonalConfig" DeploymentConfig where
  type PropertyType "ZonalConfig" DeploymentConfig = ZonalConfigProperty
  set newValue DeploymentConfig {..}
    = DeploymentConfig {zonalConfig = Prelude.pure newValue, ..}