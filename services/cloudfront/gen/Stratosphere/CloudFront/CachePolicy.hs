module Stratosphere.CloudFront.CachePolicy (
        module Exports, CachePolicy(..), mkCachePolicy
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CloudFront.CachePolicy.CachePolicyConfigProperty as Exports
import Stratosphere.ResourceProperties
data CachePolicy
  = CachePolicy {cachePolicyConfig :: CachePolicyConfigProperty}
mkCachePolicy :: CachePolicyConfigProperty -> CachePolicy
mkCachePolicy cachePolicyConfig
  = CachePolicy {cachePolicyConfig = cachePolicyConfig}
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
  set newValue CachePolicy {}
    = CachePolicy {cachePolicyConfig = newValue, ..}