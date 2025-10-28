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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-veevaconnectorprofileproperties.html>
    VeevaConnectorProfilePropertiesProperty {haddock_workaround_ :: (),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-veevaconnectorprofileproperties.html#cfn-appflow-connectorprofile-veevaconnectorprofileproperties-instanceurl>
                                             instanceUrl :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVeevaConnectorProfilePropertiesProperty ::
  Value Prelude.Text -> VeevaConnectorProfilePropertiesProperty
mkVeevaConnectorProfilePropertiesProperty instanceUrl
  = VeevaConnectorProfilePropertiesProperty
      {haddock_workaround_ = (), instanceUrl = instanceUrl}
instance ToResourceProperties VeevaConnectorProfilePropertiesProperty where
  toResourceProperties VeevaConnectorProfilePropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppFlow::ConnectorProfile.VeevaConnectorProfileProperties",
         supportsTags = Prelude.False,
         properties = ["InstanceUrl" JSON..= instanceUrl]}
instance JSON.ToJSON VeevaConnectorProfilePropertiesProperty where
  toJSON VeevaConnectorProfilePropertiesProperty {..}
    = JSON.object ["InstanceUrl" JSON..= instanceUrl]
instance Property "InstanceUrl" VeevaConnectorProfilePropertiesProperty where
  type PropertyType "InstanceUrl" VeevaConnectorProfilePropertiesProperty = Value Prelude.Text
  set newValue VeevaConnectorProfilePropertiesProperty {..}
    = VeevaConnectorProfilePropertiesProperty
        {instanceUrl = newValue, ..}