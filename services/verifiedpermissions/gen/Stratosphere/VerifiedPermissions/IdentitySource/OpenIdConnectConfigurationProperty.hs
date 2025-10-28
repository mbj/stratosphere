module Stratosphere.VerifiedPermissions.IdentitySource.OpenIdConnectConfigurationProperty (
        module Exports, OpenIdConnectConfigurationProperty(..),
        mkOpenIdConnectConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.VerifiedPermissions.IdentitySource.OpenIdConnectGroupConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.VerifiedPermissions.IdentitySource.OpenIdConnectTokenSelectionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OpenIdConnectConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-verifiedpermissions-identitysource-openidconnectconfiguration.html>
    OpenIdConnectConfigurationProperty {haddock_workaround_ :: (),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-verifiedpermissions-identitysource-openidconnectconfiguration.html#cfn-verifiedpermissions-identitysource-openidconnectconfiguration-entityidprefix>
                                        entityIdPrefix :: (Prelude.Maybe (Value Prelude.Text)),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-verifiedpermissions-identitysource-openidconnectconfiguration.html#cfn-verifiedpermissions-identitysource-openidconnectconfiguration-groupconfiguration>
                                        groupConfiguration :: (Prelude.Maybe OpenIdConnectGroupConfigurationProperty),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-verifiedpermissions-identitysource-openidconnectconfiguration.html#cfn-verifiedpermissions-identitysource-openidconnectconfiguration-issuer>
                                        issuer :: (Value Prelude.Text),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-verifiedpermissions-identitysource-openidconnectconfiguration.html#cfn-verifiedpermissions-identitysource-openidconnectconfiguration-tokenselection>
                                        tokenSelection :: OpenIdConnectTokenSelectionProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOpenIdConnectConfigurationProperty ::
  Value Prelude.Text
  -> OpenIdConnectTokenSelectionProperty
     -> OpenIdConnectConfigurationProperty
mkOpenIdConnectConfigurationProperty issuer tokenSelection
  = OpenIdConnectConfigurationProperty
      {haddock_workaround_ = (), issuer = issuer,
       tokenSelection = tokenSelection, entityIdPrefix = Prelude.Nothing,
       groupConfiguration = Prelude.Nothing}
instance ToResourceProperties OpenIdConnectConfigurationProperty where
  toResourceProperties OpenIdConnectConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::VerifiedPermissions::IdentitySource.OpenIdConnectConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Issuer" JSON..= issuer, "TokenSelection" JSON..= tokenSelection]
                           (Prelude.catMaybes
                              [(JSON..=) "EntityIdPrefix" Prelude.<$> entityIdPrefix,
                               (JSON..=) "GroupConfiguration" Prelude.<$> groupConfiguration]))}
instance JSON.ToJSON OpenIdConnectConfigurationProperty where
  toJSON OpenIdConnectConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Issuer" JSON..= issuer, "TokenSelection" JSON..= tokenSelection]
              (Prelude.catMaybes
                 [(JSON..=) "EntityIdPrefix" Prelude.<$> entityIdPrefix,
                  (JSON..=) "GroupConfiguration" Prelude.<$> groupConfiguration])))
instance Property "EntityIdPrefix" OpenIdConnectConfigurationProperty where
  type PropertyType "EntityIdPrefix" OpenIdConnectConfigurationProperty = Value Prelude.Text
  set newValue OpenIdConnectConfigurationProperty {..}
    = OpenIdConnectConfigurationProperty
        {entityIdPrefix = Prelude.pure newValue, ..}
instance Property "GroupConfiguration" OpenIdConnectConfigurationProperty where
  type PropertyType "GroupConfiguration" OpenIdConnectConfigurationProperty = OpenIdConnectGroupConfigurationProperty
  set newValue OpenIdConnectConfigurationProperty {..}
    = OpenIdConnectConfigurationProperty
        {groupConfiguration = Prelude.pure newValue, ..}
instance Property "Issuer" OpenIdConnectConfigurationProperty where
  type PropertyType "Issuer" OpenIdConnectConfigurationProperty = Value Prelude.Text
  set newValue OpenIdConnectConfigurationProperty {..}
    = OpenIdConnectConfigurationProperty {issuer = newValue, ..}
instance Property "TokenSelection" OpenIdConnectConfigurationProperty where
  type PropertyType "TokenSelection" OpenIdConnectConfigurationProperty = OpenIdConnectTokenSelectionProperty
  set newValue OpenIdConnectConfigurationProperty {..}
    = OpenIdConnectConfigurationProperty
        {tokenSelection = newValue, ..}