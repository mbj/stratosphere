module Stratosphere.Greengrass.ConnectorDefinitionVersion (
        module Exports, ConnectorDefinitionVersion(..),
        mkConnectorDefinitionVersion
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Greengrass.ConnectorDefinitionVersion.ConnectorProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ConnectorDefinitionVersion
  = ConnectorDefinitionVersion {connectorDefinitionId :: (Value Prelude.Text),
                                connectors :: [ConnectorProperty]}
mkConnectorDefinitionVersion ::
  Value Prelude.Text
  -> [ConnectorProperty] -> ConnectorDefinitionVersion
mkConnectorDefinitionVersion connectorDefinitionId connectors
  = ConnectorDefinitionVersion
      {connectorDefinitionId = connectorDefinitionId,
       connectors = connectors}
instance ToResourceProperties ConnectorDefinitionVersion where
  toResourceProperties ConnectorDefinitionVersion {..}
    = ResourceProperties
        {awsType = "AWS::Greengrass::ConnectorDefinitionVersion",
         supportsTags = Prelude.False,
         properties = ["ConnectorDefinitionId"
                         JSON..= connectorDefinitionId,
                       "Connectors" JSON..= connectors]}
instance JSON.ToJSON ConnectorDefinitionVersion where
  toJSON ConnectorDefinitionVersion {..}
    = JSON.object
        ["ConnectorDefinitionId" JSON..= connectorDefinitionId,
         "Connectors" JSON..= connectors]
instance Property "ConnectorDefinitionId" ConnectorDefinitionVersion where
  type PropertyType "ConnectorDefinitionId" ConnectorDefinitionVersion = Value Prelude.Text
  set newValue ConnectorDefinitionVersion {..}
    = ConnectorDefinitionVersion {connectorDefinitionId = newValue, ..}
instance Property "Connectors" ConnectorDefinitionVersion where
  type PropertyType "Connectors" ConnectorDefinitionVersion = [ConnectorProperty]
  set newValue ConnectorDefinitionVersion {..}
    = ConnectorDefinitionVersion {connectors = newValue, ..}