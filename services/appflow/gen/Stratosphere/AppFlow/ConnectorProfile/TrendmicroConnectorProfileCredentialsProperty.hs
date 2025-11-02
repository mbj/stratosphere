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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-trendmicroconnectorprofilecredentials.html>
    TrendmicroConnectorProfileCredentialsProperty {haddock_workaround_ :: (),
                                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-trendmicroconnectorprofilecredentials.html#cfn-appflow-connectorprofile-trendmicroconnectorprofilecredentials-apisecretkey>
                                                   apiSecretKey :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTrendmicroConnectorProfileCredentialsProperty ::
  Value Prelude.Text -> TrendmicroConnectorProfileCredentialsProperty
mkTrendmicroConnectorProfileCredentialsProperty apiSecretKey
  = TrendmicroConnectorProfileCredentialsProperty
      {haddock_workaround_ = (), apiSecretKey = apiSecretKey}
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
  set newValue TrendmicroConnectorProfileCredentialsProperty {..}
    = TrendmicroConnectorProfileCredentialsProperty
        {apiSecretKey = newValue, ..}