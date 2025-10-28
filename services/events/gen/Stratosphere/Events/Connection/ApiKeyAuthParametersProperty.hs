module Stratosphere.Events.Connection.ApiKeyAuthParametersProperty (
        ApiKeyAuthParametersProperty(..), mkApiKeyAuthParametersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ApiKeyAuthParametersProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-connection-apikeyauthparameters.html>
    ApiKeyAuthParametersProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-connection-apikeyauthparameters.html#cfn-events-connection-apikeyauthparameters-apikeyname>
                                  apiKeyName :: (Value Prelude.Text),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-connection-apikeyauthparameters.html#cfn-events-connection-apikeyauthparameters-apikeyvalue>
                                  apiKeyValue :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkApiKeyAuthParametersProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> ApiKeyAuthParametersProperty
mkApiKeyAuthParametersProperty apiKeyName apiKeyValue
  = ApiKeyAuthParametersProperty
      {haddock_workaround_ = (), apiKeyName = apiKeyName,
       apiKeyValue = apiKeyValue}
instance ToResourceProperties ApiKeyAuthParametersProperty where
  toResourceProperties ApiKeyAuthParametersProperty {..}
    = ResourceProperties
        {awsType = "AWS::Events::Connection.ApiKeyAuthParameters",
         supportsTags = Prelude.False,
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