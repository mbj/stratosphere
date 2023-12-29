module Stratosphere.AppFlow.ConnectorProfile.MarketoConnectorProfilePropertiesProperty (
        MarketoConnectorProfilePropertiesProperty(..),
        mkMarketoConnectorProfilePropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MarketoConnectorProfilePropertiesProperty
  = MarketoConnectorProfilePropertiesProperty {instanceUrl :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMarketoConnectorProfilePropertiesProperty ::
  Value Prelude.Text -> MarketoConnectorProfilePropertiesProperty
mkMarketoConnectorProfilePropertiesProperty instanceUrl
  = MarketoConnectorProfilePropertiesProperty
      {instanceUrl = instanceUrl}
instance ToResourceProperties MarketoConnectorProfilePropertiesProperty where
  toResourceProperties MarketoConnectorProfilePropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppFlow::ConnectorProfile.MarketoConnectorProfileProperties",
         supportsTags = Prelude.False,
         properties = ["InstanceUrl" JSON..= instanceUrl]}
instance JSON.ToJSON MarketoConnectorProfilePropertiesProperty where
  toJSON MarketoConnectorProfilePropertiesProperty {..}
    = JSON.object ["InstanceUrl" JSON..= instanceUrl]
instance Property "InstanceUrl" MarketoConnectorProfilePropertiesProperty where
  type PropertyType "InstanceUrl" MarketoConnectorProfilePropertiesProperty = Value Prelude.Text
  set newValue MarketoConnectorProfilePropertiesProperty {}
    = MarketoConnectorProfilePropertiesProperty
        {instanceUrl = newValue, ..}