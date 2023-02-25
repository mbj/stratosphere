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
  = CloudFrontOriginAccessIdentityConfigProperty {comment :: (Value Prelude.Text)}
mkCloudFrontOriginAccessIdentityConfigProperty ::
  Value Prelude.Text -> CloudFrontOriginAccessIdentityConfigProperty
mkCloudFrontOriginAccessIdentityConfigProperty comment
  = CloudFrontOriginAccessIdentityConfigProperty {comment = comment}
instance ToResourceProperties CloudFrontOriginAccessIdentityConfigProperty where
  toResourceProperties
    CloudFrontOriginAccessIdentityConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::CloudFrontOriginAccessIdentity.CloudFrontOriginAccessIdentityConfig",
         properties = ["Comment" JSON..= comment]}
instance JSON.ToJSON CloudFrontOriginAccessIdentityConfigProperty where
  toJSON CloudFrontOriginAccessIdentityConfigProperty {..}
    = JSON.object ["Comment" JSON..= comment]
instance Property "Comment" CloudFrontOriginAccessIdentityConfigProperty where
  type PropertyType "Comment" CloudFrontOriginAccessIdentityConfigProperty = Value Prelude.Text
  set newValue CloudFrontOriginAccessIdentityConfigProperty {}
    = CloudFrontOriginAccessIdentityConfigProperty
        {comment = newValue, ..}