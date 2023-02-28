module Stratosphere.CloudFront.CloudFrontOriginAccessIdentity (
        module Exports, CloudFrontOriginAccessIdentity(..),
        mkCloudFrontOriginAccessIdentity
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CloudFront.CloudFrontOriginAccessIdentity.CloudFrontOriginAccessIdentityConfigProperty as Exports
import Stratosphere.ResourceProperties
data CloudFrontOriginAccessIdentity
  = CloudFrontOriginAccessIdentity {cloudFrontOriginAccessIdentityConfig :: CloudFrontOriginAccessIdentityConfigProperty}
mkCloudFrontOriginAccessIdentity ::
  CloudFrontOriginAccessIdentityConfigProperty
  -> CloudFrontOriginAccessIdentity
mkCloudFrontOriginAccessIdentity
  cloudFrontOriginAccessIdentityConfig
  = CloudFrontOriginAccessIdentity
      {cloudFrontOriginAccessIdentityConfig = cloudFrontOriginAccessIdentityConfig}
instance ToResourceProperties CloudFrontOriginAccessIdentity where
  toResourceProperties CloudFrontOriginAccessIdentity {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::CloudFrontOriginAccessIdentity",
         supportsTags = Prelude.False,
         properties = ["CloudFrontOriginAccessIdentityConfig"
                         JSON..= cloudFrontOriginAccessIdentityConfig]}
instance JSON.ToJSON CloudFrontOriginAccessIdentity where
  toJSON CloudFrontOriginAccessIdentity {..}
    = JSON.object
        ["CloudFrontOriginAccessIdentityConfig"
           JSON..= cloudFrontOriginAccessIdentityConfig]
instance Property "CloudFrontOriginAccessIdentityConfig" CloudFrontOriginAccessIdentity where
  type PropertyType "CloudFrontOriginAccessIdentityConfig" CloudFrontOriginAccessIdentity = CloudFrontOriginAccessIdentityConfigProperty
  set newValue CloudFrontOriginAccessIdentity {}
    = CloudFrontOriginAccessIdentity
        {cloudFrontOriginAccessIdentityConfig = newValue, ..}