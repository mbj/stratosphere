module Stratosphere.AppFlow.ConnectorProfile.ApiKeyCredentialsProperty (
        ApiKeyCredentialsProperty(..), mkApiKeyCredentialsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ApiKeyCredentialsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-apikeycredentials.html>
    ApiKeyCredentialsProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-apikeycredentials.html#cfn-appflow-connectorprofile-apikeycredentials-apikey>
                               apiKey :: (Value Prelude.Text),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-apikeycredentials.html#cfn-appflow-connectorprofile-apikeycredentials-apisecretkey>
                               apiSecretKey :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkApiKeyCredentialsProperty ::
  Value Prelude.Text -> ApiKeyCredentialsProperty
mkApiKeyCredentialsProperty apiKey
  = ApiKeyCredentialsProperty
      {haddock_workaround_ = (), apiKey = apiKey,
       apiSecretKey = Prelude.Nothing}
instance ToResourceProperties ApiKeyCredentialsProperty where
  toResourceProperties ApiKeyCredentialsProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppFlow::ConnectorProfile.ApiKeyCredentials",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ApiKey" JSON..= apiKey]
                           (Prelude.catMaybes
                              [(JSON..=) "ApiSecretKey" Prelude.<$> apiSecretKey]))}
instance JSON.ToJSON ApiKeyCredentialsProperty where
  toJSON ApiKeyCredentialsProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ApiKey" JSON..= apiKey]
              (Prelude.catMaybes
                 [(JSON..=) "ApiSecretKey" Prelude.<$> apiSecretKey])))
instance Property "ApiKey" ApiKeyCredentialsProperty where
  type PropertyType "ApiKey" ApiKeyCredentialsProperty = Value Prelude.Text
  set newValue ApiKeyCredentialsProperty {..}
    = ApiKeyCredentialsProperty {apiKey = newValue, ..}
instance Property "ApiSecretKey" ApiKeyCredentialsProperty where
  type PropertyType "ApiSecretKey" ApiKeyCredentialsProperty = Value Prelude.Text
  set newValue ApiKeyCredentialsProperty {..}
    = ApiKeyCredentialsProperty
        {apiSecretKey = Prelude.pure newValue, ..}