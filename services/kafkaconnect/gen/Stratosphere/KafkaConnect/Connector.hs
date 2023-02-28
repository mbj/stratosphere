module Stratosphere.KafkaConnect.Connector (
        module Exports, Connector(..), mkConnector
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.KafkaConnect.Connector.CapacityProperty as Exports
import {-# SOURCE #-} Stratosphere.KafkaConnect.Connector.KafkaClusterProperty as Exports
import {-# SOURCE #-} Stratosphere.KafkaConnect.Connector.KafkaClusterClientAuthenticationProperty as Exports
import {-# SOURCE #-} Stratosphere.KafkaConnect.Connector.KafkaClusterEncryptionInTransitProperty as Exports
import {-# SOURCE #-} Stratosphere.KafkaConnect.Connector.LogDeliveryProperty as Exports
import {-# SOURCE #-} Stratosphere.KafkaConnect.Connector.PluginProperty as Exports
import {-# SOURCE #-} Stratosphere.KafkaConnect.Connector.WorkerConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Connector
  = Connector {capacity :: CapacityProperty,
               connectorConfiguration :: (Prelude.Map Prelude.Text (Value Prelude.Text)),
               connectorDescription :: (Prelude.Maybe (Value Prelude.Text)),
               connectorName :: (Value Prelude.Text),
               kafkaCluster :: KafkaClusterProperty,
               kafkaClusterClientAuthentication :: KafkaClusterClientAuthenticationProperty,
               kafkaClusterEncryptionInTransit :: KafkaClusterEncryptionInTransitProperty,
               kafkaConnectVersion :: (Value Prelude.Text),
               logDelivery :: (Prelude.Maybe LogDeliveryProperty),
               plugins :: [PluginProperty],
               serviceExecutionRoleArn :: (Value Prelude.Text),
               workerConfiguration :: (Prelude.Maybe WorkerConfigurationProperty)}
mkConnector ::
  CapacityProperty
  -> Prelude.Map Prelude.Text (Value Prelude.Text)
     -> Value Prelude.Text
        -> KafkaClusterProperty
           -> KafkaClusterClientAuthenticationProperty
              -> KafkaClusterEncryptionInTransitProperty
                 -> Value Prelude.Text
                    -> [PluginProperty] -> Value Prelude.Text -> Connector
mkConnector
  capacity
  connectorConfiguration
  connectorName
  kafkaCluster
  kafkaClusterClientAuthentication
  kafkaClusterEncryptionInTransit
  kafkaConnectVersion
  plugins
  serviceExecutionRoleArn
  = Connector
      {capacity = capacity,
       connectorConfiguration = connectorConfiguration,
       connectorName = connectorName, kafkaCluster = kafkaCluster,
       kafkaClusterClientAuthentication = kafkaClusterClientAuthentication,
       kafkaClusterEncryptionInTransit = kafkaClusterEncryptionInTransit,
       kafkaConnectVersion = kafkaConnectVersion, plugins = plugins,
       serviceExecutionRoleArn = serviceExecutionRoleArn,
       connectorDescription = Prelude.Nothing,
       logDelivery = Prelude.Nothing,
       workerConfiguration = Prelude.Nothing}
instance ToResourceProperties Connector where
  toResourceProperties Connector {..}
    = ResourceProperties
        {awsType = "AWS::KafkaConnect::Connector",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Capacity" JSON..= capacity,
                            "ConnectorConfiguration" JSON..= connectorConfiguration,
                            "ConnectorName" JSON..= connectorName,
                            "KafkaCluster" JSON..= kafkaCluster,
                            "KafkaClusterClientAuthentication"
                              JSON..= kafkaClusterClientAuthentication,
                            "KafkaClusterEncryptionInTransit"
                              JSON..= kafkaClusterEncryptionInTransit,
                            "KafkaConnectVersion" JSON..= kafkaConnectVersion,
                            "Plugins" JSON..= plugins,
                            "ServiceExecutionRoleArn" JSON..= serviceExecutionRoleArn]
                           (Prelude.catMaybes
                              [(JSON..=) "ConnectorDescription" Prelude.<$> connectorDescription,
                               (JSON..=) "LogDelivery" Prelude.<$> logDelivery,
                               (JSON..=) "WorkerConfiguration" Prelude.<$> workerConfiguration]))}
instance JSON.ToJSON Connector where
  toJSON Connector {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Capacity" JSON..= capacity,
               "ConnectorConfiguration" JSON..= connectorConfiguration,
               "ConnectorName" JSON..= connectorName,
               "KafkaCluster" JSON..= kafkaCluster,
               "KafkaClusterClientAuthentication"
                 JSON..= kafkaClusterClientAuthentication,
               "KafkaClusterEncryptionInTransit"
                 JSON..= kafkaClusterEncryptionInTransit,
               "KafkaConnectVersion" JSON..= kafkaConnectVersion,
               "Plugins" JSON..= plugins,
               "ServiceExecutionRoleArn" JSON..= serviceExecutionRoleArn]
              (Prelude.catMaybes
                 [(JSON..=) "ConnectorDescription" Prelude.<$> connectorDescription,
                  (JSON..=) "LogDelivery" Prelude.<$> logDelivery,
                  (JSON..=) "WorkerConfiguration" Prelude.<$> workerConfiguration])))
instance Property "Capacity" Connector where
  type PropertyType "Capacity" Connector = CapacityProperty
  set newValue Connector {..} = Connector {capacity = newValue, ..}
instance Property "ConnectorConfiguration" Connector where
  type PropertyType "ConnectorConfiguration" Connector = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue Connector {..}
    = Connector {connectorConfiguration = newValue, ..}
instance Property "ConnectorDescription" Connector where
  type PropertyType "ConnectorDescription" Connector = Value Prelude.Text
  set newValue Connector {..}
    = Connector {connectorDescription = Prelude.pure newValue, ..}
instance Property "ConnectorName" Connector where
  type PropertyType "ConnectorName" Connector = Value Prelude.Text
  set newValue Connector {..}
    = Connector {connectorName = newValue, ..}
instance Property "KafkaCluster" Connector where
  type PropertyType "KafkaCluster" Connector = KafkaClusterProperty
  set newValue Connector {..}
    = Connector {kafkaCluster = newValue, ..}
instance Property "KafkaClusterClientAuthentication" Connector where
  type PropertyType "KafkaClusterClientAuthentication" Connector = KafkaClusterClientAuthenticationProperty
  set newValue Connector {..}
    = Connector {kafkaClusterClientAuthentication = newValue, ..}
instance Property "KafkaClusterEncryptionInTransit" Connector where
  type PropertyType "KafkaClusterEncryptionInTransit" Connector = KafkaClusterEncryptionInTransitProperty
  set newValue Connector {..}
    = Connector {kafkaClusterEncryptionInTransit = newValue, ..}
instance Property "KafkaConnectVersion" Connector where
  type PropertyType "KafkaConnectVersion" Connector = Value Prelude.Text
  set newValue Connector {..}
    = Connector {kafkaConnectVersion = newValue, ..}
instance Property "LogDelivery" Connector where
  type PropertyType "LogDelivery" Connector = LogDeliveryProperty
  set newValue Connector {..}
    = Connector {logDelivery = Prelude.pure newValue, ..}
instance Property "Plugins" Connector where
  type PropertyType "Plugins" Connector = [PluginProperty]
  set newValue Connector {..} = Connector {plugins = newValue, ..}
instance Property "ServiceExecutionRoleArn" Connector where
  type PropertyType "ServiceExecutionRoleArn" Connector = Value Prelude.Text
  set newValue Connector {..}
    = Connector {serviceExecutionRoleArn = newValue, ..}
instance Property "WorkerConfiguration" Connector where
  type PropertyType "WorkerConfiguration" Connector = WorkerConfigurationProperty
  set newValue Connector {..}
    = Connector {workerConfiguration = Prelude.pure newValue, ..}