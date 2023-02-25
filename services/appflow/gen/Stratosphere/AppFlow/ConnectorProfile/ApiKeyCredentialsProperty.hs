module Stratosphere.AppFlow.ConnectorProfile.ApiKeyCredentialsProperty (
        ApiKeyCredentialsProperty(..), mkApiKeyCredentialsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ApiKeyCredentialsProperty
  = ApiKeyCredentialsProperty {apiKey :: (Value Prelude.Text),
                               apiSecretKey :: (Prelude.Maybe (Value Prelude.Text))}
mkApiKeyCredentialsProperty ::
  Value Prelude.Text -> ApiKeyCredentialsProperty
mkApiKeyCredentialsProperty apiKey
  = ApiKeyCredentialsProperty
      {apiKey = apiKey, apiSecretKey = Prelude.Nothing}
instance ToResourceProperties ApiKeyCredentialsProperty where
  toResourceProperties ApiKeyCredentialsProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppFlow::ConnectorProfile.ApiKeyCredentials",
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