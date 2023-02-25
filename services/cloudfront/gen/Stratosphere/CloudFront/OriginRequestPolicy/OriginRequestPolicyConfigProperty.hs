module Stratosphere.CloudFront.OriginRequestPolicy.OriginRequestPolicyConfigProperty (
        module Exports, OriginRequestPolicyConfigProperty(..),
        mkOriginRequestPolicyConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CloudFront.OriginRequestPolicy.CookiesConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.CloudFront.OriginRequestPolicy.HeadersConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.CloudFront.OriginRequestPolicy.QueryStringsConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OriginRequestPolicyConfigProperty
  = OriginRequestPolicyConfigProperty {comment :: (Prelude.Maybe (Value Prelude.Text)),
                                       cookiesConfig :: CookiesConfigProperty,
                                       headersConfig :: HeadersConfigProperty,
                                       name :: (Value Prelude.Text),
                                       queryStringsConfig :: QueryStringsConfigProperty}
mkOriginRequestPolicyConfigProperty ::
  CookiesConfigProperty
  -> HeadersConfigProperty
     -> Value Prelude.Text
        -> QueryStringsConfigProperty -> OriginRequestPolicyConfigProperty
mkOriginRequestPolicyConfigProperty
  cookiesConfig
  headersConfig
  name
  queryStringsConfig
  = OriginRequestPolicyConfigProperty
      {cookiesConfig = cookiesConfig, headersConfig = headersConfig,
       name = name, queryStringsConfig = queryStringsConfig,
       comment = Prelude.Nothing}
instance ToResourceProperties OriginRequestPolicyConfigProperty where
  toResourceProperties OriginRequestPolicyConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::OriginRequestPolicy.OriginRequestPolicyConfig",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["CookiesConfig" JSON..= cookiesConfig,
                            "HeadersConfig" JSON..= headersConfig, "Name" JSON..= name,
                            "QueryStringsConfig" JSON..= queryStringsConfig]
                           (Prelude.catMaybes [(JSON..=) "Comment" Prelude.<$> comment]))}
instance JSON.ToJSON OriginRequestPolicyConfigProperty where
  toJSON OriginRequestPolicyConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["CookiesConfig" JSON..= cookiesConfig,
               "HeadersConfig" JSON..= headersConfig, "Name" JSON..= name,
               "QueryStringsConfig" JSON..= queryStringsConfig]
              (Prelude.catMaybes [(JSON..=) "Comment" Prelude.<$> comment])))
instance Property "Comment" OriginRequestPolicyConfigProperty where
  type PropertyType "Comment" OriginRequestPolicyConfigProperty = Value Prelude.Text
  set newValue OriginRequestPolicyConfigProperty {..}
    = OriginRequestPolicyConfigProperty
        {comment = Prelude.pure newValue, ..}
instance Property "CookiesConfig" OriginRequestPolicyConfigProperty where
  type PropertyType "CookiesConfig" OriginRequestPolicyConfigProperty = CookiesConfigProperty
  set newValue OriginRequestPolicyConfigProperty {..}
    = OriginRequestPolicyConfigProperty {cookiesConfig = newValue, ..}
instance Property "HeadersConfig" OriginRequestPolicyConfigProperty where
  type PropertyType "HeadersConfig" OriginRequestPolicyConfigProperty = HeadersConfigProperty
  set newValue OriginRequestPolicyConfigProperty {..}
    = OriginRequestPolicyConfigProperty {headersConfig = newValue, ..}
instance Property "Name" OriginRequestPolicyConfigProperty where
  type PropertyType "Name" OriginRequestPolicyConfigProperty = Value Prelude.Text
  set newValue OriginRequestPolicyConfigProperty {..}
    = OriginRequestPolicyConfigProperty {name = newValue, ..}
instance Property "QueryStringsConfig" OriginRequestPolicyConfigProperty where
  type PropertyType "QueryStringsConfig" OriginRequestPolicyConfigProperty = QueryStringsConfigProperty
  set newValue OriginRequestPolicyConfigProperty {..}
    = OriginRequestPolicyConfigProperty
        {queryStringsConfig = newValue, ..}