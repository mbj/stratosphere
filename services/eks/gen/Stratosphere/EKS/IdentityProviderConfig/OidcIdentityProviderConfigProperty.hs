module Stratosphere.EKS.IdentityProviderConfig.OidcIdentityProviderConfigProperty (
        module Exports, OidcIdentityProviderConfigProperty(..),
        mkOidcIdentityProviderConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EKS.IdentityProviderConfig.RequiredClaimProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OidcIdentityProviderConfigProperty
  = OidcIdentityProviderConfigProperty {clientId :: (Value Prelude.Text),
                                        groupsClaim :: (Prelude.Maybe (Value Prelude.Text)),
                                        groupsPrefix :: (Prelude.Maybe (Value Prelude.Text)),
                                        issuerUrl :: (Value Prelude.Text),
                                        requiredClaims :: (Prelude.Maybe [RequiredClaimProperty]),
                                        usernameClaim :: (Prelude.Maybe (Value Prelude.Text)),
                                        usernamePrefix :: (Prelude.Maybe (Value Prelude.Text))}
mkOidcIdentityProviderConfigProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> OidcIdentityProviderConfigProperty
mkOidcIdentityProviderConfigProperty clientId issuerUrl
  = OidcIdentityProviderConfigProperty
      {clientId = clientId, issuerUrl = issuerUrl,
       groupsClaim = Prelude.Nothing, groupsPrefix = Prelude.Nothing,
       requiredClaims = Prelude.Nothing, usernameClaim = Prelude.Nothing,
       usernamePrefix = Prelude.Nothing}
instance ToResourceProperties OidcIdentityProviderConfigProperty where
  toResourceProperties OidcIdentityProviderConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::EKS::IdentityProviderConfig.OidcIdentityProviderConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ClientId" JSON..= clientId, "IssuerUrl" JSON..= issuerUrl]
                           (Prelude.catMaybes
                              [(JSON..=) "GroupsClaim" Prelude.<$> groupsClaim,
                               (JSON..=) "GroupsPrefix" Prelude.<$> groupsPrefix,
                               (JSON..=) "RequiredClaims" Prelude.<$> requiredClaims,
                               (JSON..=) "UsernameClaim" Prelude.<$> usernameClaim,
                               (JSON..=) "UsernamePrefix" Prelude.<$> usernamePrefix]))}
instance JSON.ToJSON OidcIdentityProviderConfigProperty where
  toJSON OidcIdentityProviderConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ClientId" JSON..= clientId, "IssuerUrl" JSON..= issuerUrl]
              (Prelude.catMaybes
                 [(JSON..=) "GroupsClaim" Prelude.<$> groupsClaim,
                  (JSON..=) "GroupsPrefix" Prelude.<$> groupsPrefix,
                  (JSON..=) "RequiredClaims" Prelude.<$> requiredClaims,
                  (JSON..=) "UsernameClaim" Prelude.<$> usernameClaim,
                  (JSON..=) "UsernamePrefix" Prelude.<$> usernamePrefix])))
instance Property "ClientId" OidcIdentityProviderConfigProperty where
  type PropertyType "ClientId" OidcIdentityProviderConfigProperty = Value Prelude.Text
  set newValue OidcIdentityProviderConfigProperty {..}
    = OidcIdentityProviderConfigProperty {clientId = newValue, ..}
instance Property "GroupsClaim" OidcIdentityProviderConfigProperty where
  type PropertyType "GroupsClaim" OidcIdentityProviderConfigProperty = Value Prelude.Text
  set newValue OidcIdentityProviderConfigProperty {..}
    = OidcIdentityProviderConfigProperty
        {groupsClaim = Prelude.pure newValue, ..}
instance Property "GroupsPrefix" OidcIdentityProviderConfigProperty where
  type PropertyType "GroupsPrefix" OidcIdentityProviderConfigProperty = Value Prelude.Text
  set newValue OidcIdentityProviderConfigProperty {..}
    = OidcIdentityProviderConfigProperty
        {groupsPrefix = Prelude.pure newValue, ..}
instance Property "IssuerUrl" OidcIdentityProviderConfigProperty where
  type PropertyType "IssuerUrl" OidcIdentityProviderConfigProperty = Value Prelude.Text
  set newValue OidcIdentityProviderConfigProperty {..}
    = OidcIdentityProviderConfigProperty {issuerUrl = newValue, ..}
instance Property "RequiredClaims" OidcIdentityProviderConfigProperty where
  type PropertyType "RequiredClaims" OidcIdentityProviderConfigProperty = [RequiredClaimProperty]
  set newValue OidcIdentityProviderConfigProperty {..}
    = OidcIdentityProviderConfigProperty
        {requiredClaims = Prelude.pure newValue, ..}
instance Property "UsernameClaim" OidcIdentityProviderConfigProperty where
  type PropertyType "UsernameClaim" OidcIdentityProviderConfigProperty = Value Prelude.Text
  set newValue OidcIdentityProviderConfigProperty {..}
    = OidcIdentityProviderConfigProperty
        {usernameClaim = Prelude.pure newValue, ..}
instance Property "UsernamePrefix" OidcIdentityProviderConfigProperty where
  type PropertyType "UsernamePrefix" OidcIdentityProviderConfigProperty = Value Prelude.Text
  set newValue OidcIdentityProviderConfigProperty {..}
    = OidcIdentityProviderConfigProperty
        {usernamePrefix = Prelude.pure newValue, ..}