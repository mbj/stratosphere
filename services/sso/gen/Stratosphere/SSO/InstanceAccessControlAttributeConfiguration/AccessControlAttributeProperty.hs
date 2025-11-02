module Stratosphere.SSO.InstanceAccessControlAttributeConfiguration.AccessControlAttributeProperty (
        module Exports, AccessControlAttributeProperty(..),
        mkAccessControlAttributeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SSO.InstanceAccessControlAttributeConfiguration.AccessControlAttributeValueProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AccessControlAttributeProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sso-instanceaccesscontrolattributeconfiguration-accesscontrolattribute.html>
    AccessControlAttributeProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sso-instanceaccesscontrolattributeconfiguration-accesscontrolattribute.html#cfn-sso-instanceaccesscontrolattributeconfiguration-accesscontrolattribute-key>
                                    key :: (Value Prelude.Text),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sso-instanceaccesscontrolattributeconfiguration-accesscontrolattribute.html#cfn-sso-instanceaccesscontrolattributeconfiguration-accesscontrolattribute-value>
                                    value :: AccessControlAttributeValueProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAccessControlAttributeProperty ::
  Value Prelude.Text
  -> AccessControlAttributeValueProperty
     -> AccessControlAttributeProperty
mkAccessControlAttributeProperty key value
  = AccessControlAttributeProperty
      {haddock_workaround_ = (), key = key, value = value}
instance ToResourceProperties AccessControlAttributeProperty where
  toResourceProperties AccessControlAttributeProperty {..}
    = ResourceProperties
        {awsType = "AWS::SSO::InstanceAccessControlAttributeConfiguration.AccessControlAttribute",
         supportsTags = Prelude.False,
         properties = ["Key" JSON..= key, "Value" JSON..= value]}
instance JSON.ToJSON AccessControlAttributeProperty where
  toJSON AccessControlAttributeProperty {..}
    = JSON.object ["Key" JSON..= key, "Value" JSON..= value]
instance Property "Key" AccessControlAttributeProperty where
  type PropertyType "Key" AccessControlAttributeProperty = Value Prelude.Text
  set newValue AccessControlAttributeProperty {..}
    = AccessControlAttributeProperty {key = newValue, ..}
instance Property "Value" AccessControlAttributeProperty where
  type PropertyType "Value" AccessControlAttributeProperty = AccessControlAttributeValueProperty
  set newValue AccessControlAttributeProperty {..}
    = AccessControlAttributeProperty {value = newValue, ..}