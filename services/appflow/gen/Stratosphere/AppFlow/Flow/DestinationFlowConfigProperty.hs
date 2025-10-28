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
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-destinationflowconfig.html>
    DestinationFlowConfigProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-destinationflowconfig.html#cfn-appflow-flow-destinationflowconfig-apiversion>
                                   apiVersion :: (Prelude.Maybe (Value Prelude.Text)),
                                   -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-destinationflowconfig.html#cfn-appflow-flow-destinationflowconfig-connectorprofilename>
                                   connectorProfileName :: (Prelude.Maybe (Value Prelude.Text)),
                                   -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-destinationflowconfig.html#cfn-appflow-flow-destinationflowconfig-connectortype>
                                   connectorType :: (Value Prelude.Text),
                                   -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-destinationflowconfig.html#cfn-appflow-flow-destinationflowconfig-destinationconnectorproperties>
                                   destinationConnectorProperties :: DestinationConnectorPropertiesProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
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
         supportsTags = Prelude.False,
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