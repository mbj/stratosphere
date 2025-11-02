module Stratosphere.AppFlow.ConnectorProfile.DynatraceConnectorProfileCredentialsProperty (
        DynatraceConnectorProfileCredentialsProperty(..),
        mkDynatraceConnectorProfileCredentialsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DynatraceConnectorProfileCredentialsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-dynatraceconnectorprofilecredentials.html>
    DynatraceConnectorProfileCredentialsProperty {haddock_workaround_ :: (),
                                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-dynatraceconnectorprofilecredentials.html#cfn-appflow-connectorprofile-dynatraceconnectorprofilecredentials-apitoken>
                                                  apiToken :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDynatraceConnectorProfileCredentialsProperty ::
  Value Prelude.Text -> DynatraceConnectorProfileCredentialsProperty
mkDynatraceConnectorProfileCredentialsProperty apiToken
  = DynatraceConnectorProfileCredentialsProperty
      {haddock_workaround_ = (), apiToken = apiToken}
instance ToResourceProperties DynatraceConnectorProfileCredentialsProperty where
  toResourceProperties
    DynatraceConnectorProfileCredentialsProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppFlow::ConnectorProfile.DynatraceConnectorProfileCredentials",
         supportsTags = Prelude.False,
         properties = ["ApiToken" JSON..= apiToken]}
instance JSON.ToJSON DynatraceConnectorProfileCredentialsProperty where
  toJSON DynatraceConnectorProfileCredentialsProperty {..}
    = JSON.object ["ApiToken" JSON..= apiToken]
instance Property "ApiToken" DynatraceConnectorProfileCredentialsProperty where
  type PropertyType "ApiToken" DynatraceConnectorProfileCredentialsProperty = Value Prelude.Text
  set newValue DynatraceConnectorProfileCredentialsProperty {..}
    = DynatraceConnectorProfileCredentialsProperty
        {apiToken = newValue, ..}