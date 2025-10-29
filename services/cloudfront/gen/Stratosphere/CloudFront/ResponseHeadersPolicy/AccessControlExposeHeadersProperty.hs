module Stratosphere.CloudFront.ResponseHeadersPolicy.AccessControlExposeHeadersProperty (
        AccessControlExposeHeadersProperty(..),
        mkAccessControlExposeHeadersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AccessControlExposeHeadersProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-responseheaderspolicy-accesscontrolexposeheaders.html>
    AccessControlExposeHeadersProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-responseheaderspolicy-accesscontrolexposeheaders.html#cfn-cloudfront-responseheaderspolicy-accesscontrolexposeheaders-items>
                                        items :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAccessControlExposeHeadersProperty ::
  ValueList Prelude.Text -> AccessControlExposeHeadersProperty
mkAccessControlExposeHeadersProperty items
  = AccessControlExposeHeadersProperty {items = items}
instance ToResourceProperties AccessControlExposeHeadersProperty where
  toResourceProperties AccessControlExposeHeadersProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::ResponseHeadersPolicy.AccessControlExposeHeaders",
         supportsTags = Prelude.False, properties = ["Items" JSON..= items]}
instance JSON.ToJSON AccessControlExposeHeadersProperty where
  toJSON AccessControlExposeHeadersProperty {..}
    = JSON.object ["Items" JSON..= items]
instance Property "Items" AccessControlExposeHeadersProperty where
  type PropertyType "Items" AccessControlExposeHeadersProperty = ValueList Prelude.Text
  set newValue AccessControlExposeHeadersProperty {}
    = AccessControlExposeHeadersProperty {items = newValue, ..}