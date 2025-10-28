module Stratosphere.CloudFront.CachePolicy.CachePolicyConfigProperty (
        module Exports, CachePolicyConfigProperty(..),
        mkCachePolicyConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CloudFront.CachePolicy.ParametersInCacheKeyAndForwardedToOriginProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CachePolicyConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-cachepolicy-cachepolicyconfig.html>
    CachePolicyConfigProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-cachepolicy-cachepolicyconfig.html#cfn-cloudfront-cachepolicy-cachepolicyconfig-comment>
                               comment :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-cachepolicy-cachepolicyconfig.html#cfn-cloudfront-cachepolicy-cachepolicyconfig-defaultttl>
                               defaultTTL :: (Value Prelude.Double),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-cachepolicy-cachepolicyconfig.html#cfn-cloudfront-cachepolicy-cachepolicyconfig-maxttl>
                               maxTTL :: (Value Prelude.Double),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-cachepolicy-cachepolicyconfig.html#cfn-cloudfront-cachepolicy-cachepolicyconfig-minttl>
                               minTTL :: (Value Prelude.Double),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-cachepolicy-cachepolicyconfig.html#cfn-cloudfront-cachepolicy-cachepolicyconfig-name>
                               name :: (Value Prelude.Text),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-cachepolicy-cachepolicyconfig.html#cfn-cloudfront-cachepolicy-cachepolicyconfig-parametersincachekeyandforwardedtoorigin>
                               parametersInCacheKeyAndForwardedToOrigin :: ParametersInCacheKeyAndForwardedToOriginProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCachePolicyConfigProperty ::
  Value Prelude.Double
  -> Value Prelude.Double
     -> Value Prelude.Double
        -> Value Prelude.Text
           -> ParametersInCacheKeyAndForwardedToOriginProperty
              -> CachePolicyConfigProperty
mkCachePolicyConfigProperty
  defaultTTL
  maxTTL
  minTTL
  name
  parametersInCacheKeyAndForwardedToOrigin
  = CachePolicyConfigProperty
      {haddock_workaround_ = (), defaultTTL = defaultTTL,
       maxTTL = maxTTL, minTTL = minTTL, name = name,
       parametersInCacheKeyAndForwardedToOrigin = parametersInCacheKeyAndForwardedToOrigin,
       comment = Prelude.Nothing}
instance ToResourceProperties CachePolicyConfigProperty where
  toResourceProperties CachePolicyConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::CachePolicy.CachePolicyConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DefaultTTL" JSON..= defaultTTL, "MaxTTL" JSON..= maxTTL,
                            "MinTTL" JSON..= minTTL, "Name" JSON..= name,
                            "ParametersInCacheKeyAndForwardedToOrigin"
                              JSON..= parametersInCacheKeyAndForwardedToOrigin]
                           (Prelude.catMaybes [(JSON..=) "Comment" Prelude.<$> comment]))}
instance JSON.ToJSON CachePolicyConfigProperty where
  toJSON CachePolicyConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DefaultTTL" JSON..= defaultTTL, "MaxTTL" JSON..= maxTTL,
               "MinTTL" JSON..= minTTL, "Name" JSON..= name,
               "ParametersInCacheKeyAndForwardedToOrigin"
                 JSON..= parametersInCacheKeyAndForwardedToOrigin]
              (Prelude.catMaybes [(JSON..=) "Comment" Prelude.<$> comment])))
instance Property "Comment" CachePolicyConfigProperty where
  type PropertyType "Comment" CachePolicyConfigProperty = Value Prelude.Text
  set newValue CachePolicyConfigProperty {..}
    = CachePolicyConfigProperty {comment = Prelude.pure newValue, ..}
instance Property "DefaultTTL" CachePolicyConfigProperty where
  type PropertyType "DefaultTTL" CachePolicyConfigProperty = Value Prelude.Double
  set newValue CachePolicyConfigProperty {..}
    = CachePolicyConfigProperty {defaultTTL = newValue, ..}
instance Property "MaxTTL" CachePolicyConfigProperty where
  type PropertyType "MaxTTL" CachePolicyConfigProperty = Value Prelude.Double
  set newValue CachePolicyConfigProperty {..}
    = CachePolicyConfigProperty {maxTTL = newValue, ..}
instance Property "MinTTL" CachePolicyConfigProperty where
  type PropertyType "MinTTL" CachePolicyConfigProperty = Value Prelude.Double
  set newValue CachePolicyConfigProperty {..}
    = CachePolicyConfigProperty {minTTL = newValue, ..}
instance Property "Name" CachePolicyConfigProperty where
  type PropertyType "Name" CachePolicyConfigProperty = Value Prelude.Text
  set newValue CachePolicyConfigProperty {..}
    = CachePolicyConfigProperty {name = newValue, ..}
instance Property "ParametersInCacheKeyAndForwardedToOrigin" CachePolicyConfigProperty where
  type PropertyType "ParametersInCacheKeyAndForwardedToOrigin" CachePolicyConfigProperty = ParametersInCacheKeyAndForwardedToOriginProperty
  set newValue CachePolicyConfigProperty {..}
    = CachePolicyConfigProperty
        {parametersInCacheKeyAndForwardedToOrigin = newValue, ..}