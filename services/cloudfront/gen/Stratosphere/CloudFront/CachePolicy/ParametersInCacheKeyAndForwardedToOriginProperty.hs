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
  = ParametersInCacheKeyAndForwardedToOriginProperty {cookiesConfig :: CookiesConfigProperty,
                                                      enableAcceptEncodingBrotli :: (Prelude.Maybe (Value Prelude.Bool)),
                                                      enableAcceptEncodingGzip :: (Value Prelude.Bool),
                                                      headersConfig :: HeadersConfigProperty,
                                                      queryStringsConfig :: QueryStringsConfigProperty}
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
      {cookiesConfig = cookiesConfig,
       enableAcceptEncodingGzip = enableAcceptEncodingGzip,
       headersConfig = headersConfig,
       queryStringsConfig = queryStringsConfig,
       enableAcceptEncodingBrotli = Prelude.Nothing}
instance ToResourceProperties ParametersInCacheKeyAndForwardedToOriginProperty where
  toResourceProperties
    ParametersInCacheKeyAndForwardedToOriginProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::CachePolicy.ParametersInCacheKeyAndForwardedToOrigin",
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