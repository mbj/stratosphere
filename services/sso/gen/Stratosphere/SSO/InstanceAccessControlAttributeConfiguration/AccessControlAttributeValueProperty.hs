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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sso-instanceaccesscontrolattributeconfiguration-accesscontrolattributevalue.html>
    AccessControlAttributeValueProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sso-instanceaccesscontrolattributeconfiguration-accesscontrolattributevalue.html#cfn-sso-instanceaccesscontrolattributeconfiguration-accesscontrolattributevalue-source>
                                         source :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAccessControlAttributeValueProperty ::
  ValueList Prelude.Text -> AccessControlAttributeValueProperty
mkAccessControlAttributeValueProperty source
  = AccessControlAttributeValueProperty
      {haddock_workaround_ = (), source = source}
instance ToResourceProperties AccessControlAttributeValueProperty where
  toResourceProperties AccessControlAttributeValueProperty {..}
    = ResourceProperties
        {awsType = "AWS::SSO::InstanceAccessControlAttributeConfiguration.AccessControlAttributeValue",
         supportsTags = Prelude.False,
         properties = ["Source" JSON..= source]}
instance JSON.ToJSON AccessControlAttributeValueProperty where
  toJSON AccessControlAttributeValueProperty {..}
    = JSON.object ["Source" JSON..= source]
instance Property "Source" AccessControlAttributeValueProperty where
  type PropertyType "Source" AccessControlAttributeValueProperty = ValueList Prelude.Text
  set newValue AccessControlAttributeValueProperty {..}
    = AccessControlAttributeValueProperty {source = newValue, ..}