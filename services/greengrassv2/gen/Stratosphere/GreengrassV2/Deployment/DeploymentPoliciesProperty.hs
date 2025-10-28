module Stratosphere.GreengrassV2.Deployment.DeploymentPoliciesProperty (
        module Exports, DeploymentPoliciesProperty(..),
        mkDeploymentPoliciesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.GreengrassV2.Deployment.DeploymentComponentUpdatePolicyProperty as Exports
import {-# SOURCE #-} Stratosphere.GreengrassV2.Deployment.DeploymentConfigurationValidationPolicyProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DeploymentPoliciesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrassv2-deployment-deploymentpolicies.html>
    DeploymentPoliciesProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrassv2-deployment-deploymentpolicies.html#cfn-greengrassv2-deployment-deploymentpolicies-componentupdatepolicy>
                                componentUpdatePolicy :: (Prelude.Maybe DeploymentComponentUpdatePolicyProperty),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrassv2-deployment-deploymentpolicies.html#cfn-greengrassv2-deployment-deploymentpolicies-configurationvalidationpolicy>
                                configurationValidationPolicy :: (Prelude.Maybe DeploymentConfigurationValidationPolicyProperty),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrassv2-deployment-deploymentpolicies.html#cfn-greengrassv2-deployment-deploymentpolicies-failurehandlingpolicy>
                                failureHandlingPolicy :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDeploymentPoliciesProperty :: DeploymentPoliciesProperty
mkDeploymentPoliciesProperty
  = DeploymentPoliciesProperty
      {haddock_workaround_ = (), componentUpdatePolicy = Prelude.Nothing,
       configurationValidationPolicy = Prelude.Nothing,
       failureHandlingPolicy = Prelude.Nothing}
instance ToResourceProperties DeploymentPoliciesProperty where
  toResourceProperties DeploymentPoliciesProperty {..}
    = ResourceProperties
        {awsType = "AWS::GreengrassV2::Deployment.DeploymentPolicies",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ComponentUpdatePolicy"
                              Prelude.<$> componentUpdatePolicy,
                            (JSON..=) "ConfigurationValidationPolicy"
                              Prelude.<$> configurationValidationPolicy,
                            (JSON..=) "FailureHandlingPolicy"
                              Prelude.<$> failureHandlingPolicy])}
instance JSON.ToJSON DeploymentPoliciesProperty where
  toJSON DeploymentPoliciesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ComponentUpdatePolicy"
                 Prelude.<$> componentUpdatePolicy,
               (JSON..=) "ConfigurationValidationPolicy"
                 Prelude.<$> configurationValidationPolicy,
               (JSON..=) "FailureHandlingPolicy"
                 Prelude.<$> failureHandlingPolicy]))
instance Property "ComponentUpdatePolicy" DeploymentPoliciesProperty where
  type PropertyType "ComponentUpdatePolicy" DeploymentPoliciesProperty = DeploymentComponentUpdatePolicyProperty
  set newValue DeploymentPoliciesProperty {..}
    = DeploymentPoliciesProperty
        {componentUpdatePolicy = Prelude.pure newValue, ..}
instance Property "ConfigurationValidationPolicy" DeploymentPoliciesProperty where
  type PropertyType "ConfigurationValidationPolicy" DeploymentPoliciesProperty = DeploymentConfigurationValidationPolicyProperty
  set newValue DeploymentPoliciesProperty {..}
    = DeploymentPoliciesProperty
        {configurationValidationPolicy = Prelude.pure newValue, ..}
instance Property "FailureHandlingPolicy" DeploymentPoliciesProperty where
  type PropertyType "FailureHandlingPolicy" DeploymentPoliciesProperty = Value Prelude.Text
  set newValue DeploymentPoliciesProperty {..}
    = DeploymentPoliciesProperty
        {failureHandlingPolicy = Prelude.pure newValue, ..}