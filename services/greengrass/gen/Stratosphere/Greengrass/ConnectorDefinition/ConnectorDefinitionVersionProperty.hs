module Stratosphere.Greengrass.ConnectorDefinition.ConnectorDefinitionVersionProperty (
        module Exports, ConnectorDefinitionVersionProperty(..),
        mkConnectorDefinitionVersionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Greengrass.ConnectorDefinition.ConnectorProperty as Exports
import Stratosphere.ResourceProperties
data ConnectorDefinitionVersionProperty
  = ConnectorDefinitionVersionProperty {connectors :: [ConnectorProperty]}
mkConnectorDefinitionVersionProperty ::
  [ConnectorProperty] -> ConnectorDefinitionVersionProperty
mkConnectorDefinitionVersionProperty connectors
  = ConnectorDefinitionVersionProperty {connectors = connectors}
instance ToResourceProperties ConnectorDefinitionVersionProperty where
  toResourceProperties ConnectorDefinitionVersionProperty {..}
    = ResourceProperties
        {awsType = "AWS::Greengrass::ConnectorDefinition.ConnectorDefinitionVersion",
         supportsTags = Prelude.False,
         properties = ["Connectors" JSON..= connectors]}
instance JSON.ToJSON ConnectorDefinitionVersionProperty where
  toJSON ConnectorDefinitionVersionProperty {..}
    = JSON.object ["Connectors" JSON..= connectors]
instance Property "Connectors" ConnectorDefinitionVersionProperty where
  type PropertyType "Connectors" ConnectorDefinitionVersionProperty = [ConnectorProperty]
  set newValue ConnectorDefinitionVersionProperty {}
    = ConnectorDefinitionVersionProperty {connectors = newValue, ..}