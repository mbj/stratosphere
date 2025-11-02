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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-verifiedpermissions-identitysource-openidconnectidentitytokenconfiguration.html>
    OpenIdConnectIdentityTokenConfigurationProperty {haddock_workaround_ :: (),
                                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-verifiedpermissions-identitysource-openidconnectidentitytokenconfiguration.html#cfn-verifiedpermissions-identitysource-openidconnectidentitytokenconfiguration-clientids>
                                                     clientIds :: (Prelude.Maybe (ValueList Prelude.Text)),
                                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-verifiedpermissions-identitysource-openidconnectidentitytokenconfiguration.html#cfn-verifiedpermissions-identitysource-openidconnectidentitytokenconfiguration-principalidclaim>
                                                     principalIdClaim :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOpenIdConnectIdentityTokenConfigurationProperty ::
  OpenIdConnectIdentityTokenConfigurationProperty
mkOpenIdConnectIdentityTokenConfigurationProperty
  = OpenIdConnectIdentityTokenConfigurationProperty
      {haddock_workaround_ = (), clientIds = Prelude.Nothing,
       principalIdClaim = Prelude.Nothing}
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