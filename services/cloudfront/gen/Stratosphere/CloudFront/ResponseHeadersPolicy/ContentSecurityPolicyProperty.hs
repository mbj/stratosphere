module Stratosphere.CloudFront.ResponseHeadersPolicy.ContentSecurityPolicyProperty (
        ContentSecurityPolicyProperty(..), mkContentSecurityPolicyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ContentSecurityPolicyProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-responseheaderspolicy-contentsecuritypolicy.html>
    ContentSecurityPolicyProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-responseheaderspolicy-contentsecuritypolicy.html#cfn-cloudfront-responseheaderspolicy-contentsecuritypolicy-contentsecuritypolicy>
                                   contentSecurityPolicy :: (Value Prelude.Text),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-responseheaderspolicy-contentsecuritypolicy.html#cfn-cloudfront-responseheaderspolicy-contentsecuritypolicy-override>
                                   override :: (Value Prelude.Bool)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkContentSecurityPolicyProperty ::
  Value Prelude.Text
  -> Value Prelude.Bool -> ContentSecurityPolicyProperty
mkContentSecurityPolicyProperty contentSecurityPolicy override
  = ContentSecurityPolicyProperty
      {haddock_workaround_ = (),
       contentSecurityPolicy = contentSecurityPolicy, override = override}
instance ToResourceProperties ContentSecurityPolicyProperty where
  toResourceProperties ContentSecurityPolicyProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::ResponseHeadersPolicy.ContentSecurityPolicy",
         supportsTags = Prelude.False,
         properties = ["ContentSecurityPolicy"
                         JSON..= contentSecurityPolicy,
                       "Override" JSON..= override]}
instance JSON.ToJSON ContentSecurityPolicyProperty where
  toJSON ContentSecurityPolicyProperty {..}
    = JSON.object
        ["ContentSecurityPolicy" JSON..= contentSecurityPolicy,
         "Override" JSON..= override]
instance Property "ContentSecurityPolicy" ContentSecurityPolicyProperty where
  type PropertyType "ContentSecurityPolicy" ContentSecurityPolicyProperty = Value Prelude.Text
  set newValue ContentSecurityPolicyProperty {..}
    = ContentSecurityPolicyProperty
        {contentSecurityPolicy = newValue, ..}
instance Property "Override" ContentSecurityPolicyProperty where
  type PropertyType "Override" ContentSecurityPolicyProperty = Value Prelude.Bool
  set newValue ContentSecurityPolicyProperty {..}
    = ContentSecurityPolicyProperty {override = newValue, ..}