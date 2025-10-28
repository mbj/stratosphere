module Stratosphere.CloudFront.CachePolicy (
        module Exports, CachePolicy(..), mkCachePolicy
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CloudFront.CachePolicy.CachePolicyConfigProperty as Exports
import Stratosphere.ResourceProperties
data CachePolicy
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudfront-cachepolicy.html>
    CachePolicy {haddock_workaround_ :: (),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudfront-cachepolicy.html#cfn-cloudfront-cachepolicy-cachepolicyconfig>
                 cachePolicyConfig :: CachePolicyConfigProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCachePolicy :: CachePolicyConfigProperty -> CachePolicy
mkCachePolicy cachePolicyConfig
  = CachePolicy
      {haddock_workaround_ = (), cachePolicyConfig = cachePolicyConfig}
instance ToResourceProperties CachePolicy where
  toResourceProperties CachePolicy {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::CachePolicy",
         supportsTags = Prelude.False,
         properties = ["CachePolicyConfig" JSON..= cachePolicyConfig]}
instance JSON.ToJSON CachePolicy where
  toJSON CachePolicy {..}
    = JSON.object ["CachePolicyConfig" JSON..= cachePolicyConfig]
instance Property "CachePolicyConfig" CachePolicy where
  type PropertyType "CachePolicyConfig" CachePolicy = CachePolicyConfigProperty
  set newValue CachePolicy {..}
    = CachePolicy {cachePolicyConfig = newValue, ..}