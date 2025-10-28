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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-singularconnectorprofilecredentials.html>
    SingularConnectorProfileCredentialsProperty {haddock_workaround_ :: (),
                                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-singularconnectorprofilecredentials.html#cfn-appflow-connectorprofile-singularconnectorprofilecredentials-apikey>
                                                 apiKey :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSingularConnectorProfileCredentialsProperty ::
  Value Prelude.Text -> SingularConnectorProfileCredentialsProperty
mkSingularConnectorProfileCredentialsProperty apiKey
  = SingularConnectorProfileCredentialsProperty
      {haddock_workaround_ = (), apiKey = apiKey}
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
  set newValue SingularConnectorProfileCredentialsProperty {..}
    = SingularConnectorProfileCredentialsProperty
        {apiKey = newValue, ..}