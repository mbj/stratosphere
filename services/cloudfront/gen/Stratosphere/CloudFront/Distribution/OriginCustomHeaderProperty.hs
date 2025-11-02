module Stratosphere.CloudFront.Distribution.OriginCustomHeaderProperty (
        OriginCustomHeaderProperty(..), mkOriginCustomHeaderProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OriginCustomHeaderProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-origincustomheader.html>
    OriginCustomHeaderProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-origincustomheader.html#cfn-cloudfront-distribution-origincustomheader-headername>
                                headerName :: (Value Prelude.Text),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-origincustomheader.html#cfn-cloudfront-distribution-origincustomheader-headervalue>
                                headerValue :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOriginCustomHeaderProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> OriginCustomHeaderProperty
mkOriginCustomHeaderProperty headerName headerValue
  = OriginCustomHeaderProperty
      {haddock_workaround_ = (), headerName = headerName,
       headerValue = headerValue}
instance ToResourceProperties OriginCustomHeaderProperty where
  toResourceProperties OriginCustomHeaderProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::Distribution.OriginCustomHeader",
         supportsTags = Prelude.False,
         properties = ["HeaderName" JSON..= headerName,
                       "HeaderValue" JSON..= headerValue]}
instance JSON.ToJSON OriginCustomHeaderProperty where
  toJSON OriginCustomHeaderProperty {..}
    = JSON.object
        ["HeaderName" JSON..= headerName,
         "HeaderValue" JSON..= headerValue]
instance Property "HeaderName" OriginCustomHeaderProperty where
  type PropertyType "HeaderName" OriginCustomHeaderProperty = Value Prelude.Text
  set newValue OriginCustomHeaderProperty {..}
    = OriginCustomHeaderProperty {headerName = newValue, ..}
instance Property "HeaderValue" OriginCustomHeaderProperty where
  type PropertyType "HeaderValue" OriginCustomHeaderProperty = Value Prelude.Text
  set newValue OriginCustomHeaderProperty {..}
    = OriginCustomHeaderProperty {headerValue = newValue, ..}