module Stratosphere.AppFlow.Flow.DestinationFlowConfigProperty (
        module Exports, DestinationFlowConfigProperty(..),
        mkDestinationFlowConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppFlow.Flow.DestinationConnectorPropertiesProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DestinationFlowConfigProperty
  = DestinationFlowConfigProperty {apiVersion :: (Prelude.Maybe (Value Prelude.Text)),
                                   connectorProfileName :: (Prelude.Maybe (Value Prelude.Text)),
                                   connectorType :: (Value Prelude.Text),
                                   destinationConnectorProperties :: DestinationConnectorPropertiesProperty}
mkDestinationFlowConfigProperty ::
  Value Prelude.Text
  -> DestinationConnectorPropertiesProperty
     -> DestinationFlowConfigProperty
mkDestinationFlowConfigProperty
  connectorType
  destinationConnectorProperties
  = DestinationFlowConfigProperty
      {connectorType = connectorType,
       destinationConnectorProperties = destinationConnectorProperties,
       apiVersion = Prelude.Nothing,
       connectorProfileName = Prelude.Nothing}
instance ToResourceProperties DestinationFlowConfigProperty where
  toResourceProperties DestinationFlowConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppFlow::Flow.DestinationFlowConfig",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ConnectorType" JSON..= connectorType,
                            "DestinationConnectorProperties"
                              JSON..= destinationConnectorProperties]
                           (Prelude.catMaybes
                              [(JSON..=) "ApiVersion" Prelude.<$> apiVersion,
                               (JSON..=) "ConnectorProfileName"
                                 Prelude.<$> connectorProfileName]))}
instance JSON.ToJSON DestinationFlowConfigProperty where
  toJSON DestinationFlowConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ConnectorType" JSON..= connectorType,
               "DestinationConnectorProperties"
                 JSON..= destinationConnectorProperties]
              (Prelude.catMaybes
                 [(JSON..=) "ApiVersion" Prelude.<$> apiVersion,
                  (JSON..=) "ConnectorProfileName"
                    Prelude.<$> connectorProfileName])))
instance Property "ApiVersion" DestinationFlowConfigProperty where
  type PropertyType "ApiVersion" DestinationFlowConfigProperty = Value Prelude.Text
  set newValue DestinationFlowConfigProperty {..}
    = DestinationFlowConfigProperty
        {apiVersion = Prelude.pure newValue, ..}
instance Property "ConnectorProfileName" DestinationFlowConfigProperty where
  type PropertyType "ConnectorProfileName" DestinationFlowConfigProperty = Value Prelude.Text
  set newValue DestinationFlowConfigProperty {..}
    = DestinationFlowConfigProperty
        {connectorProfileName = Prelude.pure newValue, ..}
instance Property "ConnectorType" DestinationFlowConfigProperty where
  type PropertyType "ConnectorType" DestinationFlowConfigProperty = Value Prelude.Text
  set newValue DestinationFlowConfigProperty {..}
    = DestinationFlowConfigProperty {connectorType = newValue, ..}
instance Property "DestinationConnectorProperties" DestinationFlowConfigProperty where
  type PropertyType "DestinationConnectorProperties" DestinationFlowConfigProperty = DestinationConnectorPropertiesProperty
  set newValue DestinationFlowConfigProperty {..}
    = DestinationFlowConfigProperty
        {destinationConnectorProperties = newValue, ..}