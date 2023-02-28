module Stratosphere.CloudFront.ResponseHeadersPolicy.ContentSecurityPolicyProperty (
        ContentSecurityPolicyProperty(..), mkContentSecurityPolicyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ContentSecurityPolicyProperty
  = ContentSecurityPolicyProperty {contentSecurityPolicy :: (Value Prelude.Text),
                                   override :: (Value Prelude.Bool)}
mkContentSecurityPolicyProperty ::
  Value Prelude.Text
  -> Value Prelude.Bool -> ContentSecurityPolicyProperty
mkContentSecurityPolicyProperty contentSecurityPolicy override
  = ContentSecurityPolicyProperty
      {contentSecurityPolicy = contentSecurityPolicy,
       override = override}
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