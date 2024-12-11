module Stratosphere.VerifiedPermissions.IdentitySource.OpenIdConnectTokenSelectionProperty (
        module Exports, OpenIdConnectTokenSelectionProperty(..),
        mkOpenIdConnectTokenSelectionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.VerifiedPermissions.IdentitySource.OpenIdConnectAccessTokenConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.VerifiedPermissions.IdentitySource.OpenIdConnectIdentityTokenConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data OpenIdConnectTokenSelectionProperty
  = OpenIdConnectTokenSelectionProperty {accessTokenOnly :: (Prelude.Maybe OpenIdConnectAccessTokenConfigurationProperty),
                                         identityTokenOnly :: (Prelude.Maybe OpenIdConnectIdentityTokenConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOpenIdConnectTokenSelectionProperty ::
  OpenIdConnectTokenSelectionProperty
mkOpenIdConnectTokenSelectionProperty
  = OpenIdConnectTokenSelectionProperty
      {accessTokenOnly = Prelude.Nothing,
       identityTokenOnly = Prelude.Nothing}
instance ToResourceProperties OpenIdConnectTokenSelectionProperty where
  toResourceProperties OpenIdConnectTokenSelectionProperty {..}
    = ResourceProperties
        {awsType = "AWS::VerifiedPermissions::IdentitySource.OpenIdConnectTokenSelection",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AccessTokenOnly" Prelude.<$> accessTokenOnly,
                            (JSON..=) "IdentityTokenOnly" Prelude.<$> identityTokenOnly])}
instance JSON.ToJSON OpenIdConnectTokenSelectionProperty where
  toJSON OpenIdConnectTokenSelectionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AccessTokenOnly" Prelude.<$> accessTokenOnly,
               (JSON..=) "IdentityTokenOnly" Prelude.<$> identityTokenOnly]))
instance Property "AccessTokenOnly" OpenIdConnectTokenSelectionProperty where
  type PropertyType "AccessTokenOnly" OpenIdConnectTokenSelectionProperty = OpenIdConnectAccessTokenConfigurationProperty
  set newValue OpenIdConnectTokenSelectionProperty {..}
    = OpenIdConnectTokenSelectionProperty
        {accessTokenOnly = Prelude.pure newValue, ..}
instance Property "IdentityTokenOnly" OpenIdConnectTokenSelectionProperty where
  type PropertyType "IdentityTokenOnly" OpenIdConnectTokenSelectionProperty = OpenIdConnectIdentityTokenConfigurationProperty
  set newValue OpenIdConnectTokenSelectionProperty {..}
    = OpenIdConnectTokenSelectionProperty
        {identityTokenOnly = Prelude.pure newValue, ..}