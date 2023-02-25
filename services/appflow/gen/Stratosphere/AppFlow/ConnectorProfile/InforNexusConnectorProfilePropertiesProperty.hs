module Stratosphere.AppFlow.ConnectorProfile.InforNexusConnectorProfilePropertiesProperty (
        InforNexusConnectorProfilePropertiesProperty(..),
        mkInforNexusConnectorProfilePropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data InforNexusConnectorProfilePropertiesProperty
  = InforNexusConnectorProfilePropertiesProperty {instanceUrl :: (Value Prelude.Text)}
mkInforNexusConnectorProfilePropertiesProperty ::
  Value Prelude.Text -> InforNexusConnectorProfilePropertiesProperty
mkInforNexusConnectorProfilePropertiesProperty instanceUrl
  = InforNexusConnectorProfilePropertiesProperty
      {instanceUrl = instanceUrl}
instance ToResourceProperties InforNexusConnectorProfilePropertiesProperty where
  toResourceProperties
    InforNexusConnectorProfilePropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppFlow::ConnectorProfile.InforNexusConnectorProfileProperties",
         properties = ["InstanceUrl" JSON..= instanceUrl]}
instance JSON.ToJSON InforNexusConnectorProfilePropertiesProperty where
  toJSON InforNexusConnectorProfilePropertiesProperty {..}
    = JSON.object ["InstanceUrl" JSON..= instanceUrl]
instance Property "InstanceUrl" InforNexusConnectorProfilePropertiesProperty where
  type PropertyType "InstanceUrl" InforNexusConnectorProfilePropertiesProperty = Value Prelude.Text
  set newValue InforNexusConnectorProfilePropertiesProperty {}
    = InforNexusConnectorProfilePropertiesProperty
        {instanceUrl = newValue, ..}