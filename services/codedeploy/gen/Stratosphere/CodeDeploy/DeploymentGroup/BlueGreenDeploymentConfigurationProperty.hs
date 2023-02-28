module Stratosphere.CodeDeploy.DeploymentGroup.BlueGreenDeploymentConfigurationProperty (
        module Exports, BlueGreenDeploymentConfigurationProperty(..),
        mkBlueGreenDeploymentConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CodeDeploy.DeploymentGroup.BlueInstanceTerminationOptionProperty as Exports
import {-# SOURCE #-} Stratosphere.CodeDeploy.DeploymentGroup.DeploymentReadyOptionProperty as Exports
import {-# SOURCE #-} Stratosphere.CodeDeploy.DeploymentGroup.GreenFleetProvisioningOptionProperty as Exports
import Stratosphere.ResourceProperties
data BlueGreenDeploymentConfigurationProperty
  = BlueGreenDeploymentConfigurationProperty {deploymentReadyOption :: (Prelude.Maybe DeploymentReadyOptionProperty),
                                              greenFleetProvisioningOption :: (Prelude.Maybe GreenFleetProvisioningOptionProperty),
                                              terminateBlueInstancesOnDeploymentSuccess :: (Prelude.Maybe BlueInstanceTerminationOptionProperty)}
mkBlueGreenDeploymentConfigurationProperty ::
  BlueGreenDeploymentConfigurationProperty
mkBlueGreenDeploymentConfigurationProperty
  = BlueGreenDeploymentConfigurationProperty
      {deploymentReadyOption = Prelude.Nothing,
       greenFleetProvisioningOption = Prelude.Nothing,
       terminateBlueInstancesOnDeploymentSuccess = Prelude.Nothing}
instance ToResourceProperties BlueGreenDeploymentConfigurationProperty where
  toResourceProperties BlueGreenDeploymentConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::CodeDeploy::DeploymentGroup.BlueGreenDeploymentConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DeploymentReadyOption"
                              Prelude.<$> deploymentReadyOption,
                            (JSON..=) "GreenFleetProvisioningOption"
                              Prelude.<$> greenFleetProvisioningOption,
                            (JSON..=) "TerminateBlueInstancesOnDeploymentSuccess"
                              Prelude.<$> terminateBlueInstancesOnDeploymentSuccess])}
instance JSON.ToJSON BlueGreenDeploymentConfigurationProperty where
  toJSON BlueGreenDeploymentConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DeploymentReadyOption"
                 Prelude.<$> deploymentReadyOption,
               (JSON..=) "GreenFleetProvisioningOption"
                 Prelude.<$> greenFleetProvisioningOption,
               (JSON..=) "TerminateBlueInstancesOnDeploymentSuccess"
                 Prelude.<$> terminateBlueInstancesOnDeploymentSuccess]))
instance Property "DeploymentReadyOption" BlueGreenDeploymentConfigurationProperty where
  type PropertyType "DeploymentReadyOption" BlueGreenDeploymentConfigurationProperty = DeploymentReadyOptionProperty
  set newValue BlueGreenDeploymentConfigurationProperty {..}
    = BlueGreenDeploymentConfigurationProperty
        {deploymentReadyOption = Prelude.pure newValue, ..}
instance Property "GreenFleetProvisioningOption" BlueGreenDeploymentConfigurationProperty where
  type PropertyType "GreenFleetProvisioningOption" BlueGreenDeploymentConfigurationProperty = GreenFleetProvisioningOptionProperty
  set newValue BlueGreenDeploymentConfigurationProperty {..}
    = BlueGreenDeploymentConfigurationProperty
        {greenFleetProvisioningOption = Prelude.pure newValue, ..}
instance Property "TerminateBlueInstancesOnDeploymentSuccess" BlueGreenDeploymentConfigurationProperty where
  type PropertyType "TerminateBlueInstancesOnDeploymentSuccess" BlueGreenDeploymentConfigurationProperty = BlueInstanceTerminationOptionProperty
  set newValue BlueGreenDeploymentConfigurationProperty {..}
    = BlueGreenDeploymentConfigurationProperty
        {terminateBlueInstancesOnDeploymentSuccess = Prelude.pure newValue,
         ..}