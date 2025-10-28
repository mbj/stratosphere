module Stratosphere.CloudFront.ResponseHeadersPolicy.AccessControlAllowHeadersProperty (
        AccessControlAllowHeadersProperty(..),
        mkAccessControlAllowHeadersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AccessControlAllowHeadersProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-responseheaderspolicy-accesscontrolallowheaders.html>
    AccessControlAllowHeadersProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-responseheaderspolicy-accesscontrolallowheaders.html#cfn-cloudfront-responseheaderspolicy-accesscontrolallowheaders-items>
                                       items :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAccessControlAllowHeadersProperty ::
  ValueList Prelude.Text -> AccessControlAllowHeadersProperty
mkAccessControlAllowHeadersProperty items
  = AccessControlAllowHeadersProperty
      {haddock_workaround_ = (), items = items}
instance ToResourceProperties AccessControlAllowHeadersProperty where
  toResourceProperties AccessControlAllowHeadersProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::ResponseHeadersPolicy.AccessControlAllowHeaders",
         supportsTags = Prelude.False, properties = ["Items" JSON..= items]}
instance JSON.ToJSON AccessControlAllowHeadersProperty where
  toJSON AccessControlAllowHeadersProperty {..}
    = JSON.object ["Items" JSON..= items]
instance Property "Items" AccessControlAllowHeadersProperty where
  type PropertyType "Items" AccessControlAllowHeadersProperty = ValueList Prelude.Text
  set newValue AccessControlAllowHeadersProperty {..}
    = AccessControlAllowHeadersProperty {items = newValue, ..}