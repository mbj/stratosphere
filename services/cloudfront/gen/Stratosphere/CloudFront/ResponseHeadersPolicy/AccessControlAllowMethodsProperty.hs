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
  = AccessControlAllowMethodsProperty {items :: (ValueList Prelude.Text)}
mkAccessControlAllowMethodsProperty ::
  ValueList Prelude.Text -> AccessControlAllowMethodsProperty
mkAccessControlAllowMethodsProperty items
  = AccessControlAllowMethodsProperty {items = items}
instance ToResourceProperties AccessControlAllowMethodsProperty where
  toResourceProperties AccessControlAllowMethodsProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::ResponseHeadersPolicy.AccessControlAllowMethods",
         properties = ["Items" JSON..= items]}
instance JSON.ToJSON AccessControlAllowMethodsProperty where
  toJSON AccessControlAllowMethodsProperty {..}
    = JSON.object ["Items" JSON..= items]
instance Property "Items" AccessControlAllowMethodsProperty where
  type PropertyType "Items" AccessControlAllowMethodsProperty = ValueList Prelude.Text
  set newValue AccessControlAllowMethodsProperty {}
    = AccessControlAllowMethodsProperty {items = newValue, ..}