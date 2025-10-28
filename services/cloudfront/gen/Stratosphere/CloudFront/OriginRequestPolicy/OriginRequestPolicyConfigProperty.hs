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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-originrequestpolicy-originrequestpolicyconfig.html>
    OriginRequestPolicyConfigProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-originrequestpolicy-originrequestpolicyconfig.html#cfn-cloudfront-originrequestpolicy-originrequestpolicyconfig-comment>
                                       comment :: (Prelude.Maybe (Value Prelude.Text)),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-originrequestpolicy-originrequestpolicyconfig.html#cfn-cloudfront-originrequestpolicy-originrequestpolicyconfig-cookiesconfig>
                                       cookiesConfig :: CookiesConfigProperty,
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-originrequestpolicy-originrequestpolicyconfig.html#cfn-cloudfront-originrequestpolicy-originrequestpolicyconfig-headersconfig>
                                       headersConfig :: HeadersConfigProperty,
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-originrequestpolicy-originrequestpolicyconfig.html#cfn-cloudfront-originrequestpolicy-originrequestpolicyconfig-name>
                                       name :: (Value Prelude.Text),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-originrequestpolicy-originrequestpolicyconfig.html#cfn-cloudfront-originrequestpolicy-originrequestpolicyconfig-querystringsconfig>
                                       queryStringsConfig :: QueryStringsConfigProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
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
      {haddock_workaround_ = (), cookiesConfig = cookiesConfig,
       headersConfig = headersConfig, name = name,
       queryStringsConfig = queryStringsConfig, comment = Prelude.Nothing}
instance ToResourceProperties OriginRequestPolicyConfigProperty where
  toResourceProperties OriginRequestPolicyConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::OriginRequestPolicy.OriginRequestPolicyConfig",
         supportsTags = Prelude.False,
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