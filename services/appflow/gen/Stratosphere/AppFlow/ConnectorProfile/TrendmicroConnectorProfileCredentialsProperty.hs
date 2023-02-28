module Stratosphere.AppFlow.ConnectorProfile.TrendmicroConnectorProfileCredentialsProperty (
        TrendmicroConnectorProfileCredentialsProperty(..),
        mkTrendmicroConnectorProfileCredentialsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TrendmicroConnectorProfileCredentialsProperty
  = TrendmicroConnectorProfileCredentialsProperty {apiSecretKey :: (Value Prelude.Text)}
mkTrendmicroConnectorProfileCredentialsProperty ::
  Value Prelude.Text -> TrendmicroConnectorProfileCredentialsProperty
mkTrendmicroConnectorProfileCredentialsProperty apiSecretKey
  = TrendmicroConnectorProfileCredentialsProperty
      {apiSecretKey = apiSecretKey}
instance ToResourceProperties TrendmicroConnectorProfileCredentialsProperty where
  toResourceProperties
    TrendmicroConnectorProfileCredentialsProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppFlow::ConnectorProfile.TrendmicroConnectorProfileCredentials",
         supportsTags = Prelude.False,
         properties = ["ApiSecretKey" JSON..= apiSecretKey]}
instance JSON.ToJSON TrendmicroConnectorProfileCredentialsProperty where
  toJSON TrendmicroConnectorProfileCredentialsProperty {..}
    = JSON.object ["ApiSecretKey" JSON..= apiSecretKey]
instance Property "ApiSecretKey" TrendmicroConnectorProfileCredentialsProperty where
  type PropertyType "ApiSecretKey" TrendmicroConnectorProfileCredentialsProperty = Value Prelude.Text
  set newValue TrendmicroConnectorProfileCredentialsProperty {}
    = TrendmicroConnectorProfileCredentialsProperty
        {apiSecretKey = newValue, ..}