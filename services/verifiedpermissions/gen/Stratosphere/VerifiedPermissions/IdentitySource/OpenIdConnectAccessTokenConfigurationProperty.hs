module Stratosphere.VerifiedPermissions.IdentitySource.OpenIdConnectAccessTokenConfigurationProperty (
        OpenIdConnectAccessTokenConfigurationProperty(..),
        mkOpenIdConnectAccessTokenConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OpenIdConnectAccessTokenConfigurationProperty
  = OpenIdConnectAccessTokenConfigurationProperty {audiences :: (Prelude.Maybe (ValueList Prelude.Text)),
                                                   principalIdClaim :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOpenIdConnectAccessTokenConfigurationProperty ::
  OpenIdConnectAccessTokenConfigurationProperty
mkOpenIdConnectAccessTokenConfigurationProperty
  = OpenIdConnectAccessTokenConfigurationProperty
      {audiences = Prelude.Nothing, principalIdClaim = Prelude.Nothing}
instance ToResourceProperties OpenIdConnectAccessTokenConfigurationProperty where
  toResourceProperties
    OpenIdConnectAccessTokenConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::VerifiedPermissions::IdentitySource.OpenIdConnectAccessTokenConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Audiences" Prelude.<$> audiences,
                            (JSON..=) "PrincipalIdClaim" Prelude.<$> principalIdClaim])}
instance JSON.ToJSON OpenIdConnectAccessTokenConfigurationProperty where
  toJSON OpenIdConnectAccessTokenConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Audiences" Prelude.<$> audiences,
               (JSON..=) "PrincipalIdClaim" Prelude.<$> principalIdClaim]))
instance Property "Audiences" OpenIdConnectAccessTokenConfigurationProperty where
  type PropertyType "Audiences" OpenIdConnectAccessTokenConfigurationProperty = ValueList Prelude.Text
  set newValue OpenIdConnectAccessTokenConfigurationProperty {..}
    = OpenIdConnectAccessTokenConfigurationProperty
        {audiences = Prelude.pure newValue, ..}
instance Property "PrincipalIdClaim" OpenIdConnectAccessTokenConfigurationProperty where
  type PropertyType "PrincipalIdClaim" OpenIdConnectAccessTokenConfigurationProperty = Value Prelude.Text
  set newValue OpenIdConnectAccessTokenConfigurationProperty {..}
    = OpenIdConnectAccessTokenConfigurationProperty
        {principalIdClaim = Prelude.pure newValue, ..}