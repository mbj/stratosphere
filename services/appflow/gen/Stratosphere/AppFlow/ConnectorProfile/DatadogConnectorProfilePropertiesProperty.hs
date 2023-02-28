module Stratosphere.AppFlow.ConnectorProfile.DatadogConnectorProfilePropertiesProperty (
        DatadogConnectorProfilePropertiesProperty(..),
        mkDatadogConnectorProfilePropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DatadogConnectorProfilePropertiesProperty
  = DatadogConnectorProfilePropertiesProperty {instanceUrl :: (Value Prelude.Text)}
mkDatadogConnectorProfilePropertiesProperty ::
  Value Prelude.Text -> DatadogConnectorProfilePropertiesProperty
mkDatadogConnectorProfilePropertiesProperty instanceUrl
  = DatadogConnectorProfilePropertiesProperty
      {instanceUrl = instanceUrl}
instance ToResourceProperties DatadogConnectorProfilePropertiesProperty where
  toResourceProperties DatadogConnectorProfilePropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppFlow::ConnectorProfile.DatadogConnectorProfileProperties",
         supportsTags = Prelude.False,
         properties = ["InstanceUrl" JSON..= instanceUrl]}
instance JSON.ToJSON DatadogConnectorProfilePropertiesProperty where
  toJSON DatadogConnectorProfilePropertiesProperty {..}
    = JSON.object ["InstanceUrl" JSON..= instanceUrl]
instance Property "InstanceUrl" DatadogConnectorProfilePropertiesProperty where
  type PropertyType "InstanceUrl" DatadogConnectorProfilePropertiesProperty = Value Prelude.Text
  set newValue DatadogConnectorProfilePropertiesProperty {}
    = DatadogConnectorProfilePropertiesProperty
        {instanceUrl = newValue, ..}