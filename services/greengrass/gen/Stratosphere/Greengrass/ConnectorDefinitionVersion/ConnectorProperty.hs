module Stratosphere.Greengrass.ConnectorDefinitionVersion.ConnectorProperty (
        ConnectorProperty(..), mkConnectorProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ConnectorProperty
  = ConnectorProperty {connectorArn :: (Value Prelude.Text),
                       id :: (Value Prelude.Text),
                       parameters :: (Prelude.Maybe JSON.Object)}
mkConnectorProperty ::
  Value Prelude.Text -> Value Prelude.Text -> ConnectorProperty
mkConnectorProperty connectorArn id
  = ConnectorProperty
      {connectorArn = connectorArn, id = id,
       parameters = Prelude.Nothing}
instance ToResourceProperties ConnectorProperty where
  toResourceProperties ConnectorProperty {..}
    = ResourceProperties
        {awsType = "AWS::Greengrass::ConnectorDefinitionVersion.Connector",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ConnectorArn" JSON..= connectorArn, "Id" JSON..= id]
                           (Prelude.catMaybes
                              [(JSON..=) "Parameters" Prelude.<$> parameters]))}
instance JSON.ToJSON ConnectorProperty where
  toJSON ConnectorProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ConnectorArn" JSON..= connectorArn, "Id" JSON..= id]
              (Prelude.catMaybes
                 [(JSON..=) "Parameters" Prelude.<$> parameters])))
instance Property "ConnectorArn" ConnectorProperty where
  type PropertyType "ConnectorArn" ConnectorProperty = Value Prelude.Text
  set newValue ConnectorProperty {..}
    = ConnectorProperty {connectorArn = newValue, ..}
instance Property "Id" ConnectorProperty where
  type PropertyType "Id" ConnectorProperty = Value Prelude.Text
  set newValue ConnectorProperty {..}
    = ConnectorProperty {id = newValue, ..}
instance Property "Parameters" ConnectorProperty where
  type PropertyType "Parameters" ConnectorProperty = JSON.Object
  set newValue ConnectorProperty {..}
    = ConnectorProperty {parameters = Prelude.pure newValue, ..}