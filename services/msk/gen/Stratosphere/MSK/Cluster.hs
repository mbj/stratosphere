module Stratosphere.MSK.Cluster (
        module Exports, Cluster(..), mkCluster
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MSK.Cluster.BrokerNodeGroupInfoProperty as Exports
import {-# SOURCE #-} Stratosphere.MSK.Cluster.ClientAuthenticationProperty as Exports
import {-# SOURCE #-} Stratosphere.MSK.Cluster.ConfigurationInfoProperty as Exports
import {-# SOURCE #-} Stratosphere.MSK.Cluster.EncryptionInfoProperty as Exports
import {-# SOURCE #-} Stratosphere.MSK.Cluster.LoggingInfoProperty as Exports
import {-# SOURCE #-} Stratosphere.MSK.Cluster.OpenMonitoringProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Cluster
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-msk-cluster.html>
    Cluster {haddock_workaround_ :: (),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-msk-cluster.html#cfn-msk-cluster-brokernodegroupinfo>
             brokerNodeGroupInfo :: BrokerNodeGroupInfoProperty,
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-msk-cluster.html#cfn-msk-cluster-clientauthentication>
             clientAuthentication :: (Prelude.Maybe ClientAuthenticationProperty),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-msk-cluster.html#cfn-msk-cluster-clustername>
             clusterName :: (Value Prelude.Text),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-msk-cluster.html#cfn-msk-cluster-configurationinfo>
             configurationInfo :: (Prelude.Maybe ConfigurationInfoProperty),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-msk-cluster.html#cfn-msk-cluster-currentversion>
             currentVersion :: (Prelude.Maybe (Value Prelude.Text)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-msk-cluster.html#cfn-msk-cluster-encryptioninfo>
             encryptionInfo :: (Prelude.Maybe EncryptionInfoProperty),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-msk-cluster.html#cfn-msk-cluster-enhancedmonitoring>
             enhancedMonitoring :: (Prelude.Maybe (Value Prelude.Text)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-msk-cluster.html#cfn-msk-cluster-kafkaversion>
             kafkaVersion :: (Value Prelude.Text),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-msk-cluster.html#cfn-msk-cluster-logginginfo>
             loggingInfo :: (Prelude.Maybe LoggingInfoProperty),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-msk-cluster.html#cfn-msk-cluster-numberofbrokernodes>
             numberOfBrokerNodes :: (Value Prelude.Integer),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-msk-cluster.html#cfn-msk-cluster-openmonitoring>
             openMonitoring :: (Prelude.Maybe OpenMonitoringProperty),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-msk-cluster.html#cfn-msk-cluster-storagemode>
             storageMode :: (Prelude.Maybe (Value Prelude.Text)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-msk-cluster.html#cfn-msk-cluster-tags>
             tags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text)))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCluster ::
  BrokerNodeGroupInfoProperty
  -> Value Prelude.Text
     -> Value Prelude.Text -> Value Prelude.Integer -> Cluster
mkCluster
  brokerNodeGroupInfo
  clusterName
  kafkaVersion
  numberOfBrokerNodes
  = Cluster
      {haddock_workaround_ = (),
       brokerNodeGroupInfo = brokerNodeGroupInfo,
       clusterName = clusterName, kafkaVersion = kafkaVersion,
       numberOfBrokerNodes = numberOfBrokerNodes,
       clientAuthentication = Prelude.Nothing,
       configurationInfo = Prelude.Nothing,
       currentVersion = Prelude.Nothing, encryptionInfo = Prelude.Nothing,
       enhancedMonitoring = Prelude.Nothing,
       loggingInfo = Prelude.Nothing, openMonitoring = Prelude.Nothing,
       storageMode = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Cluster where
  toResourceProperties Cluster {..}
    = ResourceProperties
        {awsType = "AWS::MSK::Cluster", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["BrokerNodeGroupInfo" JSON..= brokerNodeGroupInfo,
                            "ClusterName" JSON..= clusterName,
                            "KafkaVersion" JSON..= kafkaVersion,
                            "NumberOfBrokerNodes" JSON..= numberOfBrokerNodes]
                           (Prelude.catMaybes
                              [(JSON..=) "ClientAuthentication" Prelude.<$> clientAuthentication,
                               (JSON..=) "ConfigurationInfo" Prelude.<$> configurationInfo,
                               (JSON..=) "CurrentVersion" Prelude.<$> currentVersion,
                               (JSON..=) "EncryptionInfo" Prelude.<$> encryptionInfo,
                               (JSON..=) "EnhancedMonitoring" Prelude.<$> enhancedMonitoring,
                               (JSON..=) "LoggingInfo" Prelude.<$> loggingInfo,
                               (JSON..=) "OpenMonitoring" Prelude.<$> openMonitoring,
                               (JSON..=) "StorageMode" Prelude.<$> storageMode,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Cluster where
  toJSON Cluster {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["BrokerNodeGroupInfo" JSON..= brokerNodeGroupInfo,
               "ClusterName" JSON..= clusterName,
               "KafkaVersion" JSON..= kafkaVersion,
               "NumberOfBrokerNodes" JSON..= numberOfBrokerNodes]
              (Prelude.catMaybes
                 [(JSON..=) "ClientAuthentication" Prelude.<$> clientAuthentication,
                  (JSON..=) "ConfigurationInfo" Prelude.<$> configurationInfo,
                  (JSON..=) "CurrentVersion" Prelude.<$> currentVersion,
                  (JSON..=) "EncryptionInfo" Prelude.<$> encryptionInfo,
                  (JSON..=) "EnhancedMonitoring" Prelude.<$> enhancedMonitoring,
                  (JSON..=) "LoggingInfo" Prelude.<$> loggingInfo,
                  (JSON..=) "OpenMonitoring" Prelude.<$> openMonitoring,
                  (JSON..=) "StorageMode" Prelude.<$> storageMode,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "BrokerNodeGroupInfo" Cluster where
  type PropertyType "BrokerNodeGroupInfo" Cluster = BrokerNodeGroupInfoProperty
  set newValue Cluster {..}
    = Cluster {brokerNodeGroupInfo = newValue, ..}
instance Property "ClientAuthentication" Cluster where
  type PropertyType "ClientAuthentication" Cluster = ClientAuthenticationProperty
  set newValue Cluster {..}
    = Cluster {clientAuthentication = Prelude.pure newValue, ..}
instance Property "ClusterName" Cluster where
  type PropertyType "ClusterName" Cluster = Value Prelude.Text
  set newValue Cluster {..} = Cluster {clusterName = newValue, ..}
instance Property "ConfigurationInfo" Cluster where
  type PropertyType "ConfigurationInfo" Cluster = ConfigurationInfoProperty
  set newValue Cluster {..}
    = Cluster {configurationInfo = Prelude.pure newValue, ..}
instance Property "CurrentVersion" Cluster where
  type PropertyType "CurrentVersion" Cluster = Value Prelude.Text
  set newValue Cluster {..}
    = Cluster {currentVersion = Prelude.pure newValue, ..}
instance Property "EncryptionInfo" Cluster where
  type PropertyType "EncryptionInfo" Cluster = EncryptionInfoProperty
  set newValue Cluster {..}
    = Cluster {encryptionInfo = Prelude.pure newValue, ..}
instance Property "EnhancedMonitoring" Cluster where
  type PropertyType "EnhancedMonitoring" Cluster = Value Prelude.Text
  set newValue Cluster {..}
    = Cluster {enhancedMonitoring = Prelude.pure newValue, ..}
instance Property "KafkaVersion" Cluster where
  type PropertyType "KafkaVersion" Cluster = Value Prelude.Text
  set newValue Cluster {..} = Cluster {kafkaVersion = newValue, ..}
instance Property "LoggingInfo" Cluster where
  type PropertyType "LoggingInfo" Cluster = LoggingInfoProperty
  set newValue Cluster {..}
    = Cluster {loggingInfo = Prelude.pure newValue, ..}
instance Property "NumberOfBrokerNodes" Cluster where
  type PropertyType "NumberOfBrokerNodes" Cluster = Value Prelude.Integer
  set newValue Cluster {..}
    = Cluster {numberOfBrokerNodes = newValue, ..}
instance Property "OpenMonitoring" Cluster where
  type PropertyType "OpenMonitoring" Cluster = OpenMonitoringProperty
  set newValue Cluster {..}
    = Cluster {openMonitoring = Prelude.pure newValue, ..}
instance Property "StorageMode" Cluster where
  type PropertyType "StorageMode" Cluster = Value Prelude.Text
  set newValue Cluster {..}
    = Cluster {storageMode = Prelude.pure newValue, ..}
instance Property "Tags" Cluster where
  type PropertyType "Tags" Cluster = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue Cluster {..}
    = Cluster {tags = Prelude.pure newValue, ..}