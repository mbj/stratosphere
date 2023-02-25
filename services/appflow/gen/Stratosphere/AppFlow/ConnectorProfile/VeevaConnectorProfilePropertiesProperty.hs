module Stratosphere.AppFlow.ConnectorProfile.VeevaConnectorProfilePropertiesProperty (
        VeevaConnectorProfilePropertiesProperty(..),
        mkVeevaConnectorProfilePropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VeevaConnectorProfilePropertiesProperty
  = VeevaConnectorProfilePropertiesProperty {instanceUrl :: (Value Prelude.Text)}
mkVeevaConnectorProfilePropertiesProperty ::
  Value Prelude.Text -> VeevaConnectorProfilePropertiesProperty
mkVeevaConnectorProfilePropertiesProperty instanceUrl
  = VeevaConnectorProfilePropertiesProperty
      {instanceUrl = instanceUrl}
instance ToResourceProperties VeevaConnectorProfilePropertiesProperty where
  toResourceProperties VeevaConnectorProfilePropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppFlow::ConnectorProfile.VeevaConnectorProfileProperties",
         properties = ["InstanceUrl" JSON..= instanceUrl]}
instance JSON.ToJSON VeevaConnectorProfilePropertiesProperty where
  toJSON VeevaConnectorProfilePropertiesProperty {..}
    = JSON.object ["InstanceUrl" JSON..= instanceUrl]
instance Property "InstanceUrl" VeevaConnectorProfilePropertiesProperty where
  type PropertyType "InstanceUrl" VeevaConnectorProfilePropertiesProperty = Value Prelude.Text
  set newValue VeevaConnectorProfilePropertiesProperty {}
    = VeevaConnectorProfilePropertiesProperty
        {instanceUrl = newValue, ..}