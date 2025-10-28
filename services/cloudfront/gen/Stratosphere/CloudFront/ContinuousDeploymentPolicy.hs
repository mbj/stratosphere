module Stratosphere.CloudFront.ContinuousDeploymentPolicy (
        module Exports, ContinuousDeploymentPolicy(..),
        mkContinuousDeploymentPolicy
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CloudFront.ContinuousDeploymentPolicy.ContinuousDeploymentPolicyConfigProperty as Exports
import Stratosphere.ResourceProperties
data ContinuousDeploymentPolicy
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudfront-continuousdeploymentpolicy.html>
    ContinuousDeploymentPolicy {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudfront-continuousdeploymentpolicy.html#cfn-cloudfront-continuousdeploymentpolicy-continuousdeploymentpolicyconfig>
                                continuousDeploymentPolicyConfig :: ContinuousDeploymentPolicyConfigProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkContinuousDeploymentPolicy ::
  ContinuousDeploymentPolicyConfigProperty
  -> ContinuousDeploymentPolicy
mkContinuousDeploymentPolicy continuousDeploymentPolicyConfig
  = ContinuousDeploymentPolicy
      {haddock_workaround_ = (),
       continuousDeploymentPolicyConfig = continuousDeploymentPolicyConfig}
instance ToResourceProperties ContinuousDeploymentPolicy where
  toResourceProperties ContinuousDeploymentPolicy {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::ContinuousDeploymentPolicy",
         supportsTags = Prelude.False,
         properties = ["ContinuousDeploymentPolicyConfig"
                         JSON..= continuousDeploymentPolicyConfig]}
instance JSON.ToJSON ContinuousDeploymentPolicy where
  toJSON ContinuousDeploymentPolicy {..}
    = JSON.object
        ["ContinuousDeploymentPolicyConfig"
           JSON..= continuousDeploymentPolicyConfig]
instance Property "ContinuousDeploymentPolicyConfig" ContinuousDeploymentPolicy where
  type PropertyType "ContinuousDeploymentPolicyConfig" ContinuousDeploymentPolicy = ContinuousDeploymentPolicyConfigProperty
  set newValue ContinuousDeploymentPolicy {..}
    = ContinuousDeploymentPolicy
        {continuousDeploymentPolicyConfig = newValue, ..}