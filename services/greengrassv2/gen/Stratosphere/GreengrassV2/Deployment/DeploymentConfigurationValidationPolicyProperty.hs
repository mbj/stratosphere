module Stratosphere.GreengrassV2.Deployment.DeploymentConfigurationValidationPolicyProperty (
        DeploymentConfigurationValidationPolicyProperty(..),
        mkDeploymentConfigurationValidationPolicyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DeploymentConfigurationValidationPolicyProperty
  = DeploymentConfigurationValidationPolicyProperty {timeoutInSeconds :: (Prelude.Maybe (Value Prelude.Integer))}
mkDeploymentConfigurationValidationPolicyProperty ::
  DeploymentConfigurationValidationPolicyProperty
mkDeploymentConfigurationValidationPolicyProperty
  = DeploymentConfigurationValidationPolicyProperty
      {timeoutInSeconds = Prelude.Nothing}
instance ToResourceProperties DeploymentConfigurationValidationPolicyProperty where
  toResourceProperties
    DeploymentConfigurationValidationPolicyProperty {..}
    = ResourceProperties
        {awsType = "AWS::GreengrassV2::Deployment.DeploymentConfigurationValidationPolicy",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "TimeoutInSeconds" Prelude.<$> timeoutInSeconds])}
instance JSON.ToJSON DeploymentConfigurationValidationPolicyProperty where
  toJSON DeploymentConfigurationValidationPolicyProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "TimeoutInSeconds" Prelude.<$> timeoutInSeconds]))
instance Property "TimeoutInSeconds" DeploymentConfigurationValidationPolicyProperty where
  type PropertyType "TimeoutInSeconds" DeploymentConfigurationValidationPolicyProperty = Value Prelude.Integer
  set newValue DeploymentConfigurationValidationPolicyProperty {}
    = DeploymentConfigurationValidationPolicyProperty
        {timeoutInSeconds = Prelude.pure newValue, ..}