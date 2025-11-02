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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudfront-cloudfrontoriginaccessidentity.html>
    CloudFrontOriginAccessIdentity {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudfront-cloudfrontoriginaccessidentity.html#cfn-cloudfront-cloudfrontoriginaccessidentity-cloudfrontoriginaccessidentityconfig>
                                    cloudFrontOriginAccessIdentityConfig :: CloudFrontOriginAccessIdentityConfigProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCloudFrontOriginAccessIdentity ::
  CloudFrontOriginAccessIdentityConfigProperty
  -> CloudFrontOriginAccessIdentity
mkCloudFrontOriginAccessIdentity
  cloudFrontOriginAccessIdentityConfig
  = CloudFrontOriginAccessIdentity
      {haddock_workaround_ = (),
       cloudFrontOriginAccessIdentityConfig = cloudFrontOriginAccessIdentityConfig}
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
  set newValue CloudFrontOriginAccessIdentity {..}
    = CloudFrontOriginAccessIdentity
        {cloudFrontOriginAccessIdentityConfig = newValue, ..}