module Stratosphere.QBusiness.Plugin.OAuth2ClientCredentialConfigurationProperty (
        OAuth2ClientCredentialConfigurationProperty(..),
        mkOAuth2ClientCredentialConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OAuth2ClientCredentialConfigurationProperty
  = OAuth2ClientCredentialConfigurationProperty {roleArn :: (Value Prelude.Text),
                                                 secretArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOAuth2ClientCredentialConfigurationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> OAuth2ClientCredentialConfigurationProperty
mkOAuth2ClientCredentialConfigurationProperty roleArn secretArn
  = OAuth2ClientCredentialConfigurationProperty
      {roleArn = roleArn, secretArn = secretArn}
instance ToResourceProperties OAuth2ClientCredentialConfigurationProperty where
  toResourceProperties
    OAuth2ClientCredentialConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QBusiness::Plugin.OAuth2ClientCredentialConfiguration",
         supportsTags = Prelude.False,
         properties = ["RoleArn" JSON..= roleArn,
                       "SecretArn" JSON..= secretArn]}
instance JSON.ToJSON OAuth2ClientCredentialConfigurationProperty where
  toJSON OAuth2ClientCredentialConfigurationProperty {..}
    = JSON.object
        ["RoleArn" JSON..= roleArn, "SecretArn" JSON..= secretArn]
instance Property "RoleArn" OAuth2ClientCredentialConfigurationProperty where
  type PropertyType "RoleArn" OAuth2ClientCredentialConfigurationProperty = Value Prelude.Text
  set newValue OAuth2ClientCredentialConfigurationProperty {..}
    = OAuth2ClientCredentialConfigurationProperty
        {roleArn = newValue, ..}
instance Property "SecretArn" OAuth2ClientCredentialConfigurationProperty where
  type PropertyType "SecretArn" OAuth2ClientCredentialConfigurationProperty = Value Prelude.Text
  set newValue OAuth2ClientCredentialConfigurationProperty {..}
    = OAuth2ClientCredentialConfigurationProperty
        {secretArn = newValue, ..}