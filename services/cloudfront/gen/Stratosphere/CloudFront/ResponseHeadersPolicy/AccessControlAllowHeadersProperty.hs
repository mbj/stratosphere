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
  = AccessControlAllowHeadersProperty {items :: (ValueList (Value Prelude.Text))}
mkAccessControlAllowHeadersProperty ::
  ValueList (Value Prelude.Text) -> AccessControlAllowHeadersProperty
mkAccessControlAllowHeadersProperty items
  = AccessControlAllowHeadersProperty {items = items}
instance ToResourceProperties AccessControlAllowHeadersProperty where
  toResourceProperties AccessControlAllowHeadersProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::ResponseHeadersPolicy.AccessControlAllowHeaders",
         properties = ["Items" JSON..= items]}
instance JSON.ToJSON AccessControlAllowHeadersProperty where
  toJSON AccessControlAllowHeadersProperty {..}
    = JSON.object ["Items" JSON..= items]
instance Property "Items" AccessControlAllowHeadersProperty where
  type PropertyType "Items" AccessControlAllowHeadersProperty = ValueList (Value Prelude.Text)
  set newValue AccessControlAllowHeadersProperty {}
    = AccessControlAllowHeadersProperty {items = newValue, ..}