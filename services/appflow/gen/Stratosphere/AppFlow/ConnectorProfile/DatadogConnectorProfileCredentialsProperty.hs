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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-datadogconnectorprofilecredentials.html>
    DatadogConnectorProfileCredentialsProperty {haddock_workaround_ :: (),
                                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-datadogconnectorprofilecredentials.html#cfn-appflow-connectorprofile-datadogconnectorprofilecredentials-apikey>
                                                apiKey :: (Value Prelude.Text),
                                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-datadogconnectorprofilecredentials.html#cfn-appflow-connectorprofile-datadogconnectorprofilecredentials-applicationkey>
                                                applicationKey :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDatadogConnectorProfileCredentialsProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> DatadogConnectorProfileCredentialsProperty
mkDatadogConnectorProfileCredentialsProperty apiKey applicationKey
  = DatadogConnectorProfileCredentialsProperty
      {haddock_workaround_ = (), apiKey = apiKey,
       applicationKey = applicationKey}
instance ToResourceProperties DatadogConnectorProfileCredentialsProperty where
  toResourceProperties
    DatadogConnectorProfileCredentialsProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppFlow::ConnectorProfile.DatadogConnectorProfileCredentials",
         supportsTags = Prelude.False,
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