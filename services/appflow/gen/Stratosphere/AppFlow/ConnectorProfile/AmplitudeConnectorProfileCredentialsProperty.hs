module Stratosphere.AppFlow.ConnectorProfile.AmplitudeConnectorProfileCredentialsProperty (
        AmplitudeConnectorProfileCredentialsProperty(..),
        mkAmplitudeConnectorProfileCredentialsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AmplitudeConnectorProfileCredentialsProperty
  = AmplitudeConnectorProfileCredentialsProperty {apiKey :: (Value Prelude.Text),
                                                  secretKey :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAmplitudeConnectorProfileCredentialsProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> AmplitudeConnectorProfileCredentialsProperty
mkAmplitudeConnectorProfileCredentialsProperty apiKey secretKey
  = AmplitudeConnectorProfileCredentialsProperty
      {apiKey = apiKey, secretKey = secretKey}
instance ToResourceProperties AmplitudeConnectorProfileCredentialsProperty where
  toResourceProperties
    AmplitudeConnectorProfileCredentialsProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppFlow::ConnectorProfile.AmplitudeConnectorProfileCredentials",
         supportsTags = Prelude.False,
         properties = ["ApiKey" JSON..= apiKey,
                       "SecretKey" JSON..= secretKey]}
instance JSON.ToJSON AmplitudeConnectorProfileCredentialsProperty where
  toJSON AmplitudeConnectorProfileCredentialsProperty {..}
    = JSON.object
        ["ApiKey" JSON..= apiKey, "SecretKey" JSON..= secretKey]
instance Property "ApiKey" AmplitudeConnectorProfileCredentialsProperty where
  type PropertyType "ApiKey" AmplitudeConnectorProfileCredentialsProperty = Value Prelude.Text
  set newValue AmplitudeConnectorProfileCredentialsProperty {..}
    = AmplitudeConnectorProfileCredentialsProperty
        {apiKey = newValue, ..}
instance Property "SecretKey" AmplitudeConnectorProfileCredentialsProperty where
  type PropertyType "SecretKey" AmplitudeConnectorProfileCredentialsProperty = Value Prelude.Text
  set newValue AmplitudeConnectorProfileCredentialsProperty {..}
    = AmplitudeConnectorProfileCredentialsProperty
        {secretKey = newValue, ..}