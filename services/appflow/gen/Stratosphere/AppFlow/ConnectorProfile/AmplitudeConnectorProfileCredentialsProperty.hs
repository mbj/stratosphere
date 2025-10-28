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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-amplitudeconnectorprofilecredentials.html>
    AmplitudeConnectorProfileCredentialsProperty {haddock_workaround_ :: (),
                                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-amplitudeconnectorprofilecredentials.html#cfn-appflow-connectorprofile-amplitudeconnectorprofilecredentials-apikey>
                                                  apiKey :: (Value Prelude.Text),
                                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-amplitudeconnectorprofilecredentials.html#cfn-appflow-connectorprofile-amplitudeconnectorprofilecredentials-secretkey>
                                                  secretKey :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAmplitudeConnectorProfileCredentialsProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> AmplitudeConnectorProfileCredentialsProperty
mkAmplitudeConnectorProfileCredentialsProperty apiKey secretKey
  = AmplitudeConnectorProfileCredentialsProperty
      {haddock_workaround_ = (), apiKey = apiKey, secretKey = secretKey}
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