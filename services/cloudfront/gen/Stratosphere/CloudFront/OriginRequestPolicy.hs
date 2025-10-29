module Stratosphere.CloudFront.OriginRequestPolicy (
        module Exports, OriginRequestPolicy(..), mkOriginRequestPolicy
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CloudFront.OriginRequestPolicy.OriginRequestPolicyConfigProperty as Exports
import Stratosphere.ResourceProperties
data OriginRequestPolicy
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudfront-originrequestpolicy.html>
    OriginRequestPolicy {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudfront-originrequestpolicy.html#cfn-cloudfront-originrequestpolicy-originrequestpolicyconfig>
                         originRequestPolicyConfig :: OriginRequestPolicyConfigProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOriginRequestPolicy ::
  OriginRequestPolicyConfigProperty -> OriginRequestPolicy
mkOriginRequestPolicy originRequestPolicyConfig
  = OriginRequestPolicy
      {originRequestPolicyConfig = originRequestPolicyConfig}
instance ToResourceProperties OriginRequestPolicy where
  toResourceProperties OriginRequestPolicy {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::OriginRequestPolicy",
         supportsTags = Prelude.False,
         properties = ["OriginRequestPolicyConfig"
                         JSON..= originRequestPolicyConfig]}
instance JSON.ToJSON OriginRequestPolicy where
  toJSON OriginRequestPolicy {..}
    = JSON.object
        ["OriginRequestPolicyConfig" JSON..= originRequestPolicyConfig]
instance Property "OriginRequestPolicyConfig" OriginRequestPolicy where
  type PropertyType "OriginRequestPolicyConfig" OriginRequestPolicy = OriginRequestPolicyConfigProperty
  set newValue OriginRequestPolicy {}
    = OriginRequestPolicy {originRequestPolicyConfig = newValue, ..}