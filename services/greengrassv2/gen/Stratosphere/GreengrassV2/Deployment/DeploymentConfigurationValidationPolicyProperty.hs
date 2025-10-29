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
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrassv2-deployment-deploymentconfigurationvalidationpolicy.html>
    DeploymentConfigurationValidationPolicyProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrassv2-deployment-deploymentconfigurationvalidationpolicy.html#cfn-greengrassv2-deployment-deploymentconfigurationvalidationpolicy-timeoutinseconds>
                                                     timeoutInSeconds :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
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
         supportsTags = Prelude.False,
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