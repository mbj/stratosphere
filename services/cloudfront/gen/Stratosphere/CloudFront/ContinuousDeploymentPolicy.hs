module Stratosphere.CloudFront.ContinuousDeploymentPolicy (
        module Exports, ContinuousDeploymentPolicy(..),
        mkContinuousDeploymentPolicy
    ) where
import qualified Data.Aeson as JSON
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CloudFront.ContinuousDeploymentPolicy.ContinuousDeploymentPolicyConfigProperty as Exports
import Stratosphere.ResourceProperties
data ContinuousDeploymentPolicy
  = ContinuousDeploymentPolicy {continuousDeploymentPolicyConfig :: ContinuousDeploymentPolicyConfigProperty}
mkContinuousDeploymentPolicy ::
  ContinuousDeploymentPolicyConfigProperty
  -> ContinuousDeploymentPolicy
mkContinuousDeploymentPolicy continuousDeploymentPolicyConfig
  = ContinuousDeploymentPolicy
      {continuousDeploymentPolicyConfig = continuousDeploymentPolicyConfig}
instance ToResourceProperties ContinuousDeploymentPolicy where
  toResourceProperties ContinuousDeploymentPolicy {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::ContinuousDeploymentPolicy",
         properties = ["ContinuousDeploymentPolicyConfig"
                         JSON..= continuousDeploymentPolicyConfig]}
instance JSON.ToJSON ContinuousDeploymentPolicy where
  toJSON ContinuousDeploymentPolicy {..}
    = JSON.object
        ["ContinuousDeploymentPolicyConfig"
           JSON..= continuousDeploymentPolicyConfig]
instance Property "ContinuousDeploymentPolicyConfig" ContinuousDeploymentPolicy where
  type PropertyType "ContinuousDeploymentPolicyConfig" ContinuousDeploymentPolicy = ContinuousDeploymentPolicyConfigProperty
  set newValue ContinuousDeploymentPolicy {}
    = ContinuousDeploymentPolicy
        {continuousDeploymentPolicyConfig = newValue, ..}