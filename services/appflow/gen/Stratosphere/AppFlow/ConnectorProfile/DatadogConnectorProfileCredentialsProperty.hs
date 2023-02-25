module Stratosphere.AppFlow.ConnectorProfile.DatadogConnectorProfileCredentialsProperty (
        DatadogConnectorProfileCredentialsProperty(..),
        mkDatadogConnectorProfileCredentialsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DatadogConnectorProfileCredentialsProperty
  = DatadogConnectorProfileCredentialsProperty {apiKey :: (Value Prelude.Text),
                                                applicationKey :: (Value Prelude.Text)}
mkDatadogConnectorProfileCredentialsProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> DatadogConnectorProfileCredentialsProperty
mkDatadogConnectorProfileCredentialsProperty apiKey applicationKey
  = DatadogConnectorProfileCredentialsProperty
      {apiKey = apiKey, applicationKey = applicationKey}
instance ToResourceProperties DatadogConnectorProfileCredentialsProperty where
  toResourceProperties
    DatadogConnectorProfileCredentialsProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppFlow::ConnectorProfile.DatadogConnectorProfileCredentials",
         properties = ["ApiKey" JSON..= apiKey,
                       "ApplicationKey" JSON..= applicationKey]}
instance JSON.ToJSON DatadogConnectorProfileCredentialsProperty where
  toJSON DatadogConnectorProfileCredentialsProperty {..}
    = JSON.object
        ["ApiKey" JSON..= apiKey, "ApplicationKey" JSON..= applicationKey]
instance Property "ApiKey" DatadogConnectorProfileCredentialsProperty where
  type PropertyType "ApiKey" DatadogConnectorProfileCredentialsProperty = Value Prelude.Text
  set newValue DatadogConnectorProfileCredentialsProperty {..}
    = DatadogConnectorProfileCredentialsProperty
        {apiKey = newValue, ..}
instance Property "ApplicationKey" DatadogConnectorProfileCredentialsProperty where
  type PropertyType "ApplicationKey" DatadogConnectorProfileCredentialsProperty = Value Prelude.Text
  set newValue DatadogConnectorProfileCredentialsProperty {..}
    = DatadogConnectorProfileCredentialsProperty
        {applicationKey = newValue, ..}