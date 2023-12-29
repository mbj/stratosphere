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
  = DynatraceConnectorProfileCredentialsProperty {apiToken :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDynatraceConnectorProfileCredentialsProperty ::
  Value Prelude.Text -> DynatraceConnectorProfileCredentialsProperty
mkDynatraceConnectorProfileCredentialsProperty apiToken
  = DynatraceConnectorProfileCredentialsProperty
      {apiToken = apiToken}
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
  set newValue DynatraceConnectorProfileCredentialsProperty {}
    = DynatraceConnectorProfileCredentialsProperty
        {apiToken = newValue, ..}