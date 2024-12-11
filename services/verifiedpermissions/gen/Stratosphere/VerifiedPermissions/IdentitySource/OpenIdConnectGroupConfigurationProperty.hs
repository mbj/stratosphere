module Stratosphere.VerifiedPermissions.IdentitySource.OpenIdConnectGroupConfigurationProperty (
        OpenIdConnectGroupConfigurationProperty(..),
        mkOpenIdConnectGroupConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OpenIdConnectGroupConfigurationProperty
  = OpenIdConnectGroupConfigurationProperty {groupClaim :: (Value Prelude.Text),
                                             groupEntityType :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOpenIdConnectGroupConfigurationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> OpenIdConnectGroupConfigurationProperty
mkOpenIdConnectGroupConfigurationProperty
  groupClaim
  groupEntityType
  = OpenIdConnectGroupConfigurationProperty
      {groupClaim = groupClaim, groupEntityType = groupEntityType}
instance ToResourceProperties OpenIdConnectGroupConfigurationProperty where
  toResourceProperties OpenIdConnectGroupConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::VerifiedPermissions::IdentitySource.OpenIdConnectGroupConfiguration",
         supportsTags = Prelude.False,
         properties = ["GroupClaim" JSON..= groupClaim,
                       "GroupEntityType" JSON..= groupEntityType]}
instance JSON.ToJSON OpenIdConnectGroupConfigurationProperty where
  toJSON OpenIdConnectGroupConfigurationProperty {..}
    = JSON.object
        ["GroupClaim" JSON..= groupClaim,
         "GroupEntityType" JSON..= groupEntityType]
instance Property "GroupClaim" OpenIdConnectGroupConfigurationProperty where
  type PropertyType "GroupClaim" OpenIdConnectGroupConfigurationProperty = Value Prelude.Text
  set newValue OpenIdConnectGroupConfigurationProperty {..}
    = OpenIdConnectGroupConfigurationProperty
        {groupClaim = newValue, ..}
instance Property "GroupEntityType" OpenIdConnectGroupConfigurationProperty where
  type PropertyType "GroupEntityType" OpenIdConnectGroupConfigurationProperty = Value Prelude.Text
  set newValue OpenIdConnectGroupConfigurationProperty {..}
    = OpenIdConnectGroupConfigurationProperty
        {groupEntityType = newValue, ..}