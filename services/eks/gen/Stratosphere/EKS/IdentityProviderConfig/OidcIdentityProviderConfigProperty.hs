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
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-identityproviderconfig-oidcidentityproviderconfig.html>
    OidcIdentityProviderConfigProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-identityproviderconfig-oidcidentityproviderconfig.html#cfn-eks-identityproviderconfig-oidcidentityproviderconfig-clientid>
                                        clientId :: (Value Prelude.Text),
                                        -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-identityproviderconfig-oidcidentityproviderconfig.html#cfn-eks-identityproviderconfig-oidcidentityproviderconfig-groupsclaim>
                                        groupsClaim :: (Prelude.Maybe (Value Prelude.Text)),
                                        -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-identityproviderconfig-oidcidentityproviderconfig.html#cfn-eks-identityproviderconfig-oidcidentityproviderconfig-groupsprefix>
                                        groupsPrefix :: (Prelude.Maybe (Value Prelude.Text)),
                                        -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-identityproviderconfig-oidcidentityproviderconfig.html#cfn-eks-identityproviderconfig-oidcidentityproviderconfig-issuerurl>
                                        issuerUrl :: (Value Prelude.Text),
                                        -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-identityproviderconfig-oidcidentityproviderconfig.html#cfn-eks-identityproviderconfig-oidcidentityproviderconfig-requiredclaims>
                                        requiredClaims :: (Prelude.Maybe [RequiredClaimProperty]),
                                        -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-identityproviderconfig-oidcidentityproviderconfig.html#cfn-eks-identityproviderconfig-oidcidentityproviderconfig-usernameclaim>
                                        usernameClaim :: (Prelude.Maybe (Value Prelude.Text)),
                                        -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-identityproviderconfig-oidcidentityproviderconfig.html#cfn-eks-identityproviderconfig-oidcidentityproviderconfig-usernameprefix>
                                        usernamePrefix :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
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