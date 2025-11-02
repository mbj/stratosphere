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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-marketoconnectorprofileproperties.html>
    MarketoConnectorProfilePropertiesProperty {haddock_workaround_ :: (),
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-marketoconnectorprofileproperties.html#cfn-appflow-connectorprofile-marketoconnectorprofileproperties-instanceurl>
                                               instanceUrl :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMarketoConnectorProfilePropertiesProperty ::
  Value Prelude.Text -> MarketoConnectorProfilePropertiesProperty
mkMarketoConnectorProfilePropertiesProperty instanceUrl
  = MarketoConnectorProfilePropertiesProperty
      {haddock_workaround_ = (), instanceUrl = instanceUrl}
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
  set newValue MarketoConnectorProfilePropertiesProperty {..}
    = MarketoConnectorProfilePropertiesProperty
        {instanceUrl = newValue, ..}