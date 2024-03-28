module Stratosphere.VerifiedPermissions.IdentitySource.IdentitySourceConfigurationProperty (
        module Exports, IdentitySourceConfigurationProperty(..),
        mkIdentitySourceConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.VerifiedPermissions.IdentitySource.CognitoUserPoolConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data IdentitySourceConfigurationProperty
  = IdentitySourceConfigurationProperty {cognitoUserPoolConfiguration :: CognitoUserPoolConfigurationProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIdentitySourceConfigurationProperty ::
  CognitoUserPoolConfigurationProperty
  -> IdentitySourceConfigurationProperty
mkIdentitySourceConfigurationProperty cognitoUserPoolConfiguration
  = IdentitySourceConfigurationProperty
      {cognitoUserPoolConfiguration = cognitoUserPoolConfiguration}
instance ToResourceProperties IdentitySourceConfigurationProperty where
  toResourceProperties IdentitySourceConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::VerifiedPermissions::IdentitySource.IdentitySourceConfiguration",
         supportsTags = Prelude.False,
         properties = ["CognitoUserPoolConfiguration"
                         JSON..= cognitoUserPoolConfiguration]}
instance JSON.ToJSON IdentitySourceConfigurationProperty where
  toJSON IdentitySourceConfigurationProperty {..}
    = JSON.object
        ["CognitoUserPoolConfiguration"
           JSON..= cognitoUserPoolConfiguration]
instance Property "CognitoUserPoolConfiguration" IdentitySourceConfigurationProperty where
  type PropertyType "CognitoUserPoolConfiguration" IdentitySourceConfigurationProperty = CognitoUserPoolConfigurationProperty
  set newValue IdentitySourceConfigurationProperty {}
    = IdentitySourceConfigurationProperty
        {cognitoUserPoolConfiguration = newValue, ..}