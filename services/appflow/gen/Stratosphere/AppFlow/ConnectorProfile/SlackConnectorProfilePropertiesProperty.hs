module Stratosphere.AppFlow.ConnectorProfile.SlackConnectorProfilePropertiesProperty (
        SlackConnectorProfilePropertiesProperty(..),
        mkSlackConnectorProfilePropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SlackConnectorProfilePropertiesProperty
  = SlackConnectorProfilePropertiesProperty {instanceUrl :: (Value Prelude.Text)}
mkSlackConnectorProfilePropertiesProperty ::
  Value Prelude.Text -> SlackConnectorProfilePropertiesProperty
mkSlackConnectorProfilePropertiesProperty instanceUrl
  = SlackConnectorProfilePropertiesProperty
      {instanceUrl = instanceUrl}
instance ToResourceProperties SlackConnectorProfilePropertiesProperty where
  toResourceProperties SlackConnectorProfilePropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppFlow::ConnectorProfile.SlackConnectorProfileProperties",
         supportsTags = Prelude.False,
         properties = ["InstanceUrl" JSON..= instanceUrl]}
instance JSON.ToJSON SlackConnectorProfilePropertiesProperty where
  toJSON SlackConnectorProfilePropertiesProperty {..}
    = JSON.object ["InstanceUrl" JSON..= instanceUrl]
instance Property "InstanceUrl" SlackConnectorProfilePropertiesProperty where
  type PropertyType "InstanceUrl" SlackConnectorProfilePropertiesProperty = Value Prelude.Text
  set newValue SlackConnectorProfilePropertiesProperty {}
    = SlackConnectorProfilePropertiesProperty
        {instanceUrl = newValue, ..}