module Stratosphere.Redshift.Cluster (
        module Exports, Cluster(..), mkCluster
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Redshift.Cluster.EndpointProperty as Exports
import {-# SOURCE #-} Stratosphere.Redshift.Cluster.LoggingPropertiesProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Cluster
  = Cluster {allowVersionUpgrade :: (Prelude.Maybe (Value Prelude.Bool)),
             aquaConfigurationStatus :: (Prelude.Maybe (Value Prelude.Text)),
             automatedSnapshotRetentionPeriod :: (Prelude.Maybe (Value Prelude.Integer)),
             availabilityZone :: (Prelude.Maybe (Value Prelude.Text)),
             availabilityZoneRelocation :: (Prelude.Maybe (Value Prelude.Bool)),
             availabilityZoneRelocationStatus :: (Prelude.Maybe (Value Prelude.Text)),
             classic :: (Prelude.Maybe (Value Prelude.Bool)),
             clusterIdentifier :: (Prelude.Maybe (Value Prelude.Text)),
             clusterParameterGroupName :: (Prelude.Maybe (Value Prelude.Text)),
             clusterSecurityGroups :: (Prelude.Maybe (ValueList Prelude.Text)),
             clusterSubnetGroupName :: (Prelude.Maybe (Value Prelude.Text)),
             clusterType :: (Value Prelude.Text),
             clusterVersion :: (Prelude.Maybe (Value Prelude.Text)),
             dBName :: (Value Prelude.Text),
             deferMaintenance :: (Prelude.Maybe (Value Prelude.Bool)),
             deferMaintenanceDuration :: (Prelude.Maybe (Value Prelude.Integer)),
             deferMaintenanceEndTime :: (Prelude.Maybe (Value Prelude.Text)),
             deferMaintenanceStartTime :: (Prelude.Maybe (Value Prelude.Text)),
             destinationRegion :: (Prelude.Maybe (Value Prelude.Text)),
             elasticIp :: (Prelude.Maybe (Value Prelude.Text)),
             encrypted :: (Prelude.Maybe (Value Prelude.Bool)),
             endpoint :: (Prelude.Maybe EndpointProperty),
             enhancedVpcRouting :: (Prelude.Maybe (Value Prelude.Bool)),
             hsmClientCertificateIdentifier :: (Prelude.Maybe (Value Prelude.Text)),
             hsmConfigurationIdentifier :: (Prelude.Maybe (Value Prelude.Text)),
             iamRoles :: (Prelude.Maybe (ValueList Prelude.Text)),
             kmsKeyId :: (Prelude.Maybe (Value Prelude.Text)),
             loggingProperties :: (Prelude.Maybe LoggingPropertiesProperty),
             maintenanceTrackName :: (Prelude.Maybe (Value Prelude.Text)),
             manualSnapshotRetentionPeriod :: (Prelude.Maybe (Value Prelude.Integer)),
             masterUserPassword :: (Value Prelude.Text),
             masterUsername :: (Value Prelude.Text),
             nodeType :: (Value Prelude.Text),
             numberOfNodes :: (Prelude.Maybe (Value Prelude.Integer)),
             ownerAccount :: (Prelude.Maybe (Value Prelude.Text)),
             port :: (Prelude.Maybe (Value Prelude.Integer)),
             preferredMaintenanceWindow :: (Prelude.Maybe (Value Prelude.Text)),
             publiclyAccessible :: (Prelude.Maybe (Value Prelude.Bool)),
             resourceAction :: (Prelude.Maybe (Value Prelude.Text)),
             revisionTarget :: (Prelude.Maybe (Value Prelude.Text)),
             rotateEncryptionKey :: (Prelude.Maybe (Value Prelude.Bool)),
             snapshotClusterIdentifier :: (Prelude.Maybe (Value Prelude.Text)),
             snapshotCopyGrantName :: (Prelude.Maybe (Value Prelude.Text)),
             snapshotCopyManual :: (Prelude.Maybe (Value Prelude.Bool)),
             snapshotCopyRetentionPeriod :: (Prelude.Maybe (Value Prelude.Integer)),
             snapshotIdentifier :: (Prelude.Maybe (Value Prelude.Text)),
             tags :: (Prelude.Maybe [Tag]),
             vpcSecurityGroupIds :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCluster ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text
        -> Value Prelude.Text -> Value Prelude.Text -> Cluster
mkCluster
  clusterType
  dBName
  masterUserPassword
  masterUsername
  nodeType
  = Cluster
      {clusterType = clusterType, dBName = dBName,
       masterUserPassword = masterUserPassword,
       masterUsername = masterUsername, nodeType = nodeType,
       allowVersionUpgrade = Prelude.Nothing,
       aquaConfigurationStatus = Prelude.Nothing,
       automatedSnapshotRetentionPeriod = Prelude.Nothing,
       availabilityZone = Prelude.Nothing,
       availabilityZoneRelocation = Prelude.Nothing,
       availabilityZoneRelocationStatus = Prelude.Nothing,
       classic = Prelude.Nothing, clusterIdentifier = Prelude.Nothing,
       clusterParameterGroupName = Prelude.Nothing,
       clusterSecurityGroups = Prelude.Nothing,
       clusterSubnetGroupName = Prelude.Nothing,
       clusterVersion = Prelude.Nothing,
       deferMaintenance = Prelude.Nothing,
       deferMaintenanceDuration = Prelude.Nothing,
       deferMaintenanceEndTime = Prelude.Nothing,
       deferMaintenanceStartTime = Prelude.Nothing,
       destinationRegion = Prelude.Nothing, elasticIp = Prelude.Nothing,
       encrypted = Prelude.Nothing, endpoint = Prelude.Nothing,
       enhancedVpcRouting = Prelude.Nothing,
       hsmClientCertificateIdentifier = Prelude.Nothing,
       hsmConfigurationIdentifier = Prelude.Nothing,
       iamRoles = Prelude.Nothing, kmsKeyId = Prelude.Nothing,
       loggingProperties = Prelude.Nothing,
       maintenanceTrackName = Prelude.Nothing,
       manualSnapshotRetentionPeriod = Prelude.Nothing,
       numberOfNodes = Prelude.Nothing, ownerAccount = Prelude.Nothing,
       port = Prelude.Nothing,
       preferredMaintenanceWindow = Prelude.Nothing,
       publiclyAccessible = Prelude.Nothing,
       resourceAction = Prelude.Nothing, revisionTarget = Prelude.Nothing,
       rotateEncryptionKey = Prelude.Nothing,
       snapshotClusterIdentifier = Prelude.Nothing,
       snapshotCopyGrantName = Prelude.Nothing,
       snapshotCopyManual = Prelude.Nothing,
       snapshotCopyRetentionPeriod = Prelude.Nothing,
       snapshotIdentifier = Prelude.Nothing, tags = Prelude.Nothing,
       vpcSecurityGroupIds = Prelude.Nothing}
instance ToResourceProperties Cluster where
  toResourceProperties Cluster {..}
    = ResourceProperties
        {awsType = "AWS::Redshift::Cluster", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ClusterType" JSON..= clusterType, "DBName" JSON..= dBName,
                            "MasterUserPassword" JSON..= masterUserPassword,
                            "MasterUsername" JSON..= masterUsername,
                            "NodeType" JSON..= nodeType]
                           (Prelude.catMaybes
                              [(JSON..=) "AllowVersionUpgrade" Prelude.<$> allowVersionUpgrade,
                               (JSON..=) "AquaConfigurationStatus"
                                 Prelude.<$> aquaConfigurationStatus,
                               (JSON..=) "AutomatedSnapshotRetentionPeriod"
                                 Prelude.<$> automatedSnapshotRetentionPeriod,
                               (JSON..=) "AvailabilityZone" Prelude.<$> availabilityZone,
                               (JSON..=) "AvailabilityZoneRelocation"
                                 Prelude.<$> availabilityZoneRelocation,
                               (JSON..=) "AvailabilityZoneRelocationStatus"
                                 Prelude.<$> availabilityZoneRelocationStatus,
                               (JSON..=) "Classic" Prelude.<$> classic,
                               (JSON..=) "ClusterIdentifier" Prelude.<$> clusterIdentifier,
                               (JSON..=) "ClusterParameterGroupName"
                                 Prelude.<$> clusterParameterGroupName,
                               (JSON..=) "ClusterSecurityGroups"
                                 Prelude.<$> clusterSecurityGroups,
                               (JSON..=) "ClusterSubnetGroupName"
                                 Prelude.<$> clusterSubnetGroupName,
                               (JSON..=) "ClusterVersion" Prelude.<$> clusterVersion,
                               (JSON..=) "DeferMaintenance" Prelude.<$> deferMaintenance,
                               (JSON..=) "DeferMaintenanceDuration"
                                 Prelude.<$> deferMaintenanceDuration,
                               (JSON..=) "DeferMaintenanceEndTime"
                                 Prelude.<$> deferMaintenanceEndTime,
                               (JSON..=) "DeferMaintenanceStartTime"
                                 Prelude.<$> deferMaintenanceStartTime,
                               (JSON..=) "DestinationRegion" Prelude.<$> destinationRegion,
                               (JSON..=) "ElasticIp" Prelude.<$> elasticIp,
                               (JSON..=) "Encrypted" Prelude.<$> encrypted,
                               (JSON..=) "Endpoint" Prelude.<$> endpoint,
                               (JSON..=) "EnhancedVpcRouting" Prelude.<$> enhancedVpcRouting,
                               (JSON..=) "HsmClientCertificateIdentifier"
                                 Prelude.<$> hsmClientCertificateIdentifier,
                               (JSON..=) "HsmConfigurationIdentifier"
                                 Prelude.<$> hsmConfigurationIdentifier,
                               (JSON..=) "IamRoles" Prelude.<$> iamRoles,
                               (JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId,
                               (JSON..=) "LoggingProperties" Prelude.<$> loggingProperties,
                               (JSON..=) "MaintenanceTrackName" Prelude.<$> maintenanceTrackName,
                               (JSON..=) "ManualSnapshotRetentionPeriod"
                                 Prelude.<$> manualSnapshotRetentionPeriod,
                               (JSON..=) "NumberOfNodes" Prelude.<$> numberOfNodes,
                               (JSON..=) "OwnerAccount" Prelude.<$> ownerAccount,
                               (JSON..=) "Port" Prelude.<$> port,
                               (JSON..=) "PreferredMaintenanceWindow"
                                 Prelude.<$> preferredMaintenanceWindow,
                               (JSON..=) "PubliclyAccessible" Prelude.<$> publiclyAccessible,
                               (JSON..=) "ResourceAction" Prelude.<$> resourceAction,
                               (JSON..=) "RevisionTarget" Prelude.<$> revisionTarget,
                               (JSON..=) "RotateEncryptionKey" Prelude.<$> rotateEncryptionKey,
                               (JSON..=) "SnapshotClusterIdentifier"
                                 Prelude.<$> snapshotClusterIdentifier,
                               (JSON..=) "SnapshotCopyGrantName"
                                 Prelude.<$> snapshotCopyGrantName,
                               (JSON..=) "SnapshotCopyManual" Prelude.<$> snapshotCopyManual,
                               (JSON..=) "SnapshotCopyRetentionPeriod"
                                 Prelude.<$> snapshotCopyRetentionPeriod,
                               (JSON..=) "SnapshotIdentifier" Prelude.<$> snapshotIdentifier,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "VpcSecurityGroupIds" Prelude.<$> vpcSecurityGroupIds]))}
instance JSON.ToJSON Cluster where
  toJSON Cluster {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ClusterType" JSON..= clusterType, "DBName" JSON..= dBName,
               "MasterUserPassword" JSON..= masterUserPassword,
               "MasterUsername" JSON..= masterUsername,
               "NodeType" JSON..= nodeType]
              (Prelude.catMaybes
                 [(JSON..=) "AllowVersionUpgrade" Prelude.<$> allowVersionUpgrade,
                  (JSON..=) "AquaConfigurationStatus"
                    Prelude.<$> aquaConfigurationStatus,
                  (JSON..=) "AutomatedSnapshotRetentionPeriod"
                    Prelude.<$> automatedSnapshotRetentionPeriod,
                  (JSON..=) "AvailabilityZone" Prelude.<$> availabilityZone,
                  (JSON..=) "AvailabilityZoneRelocation"
                    Prelude.<$> availabilityZoneRelocation,
                  (JSON..=) "AvailabilityZoneRelocationStatus"
                    Prelude.<$> availabilityZoneRelocationStatus,
                  (JSON..=) "Classic" Prelude.<$> classic,
                  (JSON..=) "ClusterIdentifier" Prelude.<$> clusterIdentifier,
                  (JSON..=) "ClusterParameterGroupName"
                    Prelude.<$> clusterParameterGroupName,
                  (JSON..=) "ClusterSecurityGroups"
                    Prelude.<$> clusterSecurityGroups,
                  (JSON..=) "ClusterSubnetGroupName"
                    Prelude.<$> clusterSubnetGroupName,
                  (JSON..=) "ClusterVersion" Prelude.<$> clusterVersion,
                  (JSON..=) "DeferMaintenance" Prelude.<$> deferMaintenance,
                  (JSON..=) "DeferMaintenanceDuration"
                    Prelude.<$> deferMaintenanceDuration,
                  (JSON..=) "DeferMaintenanceEndTime"
                    Prelude.<$> deferMaintenanceEndTime,
                  (JSON..=) "DeferMaintenanceStartTime"
                    Prelude.<$> deferMaintenanceStartTime,
                  (JSON..=) "DestinationRegion" Prelude.<$> destinationRegion,
                  (JSON..=) "ElasticIp" Prelude.<$> elasticIp,
                  (JSON..=) "Encrypted" Prelude.<$> encrypted,
                  (JSON..=) "Endpoint" Prelude.<$> endpoint,
                  (JSON..=) "EnhancedVpcRouting" Prelude.<$> enhancedVpcRouting,
                  (JSON..=) "HsmClientCertificateIdentifier"
                    Prelude.<$> hsmClientCertificateIdentifier,
                  (JSON..=) "HsmConfigurationIdentifier"
                    Prelude.<$> hsmConfigurationIdentifier,
                  (JSON..=) "IamRoles" Prelude.<$> iamRoles,
                  (JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId,
                  (JSON..=) "LoggingProperties" Prelude.<$> loggingProperties,
                  (JSON..=) "MaintenanceTrackName" Prelude.<$> maintenanceTrackName,
                  (JSON..=) "ManualSnapshotRetentionPeriod"
                    Prelude.<$> manualSnapshotRetentionPeriod,
                  (JSON..=) "NumberOfNodes" Prelude.<$> numberOfNodes,
                  (JSON..=) "OwnerAccount" Prelude.<$> ownerAccount,
                  (JSON..=) "Port" Prelude.<$> port,
                  (JSON..=) "PreferredMaintenanceWindow"
                    Prelude.<$> preferredMaintenanceWindow,
                  (JSON..=) "PubliclyAccessible" Prelude.<$> publiclyAccessible,
                  (JSON..=) "ResourceAction" Prelude.<$> resourceAction,
                  (JSON..=) "RevisionTarget" Prelude.<$> revisionTarget,
                  (JSON..=) "RotateEncryptionKey" Prelude.<$> rotateEncryptionKey,
                  (JSON..=) "SnapshotClusterIdentifier"
                    Prelude.<$> snapshotClusterIdentifier,
                  (JSON..=) "SnapshotCopyGrantName"
                    Prelude.<$> snapshotCopyGrantName,
                  (JSON..=) "SnapshotCopyManual" Prelude.<$> snapshotCopyManual,
                  (JSON..=) "SnapshotCopyRetentionPeriod"
                    Prelude.<$> snapshotCopyRetentionPeriod,
                  (JSON..=) "SnapshotIdentifier" Prelude.<$> snapshotIdentifier,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "VpcSecurityGroupIds" Prelude.<$> vpcSecurityGroupIds])))
instance Property "AllowVersionUpgrade" Cluster where
  type PropertyType "AllowVersionUpgrade" Cluster = Value Prelude.Bool
  set newValue Cluster {..}
    = Cluster {allowVersionUpgrade = Prelude.pure newValue, ..}
instance Property "AquaConfigurationStatus" Cluster where
  type PropertyType "AquaConfigurationStatus" Cluster = Value Prelude.Text
  set newValue Cluster {..}
    = Cluster {aquaConfigurationStatus = Prelude.pure newValue, ..}
instance Property "AutomatedSnapshotRetentionPeriod" Cluster where
  type PropertyType "AutomatedSnapshotRetentionPeriod" Cluster = Value Prelude.Integer
  set newValue Cluster {..}
    = Cluster
        {automatedSnapshotRetentionPeriod = Prelude.pure newValue, ..}
instance Property "AvailabilityZone" Cluster where
  type PropertyType "AvailabilityZone" Cluster = Value Prelude.Text
  set newValue Cluster {..}
    = Cluster {availabilityZone = Prelude.pure newValue, ..}
instance Property "AvailabilityZoneRelocation" Cluster where
  type PropertyType "AvailabilityZoneRelocation" Cluster = Value Prelude.Bool
  set newValue Cluster {..}
    = Cluster {availabilityZoneRelocation = Prelude.pure newValue, ..}
instance Property "AvailabilityZoneRelocationStatus" Cluster where
  type PropertyType "AvailabilityZoneRelocationStatus" Cluster = Value Prelude.Text
  set newValue Cluster {..}
    = Cluster
        {availabilityZoneRelocationStatus = Prelude.pure newValue, ..}
instance Property "Classic" Cluster where
  type PropertyType "Classic" Cluster = Value Prelude.Bool
  set newValue Cluster {..}
    = Cluster {classic = Prelude.pure newValue, ..}
instance Property "ClusterIdentifier" Cluster where
  type PropertyType "ClusterIdentifier" Cluster = Value Prelude.Text
  set newValue Cluster {..}
    = Cluster {clusterIdentifier = Prelude.pure newValue, ..}
instance Property "ClusterParameterGroupName" Cluster where
  type PropertyType "ClusterParameterGroupName" Cluster = Value Prelude.Text
  set newValue Cluster {..}
    = Cluster {clusterParameterGroupName = Prelude.pure newValue, ..}
instance Property "ClusterSecurityGroups" Cluster where
  type PropertyType "ClusterSecurityGroups" Cluster = ValueList Prelude.Text
  set newValue Cluster {..}
    = Cluster {clusterSecurityGroups = Prelude.pure newValue, ..}
instance Property "ClusterSubnetGroupName" Cluster where
  type PropertyType "ClusterSubnetGroupName" Cluster = Value Prelude.Text
  set newValue Cluster {..}
    = Cluster {clusterSubnetGroupName = Prelude.pure newValue, ..}
instance Property "ClusterType" Cluster where
  type PropertyType "ClusterType" Cluster = Value Prelude.Text
  set newValue Cluster {..} = Cluster {clusterType = newValue, ..}
instance Property "ClusterVersion" Cluster where
  type PropertyType "ClusterVersion" Cluster = Value Prelude.Text
  set newValue Cluster {..}
    = Cluster {clusterVersion = Prelude.pure newValue, ..}
instance Property "DBName" Cluster where
  type PropertyType "DBName" Cluster = Value Prelude.Text
  set newValue Cluster {..} = Cluster {dBName = newValue, ..}
instance Property "DeferMaintenance" Cluster where
  type PropertyType "DeferMaintenance" Cluster = Value Prelude.Bool
  set newValue Cluster {..}
    = Cluster {deferMaintenance = Prelude.pure newValue, ..}
instance Property "DeferMaintenanceDuration" Cluster where
  type PropertyType "DeferMaintenanceDuration" Cluster = Value Prelude.Integer
  set newValue Cluster {..}
    = Cluster {deferMaintenanceDuration = Prelude.pure newValue, ..}
instance Property "DeferMaintenanceEndTime" Cluster where
  type PropertyType "DeferMaintenanceEndTime" Cluster = Value Prelude.Text
  set newValue Cluster {..}
    = Cluster {deferMaintenanceEndTime = Prelude.pure newValue, ..}
instance Property "DeferMaintenanceStartTime" Cluster where
  type PropertyType "DeferMaintenanceStartTime" Cluster = Value Prelude.Text
  set newValue Cluster {..}
    = Cluster {deferMaintenanceStartTime = Prelude.pure newValue, ..}
instance Property "DestinationRegion" Cluster where
  type PropertyType "DestinationRegion" Cluster = Value Prelude.Text
  set newValue Cluster {..}
    = Cluster {destinationRegion = Prelude.pure newValue, ..}
instance Property "ElasticIp" Cluster where
  type PropertyType "ElasticIp" Cluster = Value Prelude.Text
  set newValue Cluster {..}
    = Cluster {elasticIp = Prelude.pure newValue, ..}
instance Property "Encrypted" Cluster where
  type PropertyType "Encrypted" Cluster = Value Prelude.Bool
  set newValue Cluster {..}
    = Cluster {encrypted = Prelude.pure newValue, ..}
instance Property "Endpoint" Cluster where
  type PropertyType "Endpoint" Cluster = EndpointProperty
  set newValue Cluster {..}
    = Cluster {endpoint = Prelude.pure newValue, ..}
instance Property "EnhancedVpcRouting" Cluster where
  type PropertyType "EnhancedVpcRouting" Cluster = Value Prelude.Bool
  set newValue Cluster {..}
    = Cluster {enhancedVpcRouting = Prelude.pure newValue, ..}
instance Property "HsmClientCertificateIdentifier" Cluster where
  type PropertyType "HsmClientCertificateIdentifier" Cluster = Value Prelude.Text
  set newValue Cluster {..}
    = Cluster
        {hsmClientCertificateIdentifier = Prelude.pure newValue, ..}
instance Property "HsmConfigurationIdentifier" Cluster where
  type PropertyType "HsmConfigurationIdentifier" Cluster = Value Prelude.Text
  set newValue Cluster {..}
    = Cluster {hsmConfigurationIdentifier = Prelude.pure newValue, ..}
instance Property "IamRoles" Cluster where
  type PropertyType "IamRoles" Cluster = ValueList Prelude.Text
  set newValue Cluster {..}
    = Cluster {iamRoles = Prelude.pure newValue, ..}
instance Property "KmsKeyId" Cluster where
  type PropertyType "KmsKeyId" Cluster = Value Prelude.Text
  set newValue Cluster {..}
    = Cluster {kmsKeyId = Prelude.pure newValue, ..}
instance Property "LoggingProperties" Cluster where
  type PropertyType "LoggingProperties" Cluster = LoggingPropertiesProperty
  set newValue Cluster {..}
    = Cluster {loggingProperties = Prelude.pure newValue, ..}
instance Property "MaintenanceTrackName" Cluster where
  type PropertyType "MaintenanceTrackName" Cluster = Value Prelude.Text
  set newValue Cluster {..}
    = Cluster {maintenanceTrackName = Prelude.pure newValue, ..}
instance Property "ManualSnapshotRetentionPeriod" Cluster where
  type PropertyType "ManualSnapshotRetentionPeriod" Cluster = Value Prelude.Integer
  set newValue Cluster {..}
    = Cluster
        {manualSnapshotRetentionPeriod = Prelude.pure newValue, ..}
instance Property "MasterUserPassword" Cluster where
  type PropertyType "MasterUserPassword" Cluster = Value Prelude.Text
  set newValue Cluster {..}
    = Cluster {masterUserPassword = newValue, ..}
instance Property "MasterUsername" Cluster where
  type PropertyType "MasterUsername" Cluster = Value Prelude.Text
  set newValue Cluster {..} = Cluster {masterUsername = newValue, ..}
instance Property "NodeType" Cluster where
  type PropertyType "NodeType" Cluster = Value Prelude.Text
  set newValue Cluster {..} = Cluster {nodeType = newValue, ..}
instance Property "NumberOfNodes" Cluster where
  type PropertyType "NumberOfNodes" Cluster = Value Prelude.Integer
  set newValue Cluster {..}
    = Cluster {numberOfNodes = Prelude.pure newValue, ..}
instance Property "OwnerAccount" Cluster where
  type PropertyType "OwnerAccount" Cluster = Value Prelude.Text
  set newValue Cluster {..}
    = Cluster {ownerAccount = Prelude.pure newValue, ..}
instance Property "Port" Cluster where
  type PropertyType "Port" Cluster = Value Prelude.Integer
  set newValue Cluster {..}
    = Cluster {port = Prelude.pure newValue, ..}
instance Property "PreferredMaintenanceWindow" Cluster where
  type PropertyType "PreferredMaintenanceWindow" Cluster = Value Prelude.Text
  set newValue Cluster {..}
    = Cluster {preferredMaintenanceWindow = Prelude.pure newValue, ..}
instance Property "PubliclyAccessible" Cluster where
  type PropertyType "PubliclyAccessible" Cluster = Value Prelude.Bool
  set newValue Cluster {..}
    = Cluster {publiclyAccessible = Prelude.pure newValue, ..}
instance Property "ResourceAction" Cluster where
  type PropertyType "ResourceAction" Cluster = Value Prelude.Text
  set newValue Cluster {..}
    = Cluster {resourceAction = Prelude.pure newValue, ..}
instance Property "RevisionTarget" Cluster where
  type PropertyType "RevisionTarget" Cluster = Value Prelude.Text
  set newValue Cluster {..}
    = Cluster {revisionTarget = Prelude.pure newValue, ..}
instance Property "RotateEncryptionKey" Cluster where
  type PropertyType "RotateEncryptionKey" Cluster = Value Prelude.Bool
  set newValue Cluster {..}
    = Cluster {rotateEncryptionKey = Prelude.pure newValue, ..}
instance Property "SnapshotClusterIdentifier" Cluster where
  type PropertyType "SnapshotClusterIdentifier" Cluster = Value Prelude.Text
  set newValue Cluster {..}
    = Cluster {snapshotClusterIdentifier = Prelude.pure newValue, ..}
instance Property "SnapshotCopyGrantName" Cluster where
  type PropertyType "SnapshotCopyGrantName" Cluster = Value Prelude.Text
  set newValue Cluster {..}
    = Cluster {snapshotCopyGrantName = Prelude.pure newValue, ..}
instance Property "SnapshotCopyManual" Cluster where
  type PropertyType "SnapshotCopyManual" Cluster = Value Prelude.Bool
  set newValue Cluster {..}
    = Cluster {snapshotCopyManual = Prelude.pure newValue, ..}
instance Property "SnapshotCopyRetentionPeriod" Cluster where
  type PropertyType "SnapshotCopyRetentionPeriod" Cluster = Value Prelude.Integer
  set newValue Cluster {..}
    = Cluster {snapshotCopyRetentionPeriod = Prelude.pure newValue, ..}
instance Property "SnapshotIdentifier" Cluster where
  type PropertyType "SnapshotIdentifier" Cluster = Value Prelude.Text
  set newValue Cluster {..}
    = Cluster {snapshotIdentifier = Prelude.pure newValue, ..}
instance Property "Tags" Cluster where
  type PropertyType "Tags" Cluster = [Tag]
  set newValue Cluster {..}
    = Cluster {tags = Prelude.pure newValue, ..}
instance Property "VpcSecurityGroupIds" Cluster where
  type PropertyType "VpcSecurityGroupIds" Cluster = ValueList Prelude.Text
  set newValue Cluster {..}
    = Cluster {vpcSecurityGroupIds = Prelude.pure newValue, ..}