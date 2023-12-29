module Stratosphere.AppFlow.ConnectorProfile.DynatraceConnectorProfilePropertiesProperty (
        DynatraceConnectorProfilePropertiesProperty(..),
        mkDynatraceConnectorProfilePropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DynatraceConnectorProfilePropertiesProperty
  = DynatraceConnectorProfilePropertiesProperty {instanceUrl :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDynatraceConnectorProfilePropertiesProperty ::
  Value Prelude.Text -> DynatraceConnectorProfilePropertiesProperty
mkDynatraceConnectorProfilePropertiesProperty instanceUrl
  = DynatraceConnectorProfilePropertiesProperty
      {instanceUrl = instanceUrl}
instance ToResourceProperties DynatraceConnectorProfilePropertiesProperty where
  toResourceProperties
    DynatraceConnectorProfilePropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppFlow::ConnectorProfile.DynatraceConnectorProfileProperties",
         supportsTags = Prelude.False,
         properties = ["InstanceUrl" JSON..= instanceUrl]}
instance JSON.ToJSON DynatraceConnectorProfilePropertiesProperty where
  toJSON DynatraceConnectorProfilePropertiesProperty {..}
    = JSON.object ["InstanceUrl" JSON..= instanceUrl]
instance Property "InstanceUrl" DynatraceConnectorProfilePropertiesProperty where
  type PropertyType "InstanceUrl" DynatraceConnectorProfilePropertiesProperty = Value Prelude.Text
  set newValue DynatraceConnectorProfilePropertiesProperty {}
    = DynatraceConnectorProfilePropertiesProperty
        {instanceUrl = newValue, ..}