module Stratosphere.CloudFront.StreamingDistribution.S3OriginProperty (
        S3OriginProperty(..), mkS3OriginProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data S3OriginProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-streamingdistribution-s3origin.html>
    S3OriginProperty {haddock_workaround_ :: (),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-streamingdistribution-s3origin.html#cfn-cloudfront-streamingdistribution-s3origin-domainname>
                      domainName :: (Value Prelude.Text),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-streamingdistribution-s3origin.html#cfn-cloudfront-streamingdistribution-s3origin-originaccessidentity>
                      originAccessIdentity :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkS3OriginProperty ::
  Value Prelude.Text -> Value Prelude.Text -> S3OriginProperty
mkS3OriginProperty domainName originAccessIdentity
  = S3OriginProperty
      {haddock_workaround_ = (), domainName = domainName,
       originAccessIdentity = originAccessIdentity}
instance ToResourceProperties S3OriginProperty where
  toResourceProperties S3OriginProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::StreamingDistribution.S3Origin",
         supportsTags = Prelude.False,
         properties = ["DomainName" JSON..= domainName,
                       "OriginAccessIdentity" JSON..= originAccessIdentity]}
instance JSON.ToJSON S3OriginProperty where
  toJSON S3OriginProperty {..}
    = JSON.object
        ["DomainName" JSON..= domainName,
         "OriginAccessIdentity" JSON..= originAccessIdentity]
instance Property "DomainName" S3OriginProperty where
  type PropertyType "DomainName" S3OriginProperty = Value Prelude.Text
  set newValue S3OriginProperty {..}
    = S3OriginProperty {domainName = newValue, ..}
instance Property "OriginAccessIdentity" S3OriginProperty where
  type PropertyType "OriginAccessIdentity" S3OriginProperty = Value Prelude.Text
  set newValue S3OriginProperty {..}
    = S3OriginProperty {originAccessIdentity = newValue, ..}