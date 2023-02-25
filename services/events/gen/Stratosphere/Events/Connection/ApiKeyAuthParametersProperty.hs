module Stratosphere.Events.Connection.ApiKeyAuthParametersProperty (
        ApiKeyAuthParametersProperty(..), mkApiKeyAuthParametersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ApiKeyAuthParametersProperty
  = ApiKeyAuthParametersProperty {apiKeyName :: (Value Prelude.Text),
                                  apiKeyValue :: (Value Prelude.Text)}
mkApiKeyAuthParametersProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> ApiKeyAuthParametersProperty
mkApiKeyAuthParametersProperty apiKeyName apiKeyValue
  = ApiKeyAuthParametersProperty
      {apiKeyName = apiKeyName, apiKeyValue = apiKeyValue}
instance ToResourceProperties ApiKeyAuthParametersProperty where
  toResourceProperties ApiKeyAuthParametersProperty {..}
    = ResourceProperties
        {awsType = "AWS::Events::Connection.ApiKeyAuthParameters",
         properties = ["ApiKeyName" JSON..= apiKeyName,
                       "ApiKeyValue" JSON..= apiKeyValue]}
instance JSON.ToJSON ApiKeyAuthParametersProperty where
  toJSON ApiKeyAuthParametersProperty {..}
    = JSON.object
        ["ApiKeyName" JSON..= apiKeyName,
         "ApiKeyValue" JSON..= apiKeyValue]
instance Property "ApiKeyName" ApiKeyAuthParametersProperty where
  type PropertyType "ApiKeyName" ApiKeyAuthParametersProperty = Value Prelude.Text
  set newValue ApiKeyAuthParametersProperty {..}
    = ApiKeyAuthParametersProperty {apiKeyName = newValue, ..}
instance Property "ApiKeyValue" ApiKeyAuthParametersProperty where
  type PropertyType "ApiKeyValue" ApiKeyAuthParametersProperty = Value Prelude.Text
  set newValue ApiKeyAuthParametersProperty {..}
    = ApiKeyAuthParametersProperty {apiKeyValue = newValue, ..}