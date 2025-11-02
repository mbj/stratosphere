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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-datadogconnectorprofileproperties.html>
    DatadogConnectorProfilePropertiesProperty {haddock_workaround_ :: (),
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-datadogconnectorprofileproperties.html#cfn-appflow-connectorprofile-datadogconnectorprofileproperties-instanceurl>
                                               instanceUrl :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDatadogConnectorProfilePropertiesProperty ::
  Value Prelude.Text -> DatadogConnectorProfilePropertiesProperty
mkDatadogConnectorProfilePropertiesProperty instanceUrl
  = DatadogConnectorProfilePropertiesProperty
      {haddock_workaround_ = (), instanceUrl = instanceUrl}
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
  set newValue DatadogConnectorProfilePropertiesProperty {..}
    = DatadogConnectorProfilePropertiesProperty
        {instanceUrl = newValue, ..}