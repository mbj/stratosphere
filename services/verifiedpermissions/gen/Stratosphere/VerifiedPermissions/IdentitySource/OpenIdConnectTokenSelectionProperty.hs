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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-verifiedpermissions-identitysource-openidconnecttokenselection.html>
    OpenIdConnectTokenSelectionProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-verifiedpermissions-identitysource-openidconnecttokenselection.html#cfn-verifiedpermissions-identitysource-openidconnecttokenselection-accesstokenonly>
                                         accessTokenOnly :: (Prelude.Maybe OpenIdConnectAccessTokenConfigurationProperty),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-verifiedpermissions-identitysource-openidconnecttokenselection.html#cfn-verifiedpermissions-identitysource-openidconnecttokenselection-identitytokenonly>
                                         identityTokenOnly :: (Prelude.Maybe OpenIdConnectIdentityTokenConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOpenIdConnectTokenSelectionProperty ::
  OpenIdConnectTokenSelectionProperty
mkOpenIdConnectTokenSelectionProperty
  = OpenIdConnectTokenSelectionProperty
      {haddock_workaround_ = (), accessTokenOnly = Prelude.Nothing,
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