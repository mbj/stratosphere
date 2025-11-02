module Stratosphere.QBusiness.WebExperience.IdentityProviderConfigurationProperty (
        module Exports, IdentityProviderConfigurationProperty(..),
        mkIdentityProviderConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QBusiness.WebExperience.OpenIDConnectProviderConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QBusiness.WebExperience.SamlProviderConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data IdentityProviderConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qbusiness-webexperience-identityproviderconfiguration.html>
    IdentityProviderConfigurationProperty {haddock_workaround_ :: (),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qbusiness-webexperience-identityproviderconfiguration.html#cfn-qbusiness-webexperience-identityproviderconfiguration-openidconnectconfiguration>
                                           openIDConnectConfiguration :: (Prelude.Maybe OpenIDConnectProviderConfigurationProperty),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qbusiness-webexperience-identityproviderconfiguration.html#cfn-qbusiness-webexperience-identityproviderconfiguration-samlconfiguration>
                                           samlConfiguration :: (Prelude.Maybe SamlProviderConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIdentityProviderConfigurationProperty ::
  IdentityProviderConfigurationProperty
mkIdentityProviderConfigurationProperty
  = IdentityProviderConfigurationProperty
      {haddock_workaround_ = (),
       openIDConnectConfiguration = Prelude.Nothing,
       samlConfiguration = Prelude.Nothing}
instance ToResourceProperties IdentityProviderConfigurationProperty where
  toResourceProperties IdentityProviderConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QBusiness::WebExperience.IdentityProviderConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "OpenIDConnectConfiguration"
                              Prelude.<$> openIDConnectConfiguration,
                            (JSON..=) "SamlConfiguration" Prelude.<$> samlConfiguration])}
instance JSON.ToJSON IdentityProviderConfigurationProperty where
  toJSON IdentityProviderConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "OpenIDConnectConfiguration"
                 Prelude.<$> openIDConnectConfiguration,
               (JSON..=) "SamlConfiguration" Prelude.<$> samlConfiguration]))
instance Property "OpenIDConnectConfiguration" IdentityProviderConfigurationProperty where
  type PropertyType "OpenIDConnectConfiguration" IdentityProviderConfigurationProperty = OpenIDConnectProviderConfigurationProperty
  set newValue IdentityProviderConfigurationProperty {..}
    = IdentityProviderConfigurationProperty
        {openIDConnectConfiguration = Prelude.pure newValue, ..}
instance Property "SamlConfiguration" IdentityProviderConfigurationProperty where
  type PropertyType "SamlConfiguration" IdentityProviderConfigurationProperty = SamlProviderConfigurationProperty
  set newValue IdentityProviderConfigurationProperty {..}
    = IdentityProviderConfigurationProperty
        {samlConfiguration = Prelude.pure newValue, ..}