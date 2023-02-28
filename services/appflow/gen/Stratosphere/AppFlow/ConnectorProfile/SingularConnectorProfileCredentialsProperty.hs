module Stratosphere.AppFlow.ConnectorProfile.SingularConnectorProfileCredentialsProperty (
        SingularConnectorProfileCredentialsProperty(..),
        mkSingularConnectorProfileCredentialsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SingularConnectorProfileCredentialsProperty
  = SingularConnectorProfileCredentialsProperty {apiKey :: (Value Prelude.Text)}
mkSingularConnectorProfileCredentialsProperty ::
  Value Prelude.Text -> SingularConnectorProfileCredentialsProperty
mkSingularConnectorProfileCredentialsProperty apiKey
  = SingularConnectorProfileCredentialsProperty {apiKey = apiKey}
instance ToResourceProperties SingularConnectorProfileCredentialsProperty where
  toResourceProperties
    SingularConnectorProfileCredentialsProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppFlow::ConnectorProfile.SingularConnectorProfileCredentials",
         supportsTags = Prelude.False,
         properties = ["ApiKey" JSON..= apiKey]}
instance JSON.ToJSON SingularConnectorProfileCredentialsProperty where
  toJSON SingularConnectorProfileCredentialsProperty {..}
    = JSON.object ["ApiKey" JSON..= apiKey]
instance Property "ApiKey" SingularConnectorProfileCredentialsProperty where
  type PropertyType "ApiKey" SingularConnectorProfileCredentialsProperty = Value Prelude.Text
  set newValue SingularConnectorProfileCredentialsProperty {}
    = SingularConnectorProfileCredentialsProperty
        {apiKey = newValue, ..}