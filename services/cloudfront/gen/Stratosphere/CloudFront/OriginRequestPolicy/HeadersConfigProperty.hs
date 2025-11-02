module Stratosphere.CloudFront.OriginRequestPolicy.HeadersConfigProperty (
        HeadersConfigProperty(..), mkHeadersConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HeadersConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-originrequestpolicy-headersconfig.html>
    HeadersConfigProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-originrequestpolicy-headersconfig.html#cfn-cloudfront-originrequestpolicy-headersconfig-headerbehavior>
                           headerBehavior :: (Value Prelude.Text),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-originrequestpolicy-headersconfig.html#cfn-cloudfront-originrequestpolicy-headersconfig-headers>
                           headers :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHeadersConfigProperty ::
  Value Prelude.Text -> HeadersConfigProperty
mkHeadersConfigProperty headerBehavior
  = HeadersConfigProperty
      {haddock_workaround_ = (), headerBehavior = headerBehavior,
       headers = Prelude.Nothing}
instance ToResourceProperties HeadersConfigProperty where
  toResourceProperties HeadersConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::OriginRequestPolicy.HeadersConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["HeaderBehavior" JSON..= headerBehavior]
                           (Prelude.catMaybes [(JSON..=) "Headers" Prelude.<$> headers]))}
instance JSON.ToJSON HeadersConfigProperty where
  toJSON HeadersConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["HeaderBehavior" JSON..= headerBehavior]
              (Prelude.catMaybes [(JSON..=) "Headers" Prelude.<$> headers])))
instance Property "HeaderBehavior" HeadersConfigProperty where
  type PropertyType "HeaderBehavior" HeadersConfigProperty = Value Prelude.Text
  set newValue HeadersConfigProperty {..}
    = HeadersConfigProperty {headerBehavior = newValue, ..}
instance Property "Headers" HeadersConfigProperty where
  type PropertyType "Headers" HeadersConfigProperty = ValueList Prelude.Text
  set newValue HeadersConfigProperty {..}
    = HeadersConfigProperty {headers = Prelude.pure newValue, ..}