module Stratosphere.VerifiedPermissions.IdentitySource.OpenIdConnectIdentityTokenConfigurationProperty (
        OpenIdConnectIdentityTokenConfigurationProperty(..),
        mkOpenIdConnectIdentityTokenConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OpenIdConnectIdentityTokenConfigurationProperty
  = OpenIdConnectIdentityTokenConfigurationProperty {clientIds :: (Prelude.Maybe (ValueList Prelude.Text)),
                                                     principalIdClaim :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOpenIdConnectIdentityTokenConfigurationProperty ::
  OpenIdConnectIdentityTokenConfigurationProperty
mkOpenIdConnectIdentityTokenConfigurationProperty
  = OpenIdConnectIdentityTokenConfigurationProperty
      {clientIds = Prelude.Nothing, principalIdClaim = Prelude.Nothing}
instance ToResourceProperties OpenIdConnectIdentityTokenConfigurationProperty where
  toResourceProperties
    OpenIdConnectIdentityTokenConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::VerifiedPermissions::IdentitySource.OpenIdConnectIdentityTokenConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ClientIds" Prelude.<$> clientIds,
                            (JSON..=) "PrincipalIdClaim" Prelude.<$> principalIdClaim])}
instance JSON.ToJSON OpenIdConnectIdentityTokenConfigurationProperty where
  toJSON OpenIdConnectIdentityTokenConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ClientIds" Prelude.<$> clientIds,
               (JSON..=) "PrincipalIdClaim" Prelude.<$> principalIdClaim]))
instance Property "ClientIds" OpenIdConnectIdentityTokenConfigurationProperty where
  type PropertyType "ClientIds" OpenIdConnectIdentityTokenConfigurationProperty = ValueList Prelude.Text
  set newValue OpenIdConnectIdentityTokenConfigurationProperty {..}
    = OpenIdConnectIdentityTokenConfigurationProperty
        {clientIds = Prelude.pure newValue, ..}
instance Property "PrincipalIdClaim" OpenIdConnectIdentityTokenConfigurationProperty where
  type PropertyType "PrincipalIdClaim" OpenIdConnectIdentityTokenConfigurationProperty = Value Prelude.Text
  set newValue OpenIdConnectIdentityTokenConfigurationProperty {..}
    = OpenIdConnectIdentityTokenConfigurationProperty
        {principalIdClaim = Prelude.pure newValue, ..}