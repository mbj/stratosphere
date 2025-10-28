module Stratosphere.AppFlow.ConnectorProfile.ServiceNowConnectorProfilePropertiesProperty (
        ServiceNowConnectorProfilePropertiesProperty(..),
        mkServiceNowConnectorProfilePropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ServiceNowConnectorProfilePropertiesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-servicenowconnectorprofileproperties.html>
    ServiceNowConnectorProfilePropertiesProperty {haddock_workaround_ :: (),
                                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-servicenowconnectorprofileproperties.html#cfn-appflow-connectorprofile-servicenowconnectorprofileproperties-instanceurl>
                                                  instanceUrl :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkServiceNowConnectorProfilePropertiesProperty ::
  Value Prelude.Text -> ServiceNowConnectorProfilePropertiesProperty
mkServiceNowConnectorProfilePropertiesProperty instanceUrl
  = ServiceNowConnectorProfilePropertiesProperty
      {haddock_workaround_ = (), instanceUrl = instanceUrl}
instance ToResourceProperties ServiceNowConnectorProfilePropertiesProperty where
  toResourceProperties
    ServiceNowConnectorProfilePropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppFlow::ConnectorProfile.ServiceNowConnectorProfileProperties",
         supportsTags = Prelude.False,
         properties = ["InstanceUrl" JSON..= instanceUrl]}
instance JSON.ToJSON ServiceNowConnectorProfilePropertiesProperty where
  toJSON ServiceNowConnectorProfilePropertiesProperty {..}
    = JSON.object ["InstanceUrl" JSON..= instanceUrl]
instance Property "InstanceUrl" ServiceNowConnectorProfilePropertiesProperty where
  type PropertyType "InstanceUrl" ServiceNowConnectorProfilePropertiesProperty = Value Prelude.Text
  set newValue ServiceNowConnectorProfilePropertiesProperty {..}
    = ServiceNowConnectorProfilePropertiesProperty
        {instanceUrl = newValue, ..}