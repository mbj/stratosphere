module Stratosphere.CloudFront.ResponseHeadersPolicy.AccessControlAllowMethodsProperty (
        AccessControlAllowMethodsProperty(..),
        mkAccessControlAllowMethodsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AccessControlAllowMethodsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-responseheaderspolicy-accesscontrolallowmethods.html>
    AccessControlAllowMethodsProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-responseheaderspolicy-accesscontrolallowmethods.html#cfn-cloudfront-responseheaderspolicy-accesscontrolallowmethods-items>
                                       items :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAccessControlAllowMethodsProperty ::
  ValueList Prelude.Text -> AccessControlAllowMethodsProperty
mkAccessControlAllowMethodsProperty items
  = AccessControlAllowMethodsProperty
      {haddock_workaround_ = (), items = items}
instance ToResourceProperties AccessControlAllowMethodsProperty where
  toResourceProperties AccessControlAllowMethodsProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::ResponseHeadersPolicy.AccessControlAllowMethods",
         supportsTags = Prelude.False, properties = ["Items" JSON..= items]}
instance JSON.ToJSON AccessControlAllowMethodsProperty where
  toJSON AccessControlAllowMethodsProperty {..}
    = JSON.object ["Items" JSON..= items]
instance Property "Items" AccessControlAllowMethodsProperty where
  type PropertyType "Items" AccessControlAllowMethodsProperty = ValueList Prelude.Text
  set newValue AccessControlAllowMethodsProperty {..}
    = AccessControlAllowMethodsProperty {items = newValue, ..}