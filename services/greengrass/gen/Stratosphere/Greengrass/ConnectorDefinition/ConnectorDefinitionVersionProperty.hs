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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-connectordefinition-connectordefinitionversion.html>
    ConnectorDefinitionVersionProperty {haddock_workaround_ :: (),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-connectordefinition-connectordefinitionversion.html#cfn-greengrass-connectordefinition-connectordefinitionversion-connectors>
                                        connectors :: [ConnectorProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConnectorDefinitionVersionProperty ::
  [ConnectorProperty] -> ConnectorDefinitionVersionProperty
mkConnectorDefinitionVersionProperty connectors
  = ConnectorDefinitionVersionProperty
      {haddock_workaround_ = (), connectors = connectors}
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
  set newValue ConnectorDefinitionVersionProperty {..}
    = ConnectorDefinitionVersionProperty {connectors = newValue, ..}