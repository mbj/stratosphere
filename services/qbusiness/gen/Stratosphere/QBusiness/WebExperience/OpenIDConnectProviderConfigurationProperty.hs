module Stratosphere.QBusiness.WebExperience.OpenIDConnectProviderConfigurationProperty (
        OpenIDConnectProviderConfigurationProperty(..),
        mkOpenIDConnectProviderConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OpenIDConnectProviderConfigurationProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qbusiness-webexperience-openidconnectproviderconfiguration.html>
    OpenIDConnectProviderConfigurationProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qbusiness-webexperience-openidconnectproviderconfiguration.html#cfn-qbusiness-webexperience-openidconnectproviderconfiguration-secretsarn>
                                                secretsArn :: (Value Prelude.Text),
                                                -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qbusiness-webexperience-openidconnectproviderconfiguration.html#cfn-qbusiness-webexperience-openidconnectproviderconfiguration-secretsrole>
                                                secretsRole :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOpenIDConnectProviderConfigurationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> OpenIDConnectProviderConfigurationProperty
mkOpenIDConnectProviderConfigurationProperty secretsArn secretsRole
  = OpenIDConnectProviderConfigurationProperty
      {secretsArn = secretsArn, secretsRole = secretsRole}
instance ToResourceProperties OpenIDConnectProviderConfigurationProperty where
  toResourceProperties
    OpenIDConnectProviderConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QBusiness::WebExperience.OpenIDConnectProviderConfiguration",
         supportsTags = Prelude.False,
         properties = ["SecretsArn" JSON..= secretsArn,
                       "SecretsRole" JSON..= secretsRole]}
instance JSON.ToJSON OpenIDConnectProviderConfigurationProperty where
  toJSON OpenIDConnectProviderConfigurationProperty {..}
    = JSON.object
        ["SecretsArn" JSON..= secretsArn,
         "SecretsRole" JSON..= secretsRole]
instance Property "SecretsArn" OpenIDConnectProviderConfigurationProperty where
  type PropertyType "SecretsArn" OpenIDConnectProviderConfigurationProperty = Value Prelude.Text
  set newValue OpenIDConnectProviderConfigurationProperty {..}
    = OpenIDConnectProviderConfigurationProperty
        {secretsArn = newValue, ..}
instance Property "SecretsRole" OpenIDConnectProviderConfigurationProperty where
  type PropertyType "SecretsRole" OpenIDConnectProviderConfigurationProperty = Value Prelude.Text
  set newValue OpenIDConnectProviderConfigurationProperty {..}
    = OpenIDConnectProviderConfigurationProperty
        {secretsRole = newValue, ..}