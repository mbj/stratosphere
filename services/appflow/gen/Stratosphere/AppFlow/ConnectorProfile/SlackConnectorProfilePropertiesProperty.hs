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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-slackconnectorprofileproperties.html>
    SlackConnectorProfilePropertiesProperty {haddock_workaround_ :: (),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-slackconnectorprofileproperties.html#cfn-appflow-connectorprofile-slackconnectorprofileproperties-instanceurl>
                                             instanceUrl :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSlackConnectorProfilePropertiesProperty ::
  Value Prelude.Text -> SlackConnectorProfilePropertiesProperty
mkSlackConnectorProfilePropertiesProperty instanceUrl
  = SlackConnectorProfilePropertiesProperty
      {haddock_workaround_ = (), instanceUrl = instanceUrl}
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
  set newValue SlackConnectorProfilePropertiesProperty {..}
    = SlackConnectorProfilePropertiesProperty
        {instanceUrl = newValue, ..}