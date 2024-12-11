module Stratosphere.VerifiedPermissions.IdentitySource.IdentitySourceConfigurationProperty (
        module Exports, IdentitySourceConfigurationProperty(..),
        mkIdentitySourceConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.VerifiedPermissions.IdentitySource.CognitoUserPoolConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.VerifiedPermissions.IdentitySource.OpenIdConnectConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data IdentitySourceConfigurationProperty
  = IdentitySourceConfigurationProperty {cognitoUserPoolConfiguration :: (Prelude.Maybe CognitoUserPoolConfigurationProperty),
                                         openIdConnectConfiguration :: (Prelude.Maybe OpenIdConnectConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIdentitySourceConfigurationProperty ::
  IdentitySourceConfigurationProperty
mkIdentitySourceConfigurationProperty
  = IdentitySourceConfigurationProperty
      {cognitoUserPoolConfiguration = Prelude.Nothing,
       openIdConnectConfiguration = Prelude.Nothing}
instance ToResourceProperties IdentitySourceConfigurationProperty where
  toResourceProperties IdentitySourceConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::VerifiedPermissions::IdentitySource.IdentitySourceConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CognitoUserPoolConfiguration"
                              Prelude.<$> cognitoUserPoolConfiguration,
                            (JSON..=) "OpenIdConnectConfiguration"
                              Prelude.<$> openIdConnectConfiguration])}
instance JSON.ToJSON IdentitySourceConfigurationProperty where
  toJSON IdentitySourceConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CognitoUserPoolConfiguration"
                 Prelude.<$> cognitoUserPoolConfiguration,
               (JSON..=) "OpenIdConnectConfiguration"
                 Prelude.<$> openIdConnectConfiguration]))
instance Property "CognitoUserPoolConfiguration" IdentitySourceConfigurationProperty where
  type PropertyType "CognitoUserPoolConfiguration" IdentitySourceConfigurationProperty = CognitoUserPoolConfigurationProperty
  set newValue IdentitySourceConfigurationProperty {..}
    = IdentitySourceConfigurationProperty
        {cognitoUserPoolConfiguration = Prelude.pure newValue, ..}
instance Property "OpenIdConnectConfiguration" IdentitySourceConfigurationProperty where
  type PropertyType "OpenIdConnectConfiguration" IdentitySourceConfigurationProperty = OpenIdConnectConfigurationProperty
  set newValue IdentitySourceConfigurationProperty {..}
    = IdentitySourceConfigurationProperty
        {openIdConnectConfiguration = Prelude.pure newValue, ..}