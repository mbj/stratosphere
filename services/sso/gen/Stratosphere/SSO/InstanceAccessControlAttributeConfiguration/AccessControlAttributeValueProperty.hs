module Stratosphere.SSO.InstanceAccessControlAttributeConfiguration.AccessControlAttributeValueProperty (
        AccessControlAttributeValueProperty(..),
        mkAccessControlAttributeValueProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AccessControlAttributeValueProperty
  = AccessControlAttributeValueProperty {source :: (ValueList (Value Prelude.Text))}
mkAccessControlAttributeValueProperty ::
  ValueList (Value Prelude.Text)
  -> AccessControlAttributeValueProperty
mkAccessControlAttributeValueProperty source
  = AccessControlAttributeValueProperty {source = source}
instance ToResourceProperties AccessControlAttributeValueProperty where
  toResourceProperties AccessControlAttributeValueProperty {..}
    = ResourceProperties
        {awsType = "AWS::SSO::InstanceAccessControlAttributeConfiguration.AccessControlAttributeValue",
         properties = ["Source" JSON..= source]}
instance JSON.ToJSON AccessControlAttributeValueProperty where
  toJSON AccessControlAttributeValueProperty {..}
    = JSON.object ["Source" JSON..= source]
instance Property "Source" AccessControlAttributeValueProperty where
  type PropertyType "Source" AccessControlAttributeValueProperty = ValueList (Value Prelude.Text)
  set newValue AccessControlAttributeValueProperty {}
    = AccessControlAttributeValueProperty {source = newValue, ..}