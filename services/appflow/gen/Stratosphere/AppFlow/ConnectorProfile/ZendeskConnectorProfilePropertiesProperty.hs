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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-zendeskconnectorprofileproperties.html>
    ZendeskConnectorProfilePropertiesProperty {haddock_workaround_ :: (),
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-zendeskconnectorprofileproperties.html#cfn-appflow-connectorprofile-zendeskconnectorprofileproperties-instanceurl>
                                               instanceUrl :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkZendeskConnectorProfilePropertiesProperty ::
  Value Prelude.Text -> ZendeskConnectorProfilePropertiesProperty
mkZendeskConnectorProfilePropertiesProperty instanceUrl
  = ZendeskConnectorProfilePropertiesProperty
      {haddock_workaround_ = (), instanceUrl = instanceUrl}
instance ToResourceProperties ZendeskConnectorProfilePropertiesProperty where
  toResourceProperties ZendeskConnectorProfilePropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppFlow::ConnectorProfile.ZendeskConnectorProfileProperties",
         supportsTags = Prelude.False,
         properties = ["InstanceUrl" JSON..= instanceUrl]}
instance JSON.ToJSON ZendeskConnectorProfilePropertiesProperty where
  toJSON ZendeskConnectorProfilePropertiesProperty {..}
    = JSON.object ["InstanceUrl" JSON..= instanceUrl]
instance Property "InstanceUrl" ZendeskConnectorProfilePropertiesProperty where
  type PropertyType "InstanceUrl" ZendeskConnectorProfilePropertiesProperty = Value Prelude.Text
  set newValue ZendeskConnectorProfilePropertiesProperty {..}
    = ZendeskConnectorProfilePropertiesProperty
        {instanceUrl = newValue, ..}