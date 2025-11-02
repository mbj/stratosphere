module Stratosphere.CloudFront.ResponseHeadersPolicy.AccessControlAllowOriginsProperty (
        AccessControlAllowOriginsProperty(..),
        mkAccessControlAllowOriginsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AccessControlAllowOriginsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-responseheaderspolicy-accesscontrolalloworigins.html>
    AccessControlAllowOriginsProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-responseheaderspolicy-accesscontrolalloworigins.html#cfn-cloudfront-responseheaderspolicy-accesscontrolalloworigins-items>
                                       items :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAccessControlAllowOriginsProperty ::
  ValueList Prelude.Text -> AccessControlAllowOriginsProperty
mkAccessControlAllowOriginsProperty items
  = AccessControlAllowOriginsProperty
      {haddock_workaround_ = (), items = items}
instance ToResourceProperties AccessControlAllowOriginsProperty where
  toResourceProperties AccessControlAllowOriginsProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::ResponseHeadersPolicy.AccessControlAllowOrigins",
         supportsTags = Prelude.False, properties = ["Items" JSON..= items]}
instance JSON.ToJSON AccessControlAllowOriginsProperty where
  toJSON AccessControlAllowOriginsProperty {..}
    = JSON.object ["Items" JSON..= items]
instance Property "Items" AccessControlAllowOriginsProperty where
  type PropertyType "Items" AccessControlAllowOriginsProperty = ValueList Prelude.Text
  set newValue AccessControlAllowOriginsProperty {..}
    = AccessControlAllowOriginsProperty {items = newValue, ..}