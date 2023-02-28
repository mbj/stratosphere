module Stratosphere.CloudFront.ResponseHeadersPolicy (
        module Exports, ResponseHeadersPolicy(..), mkResponseHeadersPolicy
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CloudFront.ResponseHeadersPolicy.ResponseHeadersPolicyConfigProperty as Exports
import Stratosphere.ResourceProperties
data ResponseHeadersPolicy
  = ResponseHeadersPolicy {responseHeadersPolicyConfig :: ResponseHeadersPolicyConfigProperty}
mkResponseHeadersPolicy ::
  ResponseHeadersPolicyConfigProperty -> ResponseHeadersPolicy
mkResponseHeadersPolicy responseHeadersPolicyConfig
  = ResponseHeadersPolicy
      {responseHeadersPolicyConfig = responseHeadersPolicyConfig}
instance ToResourceProperties ResponseHeadersPolicy where
  toResourceProperties ResponseHeadersPolicy {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::ResponseHeadersPolicy",
         supportsTags = Prelude.False,
         properties = ["ResponseHeadersPolicyConfig"
                         JSON..= responseHeadersPolicyConfig]}
instance JSON.ToJSON ResponseHeadersPolicy where
  toJSON ResponseHeadersPolicy {..}
    = JSON.object
        ["ResponseHeadersPolicyConfig" JSON..= responseHeadersPolicyConfig]
instance Property "ResponseHeadersPolicyConfig" ResponseHeadersPolicy where
  type PropertyType "ResponseHeadersPolicyConfig" ResponseHeadersPolicy = ResponseHeadersPolicyConfigProperty
  set newValue ResponseHeadersPolicy {}
    = ResponseHeadersPolicy
        {responseHeadersPolicyConfig = newValue, ..}