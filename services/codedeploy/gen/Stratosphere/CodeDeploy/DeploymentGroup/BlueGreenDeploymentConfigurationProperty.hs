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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-bluegreendeploymentconfiguration.html>
    BlueGreenDeploymentConfigurationProperty {haddock_workaround_ :: (),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-bluegreendeploymentconfiguration.html#cfn-codedeploy-deploymentgroup-bluegreendeploymentconfiguration-deploymentreadyoption>
                                              deploymentReadyOption :: (Prelude.Maybe DeploymentReadyOptionProperty),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-bluegreendeploymentconfiguration.html#cfn-codedeploy-deploymentgroup-bluegreendeploymentconfiguration-greenfleetprovisioningoption>
                                              greenFleetProvisioningOption :: (Prelude.Maybe GreenFleetProvisioningOptionProperty),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-bluegreendeploymentconfiguration.html#cfn-codedeploy-deploymentgroup-bluegreendeploymentconfiguration-terminateblueinstancesondeploymentsuccess>
                                              terminateBlueInstancesOnDeploymentSuccess :: (Prelude.Maybe BlueInstanceTerminationOptionProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBlueGreenDeploymentConfigurationProperty ::
  BlueGreenDeploymentConfigurationProperty
mkBlueGreenDeploymentConfigurationProperty
  = BlueGreenDeploymentConfigurationProperty
      {haddock_workaround_ = (), deploymentReadyOption = Prelude.Nothing,
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