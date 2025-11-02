module Stratosphere.CloudFront.CloudFrontOriginAccessIdentity.CloudFrontOriginAccessIdentityConfigProperty (
        CloudFrontOriginAccessIdentityConfigProperty(..),
        mkCloudFrontOriginAccessIdentityConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CloudFrontOriginAccessIdentityConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-cloudfrontoriginaccessidentity-cloudfrontoriginaccessidentityconfig.html>
    CloudFrontOriginAccessIdentityConfigProperty {haddock_workaround_ :: (),
                                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-cloudfrontoriginaccessidentity-cloudfrontoriginaccessidentityconfig.html#cfn-cloudfront-cloudfrontoriginaccessidentity-cloudfrontoriginaccessidentityconfig-comment>
                                                  comment :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCloudFrontOriginAccessIdentityConfigProperty ::
  Value Prelude.Text -> CloudFrontOriginAccessIdentityConfigProperty
mkCloudFrontOriginAccessIdentityConfigProperty comment
  = CloudFrontOriginAccessIdentityConfigProperty
      {haddock_workaround_ = (), comment = comment}
instance ToResourceProperties CloudFrontOriginAccessIdentityConfigProperty where
  toResourceProperties
    CloudFrontOriginAccessIdentityConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::CloudFrontOriginAccessIdentity.CloudFrontOriginAccessIdentityConfig",
         supportsTags = Prelude.False,
         properties = ["Comment" JSON..= comment]}
instance JSON.ToJSON CloudFrontOriginAccessIdentityConfigProperty where
  toJSON CloudFrontOriginAccessIdentityConfigProperty {..}
    = JSON.object ["Comment" JSON..= comment]
instance Property "Comment" CloudFrontOriginAccessIdentityConfigProperty where
  type PropertyType "Comment" CloudFrontOriginAccessIdentityConfigProperty = Value Prelude.Text
  set newValue CloudFrontOriginAccessIdentityConfigProperty {..}
    = CloudFrontOriginAccessIdentityConfigProperty
        {comment = newValue, ..}