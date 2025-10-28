module Stratosphere.ElasticLoadBalancing.LoadBalancer.AppCookieStickinessPolicyProperty (
        AppCookieStickinessPolicyProperty(..),
        mkAppCookieStickinessPolicyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AppCookieStickinessPolicyProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-AppCookieStickinessPolicy.html>
    AppCookieStickinessPolicyProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-AppCookieStickinessPolicy.html#cfn-elb-appcookiestickinesspolicy-cookiename>
                                       cookieName :: (Value Prelude.Text),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-AppCookieStickinessPolicy.html#cfn-elb-appcookiestickinesspolicy-policyname>
                                       policyName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAppCookieStickinessPolicyProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> AppCookieStickinessPolicyProperty
mkAppCookieStickinessPolicyProperty cookieName policyName
  = AppCookieStickinessPolicyProperty
      {haddock_workaround_ = (), cookieName = cookieName,
       policyName = policyName}
instance ToResourceProperties AppCookieStickinessPolicyProperty where
  toResourceProperties AppCookieStickinessPolicyProperty {..}
    = ResourceProperties
        {awsType = "AWS::ElasticLoadBalancing::LoadBalancer.AppCookieStickinessPolicy",
         supportsTags = Prelude.False,
         properties = ["CookieName" JSON..= cookieName,
                       "PolicyName" JSON..= policyName]}
instance JSON.ToJSON AppCookieStickinessPolicyProperty where
  toJSON AppCookieStickinessPolicyProperty {..}
    = JSON.object
        ["CookieName" JSON..= cookieName, "PolicyName" JSON..= policyName]
instance Property "CookieName" AppCookieStickinessPolicyProperty where
  type PropertyType "CookieName" AppCookieStickinessPolicyProperty = Value Prelude.Text
  set newValue AppCookieStickinessPolicyProperty {..}
    = AppCookieStickinessPolicyProperty {cookieName = newValue, ..}
instance Property "PolicyName" AppCookieStickinessPolicyProperty where
  type PropertyType "PolicyName" AppCookieStickinessPolicyProperty = Value Prelude.Text
  set newValue AppCookieStickinessPolicyProperty {..}
    = AppCookieStickinessPolicyProperty {policyName = newValue, ..}