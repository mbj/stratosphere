module Stratosphere.CloudFront.CachePolicy.ParametersInCacheKeyAndForwardedToOriginProperty (
        module Exports,
        ParametersInCacheKeyAndForwardedToOriginProperty(..),
        mkParametersInCacheKeyAndForwardedToOriginProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CloudFront.CachePolicy.CookiesConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.CloudFront.CachePolicy.HeadersConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.CloudFront.CachePolicy.QueryStringsConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ParametersInCacheKeyAndForwardedToOriginProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-cachepolicy-parametersincachekeyandforwardedtoorigin.html>
    ParametersInCacheKeyAndForwardedToOriginProperty {haddock_workaround_ :: (),
                                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-cachepolicy-parametersincachekeyandforwardedtoorigin.html#cfn-cloudfront-cachepolicy-parametersincachekeyandforwardedtoorigin-cookiesconfig>
                                                      cookiesConfig :: CookiesConfigProperty,
                                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-cachepolicy-parametersincachekeyandforwardedtoorigin.html#cfn-cloudfront-cachepolicy-parametersincachekeyandforwardedtoorigin-enableacceptencodingbrotli>
                                                      enableAcceptEncodingBrotli :: (Prelude.Maybe (Value Prelude.Bool)),
                                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-cachepolicy-parametersincachekeyandforwardedtoorigin.html#cfn-cloudfront-cachepolicy-parametersincachekeyandforwardedtoorigin-enableacceptencodinggzip>
                                                      enableAcceptEncodingGzip :: (Value Prelude.Bool),
                                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-cachepolicy-parametersincachekeyandforwardedtoorigin.html#cfn-cloudfront-cachepolicy-parametersincachekeyandforwardedtoorigin-headersconfig>
                                                      headersConfig :: HeadersConfigProperty,
                                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-cachepolicy-parametersincachekeyandforwardedtoorigin.html#cfn-cloudfront-cachepolicy-parametersincachekeyandforwardedtoorigin-querystringsconfig>
                                                      queryStringsConfig :: QueryStringsConfigProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkParametersInCacheKeyAndForwardedToOriginProperty ::
  CookiesConfigProperty
  -> Value Prelude.Bool
     -> HeadersConfigProperty
        -> QueryStringsConfigProperty
           -> ParametersInCacheKeyAndForwardedToOriginProperty
mkParametersInCacheKeyAndForwardedToOriginProperty
  cookiesConfig
  enableAcceptEncodingGzip
  headersConfig
  queryStringsConfig
  = ParametersInCacheKeyAndForwardedToOriginProperty
      {haddock_workaround_ = (), cookiesConfig = cookiesConfig,
       enableAcceptEncodingGzip = enableAcceptEncodingGzip,
       headersConfig = headersConfig,
       queryStringsConfig = queryStringsConfig,
       enableAcceptEncodingBrotli = Prelude.Nothing}
instance ToResourceProperties ParametersInCacheKeyAndForwardedToOriginProperty where
  toResourceProperties
    ParametersInCacheKeyAndForwardedToOriginProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::CachePolicy.ParametersInCacheKeyAndForwardedToOrigin",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["CookiesConfig" JSON..= cookiesConfig,
                            "EnableAcceptEncodingGzip" JSON..= enableAcceptEncodingGzip,
                            "HeadersConfig" JSON..= headersConfig,
                            "QueryStringsConfig" JSON..= queryStringsConfig]
                           (Prelude.catMaybes
                              [(JSON..=) "EnableAcceptEncodingBrotli"
                                 Prelude.<$> enableAcceptEncodingBrotli]))}
instance JSON.ToJSON ParametersInCacheKeyAndForwardedToOriginProperty where
  toJSON ParametersInCacheKeyAndForwardedToOriginProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["CookiesConfig" JSON..= cookiesConfig,
               "EnableAcceptEncodingGzip" JSON..= enableAcceptEncodingGzip,
               "HeadersConfig" JSON..= headersConfig,
               "QueryStringsConfig" JSON..= queryStringsConfig]
              (Prelude.catMaybes
                 [(JSON..=) "EnableAcceptEncodingBrotli"
                    Prelude.<$> enableAcceptEncodingBrotli])))
instance Property "CookiesConfig" ParametersInCacheKeyAndForwardedToOriginProperty where
  type PropertyType "CookiesConfig" ParametersInCacheKeyAndForwardedToOriginProperty = CookiesConfigProperty
  set newValue ParametersInCacheKeyAndForwardedToOriginProperty {..}
    = ParametersInCacheKeyAndForwardedToOriginProperty
        {cookiesConfig = newValue, ..}
instance Property "EnableAcceptEncodingBrotli" ParametersInCacheKeyAndForwardedToOriginProperty where
  type PropertyType "EnableAcceptEncodingBrotli" ParametersInCacheKeyAndForwardedToOriginProperty = Value Prelude.Bool
  set newValue ParametersInCacheKeyAndForwardedToOriginProperty {..}
    = ParametersInCacheKeyAndForwardedToOriginProperty
        {enableAcceptEncodingBrotli = Prelude.pure newValue, ..}
instance Property "EnableAcceptEncodingGzip" ParametersInCacheKeyAndForwardedToOriginProperty where
  type PropertyType "EnableAcceptEncodingGzip" ParametersInCacheKeyAndForwardedToOriginProperty = Value Prelude.Bool
  set newValue ParametersInCacheKeyAndForwardedToOriginProperty {..}
    = ParametersInCacheKeyAndForwardedToOriginProperty
        {enableAcceptEncodingGzip = newValue, ..}
instance Property "HeadersConfig" ParametersInCacheKeyAndForwardedToOriginProperty where
  type PropertyType "HeadersConfig" ParametersInCacheKeyAndForwardedToOriginProperty = HeadersConfigProperty
  set newValue ParametersInCacheKeyAndForwardedToOriginProperty {..}
    = ParametersInCacheKeyAndForwardedToOriginProperty
        {headersConfig = newValue, ..}
instance Property "QueryStringsConfig" ParametersInCacheKeyAndForwardedToOriginProperty where
  type PropertyType "QueryStringsConfig" ParametersInCacheKeyAndForwardedToOriginProperty = QueryStringsConfigProperty
  set newValue ParametersInCacheKeyAndForwardedToOriginProperty {..}
    = ParametersInCacheKeyAndForwardedToOriginProperty
        {queryStringsConfig = newValue, ..}