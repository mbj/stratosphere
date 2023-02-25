module Stratosphere.AppFlow.ConnectorProfile.ZendeskConnectorProfilePropertiesProperty (
        ZendeskConnectorProfilePropertiesProperty(..),
        mkZendeskConnectorProfilePropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ZendeskConnectorProfilePropertiesProperty
  = ZendeskConnectorProfilePropertiesProperty {instanceUrl :: (Value Prelude.Text)}
mkZendeskConnectorProfilePropertiesProperty ::
  Value Prelude.Text -> ZendeskConnectorProfilePropertiesProperty
mkZendeskConnectorProfilePropertiesProperty instanceUrl
  = ZendeskConnectorProfilePropertiesProperty
      {instanceUrl = instanceUrl}
instance ToResourceProperties ZendeskConnectorProfilePropertiesProperty where
  toResourceProperties ZendeskConnectorProfilePropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppFlow::ConnectorProfile.ZendeskConnectorProfileProperties",
         properties = ["InstanceUrl" JSON..= instanceUrl]}
instance JSON.ToJSON ZendeskConnectorProfilePropertiesProperty where
  toJSON ZendeskConnectorProfilePropertiesProperty {..}
    = JSON.object ["InstanceUrl" JSON..= instanceUrl]
instance Property "InstanceUrl" ZendeskConnectorProfilePropertiesProperty where
  type PropertyType "InstanceUrl" ZendeskConnectorProfilePropertiesProperty = Value Prelude.Text
  set newValue ZendeskConnectorProfilePropertiesProperty {}
    = ZendeskConnectorProfilePropertiesProperty
        {instanceUrl = newValue, ..}