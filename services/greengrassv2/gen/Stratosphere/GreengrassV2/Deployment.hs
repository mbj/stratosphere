module Stratosphere.GreengrassV2.Deployment (
        module Exports, Deployment(..), mkDeployment
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.GreengrassV2.Deployment.ComponentDeploymentSpecificationProperty as Exports
import {-# SOURCE #-} Stratosphere.GreengrassV2.Deployment.DeploymentIoTJobConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.GreengrassV2.Deployment.DeploymentPoliciesProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Deployment
  = Deployment {components :: (Prelude.Maybe (Prelude.Map Prelude.Text ComponentDeploymentSpecificationProperty)),
                deploymentName :: (Prelude.Maybe (Value Prelude.Text)),
                deploymentPolicies :: (Prelude.Maybe DeploymentPoliciesProperty),
                iotJobConfiguration :: (Prelude.Maybe DeploymentIoTJobConfigurationProperty),
                parentTargetArn :: (Prelude.Maybe (Value Prelude.Text)),
                tags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                targetArn :: (Value Prelude.Text)}
mkDeployment :: Value Prelude.Text -> Deployment
mkDeployment targetArn
  = Deployment
      {targetArn = targetArn, components = Prelude.Nothing,
       deploymentName = Prelude.Nothing,
       deploymentPolicies = Prelude.Nothing,
       iotJobConfiguration = Prelude.Nothing,
       parentTargetArn = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Deployment where
  toResourceProperties Deployment {..}
    = ResourceProperties
        {awsType = "AWS::GreengrassV2::Deployment",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["TargetArn" JSON..= targetArn]
                           (Prelude.catMaybes
                              [(JSON..=) "Components" Prelude.<$> components,
                               (JSON..=) "DeploymentName" Prelude.<$> deploymentName,
                               (JSON..=) "DeploymentPolicies" Prelude.<$> deploymentPolicies,
                               (JSON..=) "IotJobConfiguration" Prelude.<$> iotJobConfiguration,
                               (JSON..=) "ParentTargetArn" Prelude.<$> parentTargetArn,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Deployment where
  toJSON Deployment {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["TargetArn" JSON..= targetArn]
              (Prelude.catMaybes
                 [(JSON..=) "Components" Prelude.<$> components,
                  (JSON..=) "DeploymentName" Prelude.<$> deploymentName,
                  (JSON..=) "DeploymentPolicies" Prelude.<$> deploymentPolicies,
                  (JSON..=) "IotJobConfiguration" Prelude.<$> iotJobConfiguration,
                  (JSON..=) "ParentTargetArn" Prelude.<$> parentTargetArn,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Components" Deployment where
  type PropertyType "Components" Deployment = Prelude.Map Prelude.Text ComponentDeploymentSpecificationProperty
  set newValue Deployment {..}
    = Deployment {components = Prelude.pure newValue, ..}
instance Property "DeploymentName" Deployment where
  type PropertyType "DeploymentName" Deployment = Value Prelude.Text
  set newValue Deployment {..}
    = Deployment {deploymentName = Prelude.pure newValue, ..}
instance Property "DeploymentPolicies" Deployment where
  type PropertyType "DeploymentPolicies" Deployment = DeploymentPoliciesProperty
  set newValue Deployment {..}
    = Deployment {deploymentPolicies = Prelude.pure newValue, ..}
instance Property "IotJobConfiguration" Deployment where
  type PropertyType "IotJobConfiguration" Deployment = DeploymentIoTJobConfigurationProperty
  set newValue Deployment {..}
    = Deployment {iotJobConfiguration = Prelude.pure newValue, ..}
instance Property "ParentTargetArn" Deployment where
  type PropertyType "ParentTargetArn" Deployment = Value Prelude.Text
  set newValue Deployment {..}
    = Deployment {parentTargetArn = Prelude.pure newValue, ..}
instance Property "Tags" Deployment where
  type PropertyType "Tags" Deployment = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue Deployment {..}
    = Deployment {tags = Prelude.pure newValue, ..}
instance Property "TargetArn" Deployment where
  type PropertyType "TargetArn" Deployment = Value Prelude.Text
  set newValue Deployment {..}
    = Deployment {targetArn = newValue, ..}