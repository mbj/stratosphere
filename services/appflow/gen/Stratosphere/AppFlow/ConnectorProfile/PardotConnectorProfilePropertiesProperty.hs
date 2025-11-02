module Stratosphere.AppFlow.ConnectorProfile.PardotConnectorProfilePropertiesProperty (
        PardotConnectorProfilePropertiesProperty(..),
        mkPardotConnectorProfilePropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PardotConnectorProfilePropertiesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-pardotconnectorprofileproperties.html>
    PardotConnectorProfilePropertiesProperty {haddock_workaround_ :: (),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-pardotconnectorprofileproperties.html#cfn-appflow-connectorprofile-pardotconnectorprofileproperties-businessunitid>
                                              businessUnitId :: (Value Prelude.Text),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-pardotconnectorprofileproperties.html#cfn-appflow-connectorprofile-pardotconnectorprofileproperties-instanceurl>
                                              instanceUrl :: (Prelude.Maybe (Value Prelude.Text)),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-pardotconnectorprofileproperties.html#cfn-appflow-connectorprofile-pardotconnectorprofileproperties-issandboxenvironment>
                                              isSandboxEnvironment :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPardotConnectorProfilePropertiesProperty ::
  Value Prelude.Text -> PardotConnectorProfilePropertiesProperty
mkPardotConnectorProfilePropertiesProperty businessUnitId
  = PardotConnectorProfilePropertiesProperty
      {haddock_workaround_ = (), businessUnitId = businessUnitId,
       instanceUrl = Prelude.Nothing,
       isSandboxEnvironment = Prelude.Nothing}
instance ToResourceProperties PardotConnectorProfilePropertiesProperty where
  toResourceProperties PardotConnectorProfilePropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppFlow::ConnectorProfile.PardotConnectorProfileProperties",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["BusinessUnitId" JSON..= businessUnitId]
                           (Prelude.catMaybes
                              [(JSON..=) "InstanceUrl" Prelude.<$> instanceUrl,
                               (JSON..=) "IsSandboxEnvironment"
                                 Prelude.<$> isSandboxEnvironment]))}
instance JSON.ToJSON PardotConnectorProfilePropertiesProperty where
  toJSON PardotConnectorProfilePropertiesProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["BusinessUnitId" JSON..= businessUnitId]
              (Prelude.catMaybes
                 [(JSON..=) "InstanceUrl" Prelude.<$> instanceUrl,
                  (JSON..=) "IsSandboxEnvironment"
                    Prelude.<$> isSandboxEnvironment])))
instance Property "BusinessUnitId" PardotConnectorProfilePropertiesProperty where
  type PropertyType "BusinessUnitId" PardotConnectorProfilePropertiesProperty = Value Prelude.Text
  set newValue PardotConnectorProfilePropertiesProperty {..}
    = PardotConnectorProfilePropertiesProperty
        {businessUnitId = newValue, ..}
instance Property "InstanceUrl" PardotConnectorProfilePropertiesProperty where
  type PropertyType "InstanceUrl" PardotConnectorProfilePropertiesProperty = Value Prelude.Text
  set newValue PardotConnectorProfilePropertiesProperty {..}
    = PardotConnectorProfilePropertiesProperty
        {instanceUrl = Prelude.pure newValue, ..}
instance Property "IsSandboxEnvironment" PardotConnectorProfilePropertiesProperty where
  type PropertyType "IsSandboxEnvironment" PardotConnectorProfilePropertiesProperty = Value Prelude.Bool
  set newValue PardotConnectorProfilePropertiesProperty {..}
    = PardotConnectorProfilePropertiesProperty
        {isSandboxEnvironment = Prelude.pure newValue, ..}