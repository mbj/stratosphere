module Stratosphere.Bedrock.DataSource.SalesforceSourceConfigurationProperty (
        SalesforceSourceConfigurationProperty(..),
        mkSalesforceSourceConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SalesforceSourceConfigurationProperty
  = SalesforceSourceConfigurationProperty {authType :: (Value Prelude.Text),
                                           credentialsSecretArn :: (Value Prelude.Text),
                                           hostUrl :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSalesforceSourceConfigurationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> SalesforceSourceConfigurationProperty
mkSalesforceSourceConfigurationProperty
  authType
  credentialsSecretArn
  hostUrl
  = SalesforceSourceConfigurationProperty
      {authType = authType, credentialsSecretArn = credentialsSecretArn,
       hostUrl = hostUrl}
instance ToResourceProperties SalesforceSourceConfigurationProperty where
  toResourceProperties SalesforceSourceConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::DataSource.SalesforceSourceConfiguration",
         supportsTags = Prelude.False,
         properties = ["AuthType" JSON..= authType,
                       "CredentialsSecretArn" JSON..= credentialsSecretArn,
                       "HostUrl" JSON..= hostUrl]}
instance JSON.ToJSON SalesforceSourceConfigurationProperty where
  toJSON SalesforceSourceConfigurationProperty {..}
    = JSON.object
        ["AuthType" JSON..= authType,
         "CredentialsSecretArn" JSON..= credentialsSecretArn,
         "HostUrl" JSON..= hostUrl]
instance Property "AuthType" SalesforceSourceConfigurationProperty where
  type PropertyType "AuthType" SalesforceSourceConfigurationProperty = Value Prelude.Text
  set newValue SalesforceSourceConfigurationProperty {..}
    = SalesforceSourceConfigurationProperty {authType = newValue, ..}
instance Property "CredentialsSecretArn" SalesforceSourceConfigurationProperty where
  type PropertyType "CredentialsSecretArn" SalesforceSourceConfigurationProperty = Value Prelude.Text
  set newValue SalesforceSourceConfigurationProperty {..}
    = SalesforceSourceConfigurationProperty
        {credentialsSecretArn = newValue, ..}
instance Property "HostUrl" SalesforceSourceConfigurationProperty where
  type PropertyType "HostUrl" SalesforceSourceConfigurationProperty = Value Prelude.Text
  set newValue SalesforceSourceConfigurationProperty {..}
    = SalesforceSourceConfigurationProperty {hostUrl = newValue, ..}