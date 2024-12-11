module Stratosphere.QBusiness.Plugin.PluginAuthConfigurationProperty (
        module Exports, PluginAuthConfigurationProperty(..),
        mkPluginAuthConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QBusiness.Plugin.BasicAuthConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QBusiness.Plugin.OAuth2ClientCredentialConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data PluginAuthConfigurationProperty
  = PluginAuthConfigurationProperty {basicAuthConfiguration :: (Prelude.Maybe BasicAuthConfigurationProperty),
                                     noAuthConfiguration :: (Prelude.Maybe JSON.Object),
                                     oAuth2ClientCredentialConfiguration :: (Prelude.Maybe OAuth2ClientCredentialConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPluginAuthConfigurationProperty ::
  PluginAuthConfigurationProperty
mkPluginAuthConfigurationProperty
  = PluginAuthConfigurationProperty
      {basicAuthConfiguration = Prelude.Nothing,
       noAuthConfiguration = Prelude.Nothing,
       oAuth2ClientCredentialConfiguration = Prelude.Nothing}
instance ToResourceProperties PluginAuthConfigurationProperty where
  toResourceProperties PluginAuthConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QBusiness::Plugin.PluginAuthConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "BasicAuthConfiguration"
                              Prelude.<$> basicAuthConfiguration,
                            (JSON..=) "NoAuthConfiguration" Prelude.<$> noAuthConfiguration,
                            (JSON..=) "OAuth2ClientCredentialConfiguration"
                              Prelude.<$> oAuth2ClientCredentialConfiguration])}
instance JSON.ToJSON PluginAuthConfigurationProperty where
  toJSON PluginAuthConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "BasicAuthConfiguration"
                 Prelude.<$> basicAuthConfiguration,
               (JSON..=) "NoAuthConfiguration" Prelude.<$> noAuthConfiguration,
               (JSON..=) "OAuth2ClientCredentialConfiguration"
                 Prelude.<$> oAuth2ClientCredentialConfiguration]))
instance Property "BasicAuthConfiguration" PluginAuthConfigurationProperty where
  type PropertyType "BasicAuthConfiguration" PluginAuthConfigurationProperty = BasicAuthConfigurationProperty
  set newValue PluginAuthConfigurationProperty {..}
    = PluginAuthConfigurationProperty
        {basicAuthConfiguration = Prelude.pure newValue, ..}
instance Property "NoAuthConfiguration" PluginAuthConfigurationProperty where
  type PropertyType "NoAuthConfiguration" PluginAuthConfigurationProperty = JSON.Object
  set newValue PluginAuthConfigurationProperty {..}
    = PluginAuthConfigurationProperty
        {noAuthConfiguration = Prelude.pure newValue, ..}
instance Property "OAuth2ClientCredentialConfiguration" PluginAuthConfigurationProperty where
  type PropertyType "OAuth2ClientCredentialConfiguration" PluginAuthConfigurationProperty = OAuth2ClientCredentialConfigurationProperty
  set newValue PluginAuthConfigurationProperty {..}
    = PluginAuthConfigurationProperty
        {oAuth2ClientCredentialConfiguration = Prelude.pure newValue, ..}