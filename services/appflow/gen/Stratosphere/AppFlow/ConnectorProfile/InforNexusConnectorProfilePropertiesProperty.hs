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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-infornexusconnectorprofileproperties.html>
    InforNexusConnectorProfilePropertiesProperty {haddock_workaround_ :: (),
                                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-infornexusconnectorprofileproperties.html#cfn-appflow-connectorprofile-infornexusconnectorprofileproperties-instanceurl>
                                                  instanceUrl :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInforNexusConnectorProfilePropertiesProperty ::
  Value Prelude.Text -> InforNexusConnectorProfilePropertiesProperty
mkInforNexusConnectorProfilePropertiesProperty instanceUrl
  = InforNexusConnectorProfilePropertiesProperty
      {haddock_workaround_ = (), instanceUrl = instanceUrl}
instance ToResourceProperties InforNexusConnectorProfilePropertiesProperty where
  toResourceProperties
    InforNexusConnectorProfilePropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppFlow::ConnectorProfile.InforNexusConnectorProfileProperties",
         supportsTags = Prelude.False,
         properties = ["InstanceUrl" JSON..= instanceUrl]}
instance JSON.ToJSON InforNexusConnectorProfilePropertiesProperty where
  toJSON InforNexusConnectorProfilePropertiesProperty {..}
    = JSON.object ["InstanceUrl" JSON..= instanceUrl]
instance Property "InstanceUrl" InforNexusConnectorProfilePropertiesProperty where
  type PropertyType "InstanceUrl" InforNexusConnectorProfilePropertiesProperty = Value Prelude.Text
  set newValue InforNexusConnectorProfilePropertiesProperty {..}
    = InforNexusConnectorProfilePropertiesProperty
        {instanceUrl = newValue, ..}