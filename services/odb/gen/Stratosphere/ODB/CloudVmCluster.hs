module Stratosphere.ODB.CloudVmCluster (
        module Exports, CloudVmCluster(..), mkCloudVmCluster
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ODB.CloudVmCluster.DataCollectionOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.ODB.CloudVmCluster.DbNodeProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data CloudVmCluster
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-odb-cloudvmcluster.html>
    CloudVmCluster {haddock_workaround_ :: (),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-odb-cloudvmcluster.html#cfn-odb-cloudvmcluster-cloudexadatainfrastructureid>
                    cloudExadataInfrastructureId :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-odb-cloudvmcluster.html#cfn-odb-cloudvmcluster-clustername>
                    clusterName :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-odb-cloudvmcluster.html#cfn-odb-cloudvmcluster-cpucorecount>
                    cpuCoreCount :: (Prelude.Maybe (Value Prelude.Integer)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-odb-cloudvmcluster.html#cfn-odb-cloudvmcluster-datacollectionoptions>
                    dataCollectionOptions :: (Prelude.Maybe DataCollectionOptionsProperty),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-odb-cloudvmcluster.html#cfn-odb-cloudvmcluster-datastoragesizeintbs>
                    dataStorageSizeInTBs :: (Prelude.Maybe (Value Prelude.Double)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-odb-cloudvmcluster.html#cfn-odb-cloudvmcluster-dbnodestoragesizeingbs>
                    dbNodeStorageSizeInGBs :: (Prelude.Maybe (Value Prelude.Integer)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-odb-cloudvmcluster.html#cfn-odb-cloudvmcluster-dbnodes>
                    dbNodes :: (Prelude.Maybe [DbNodeProperty]),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-odb-cloudvmcluster.html#cfn-odb-cloudvmcluster-dbservers>
                    dbServers :: (Prelude.Maybe (ValueList Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-odb-cloudvmcluster.html#cfn-odb-cloudvmcluster-displayname>
                    displayName :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-odb-cloudvmcluster.html#cfn-odb-cloudvmcluster-giversion>
                    giVersion :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-odb-cloudvmcluster.html#cfn-odb-cloudvmcluster-hostname>
                    hostname :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-odb-cloudvmcluster.html#cfn-odb-cloudvmcluster-islocalbackupenabled>
                    isLocalBackupEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-odb-cloudvmcluster.html#cfn-odb-cloudvmcluster-issparsediskgroupenabled>
                    isSparseDiskgroupEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-odb-cloudvmcluster.html#cfn-odb-cloudvmcluster-licensemodel>
                    licenseModel :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-odb-cloudvmcluster.html#cfn-odb-cloudvmcluster-memorysizeingbs>
                    memorySizeInGBs :: (Prelude.Maybe (Value Prelude.Integer)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-odb-cloudvmcluster.html#cfn-odb-cloudvmcluster-odbnetworkid>
                    odbNetworkId :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-odb-cloudvmcluster.html#cfn-odb-cloudvmcluster-scanlistenerporttcp>
                    scanListenerPortTcp :: (Prelude.Maybe (Value Prelude.Integer)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-odb-cloudvmcluster.html#cfn-odb-cloudvmcluster-sshpublickeys>
                    sshPublicKeys :: (Prelude.Maybe (ValueList Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-odb-cloudvmcluster.html#cfn-odb-cloudvmcluster-systemversion>
                    systemVersion :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-odb-cloudvmcluster.html#cfn-odb-cloudvmcluster-tags>
                    tags :: (Prelude.Maybe [Tag]),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-odb-cloudvmcluster.html#cfn-odb-cloudvmcluster-timezone>
                    timeZone :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCloudVmCluster :: CloudVmCluster
mkCloudVmCluster
  = CloudVmCluster
      {haddock_workaround_ = (),
       cloudExadataInfrastructureId = Prelude.Nothing,
       clusterName = Prelude.Nothing, cpuCoreCount = Prelude.Nothing,
       dataCollectionOptions = Prelude.Nothing,
       dataStorageSizeInTBs = Prelude.Nothing,
       dbNodeStorageSizeInGBs = Prelude.Nothing,
       dbNodes = Prelude.Nothing, dbServers = Prelude.Nothing,
       displayName = Prelude.Nothing, giVersion = Prelude.Nothing,
       hostname = Prelude.Nothing, isLocalBackupEnabled = Prelude.Nothing,
       isSparseDiskgroupEnabled = Prelude.Nothing,
       licenseModel = Prelude.Nothing, memorySizeInGBs = Prelude.Nothing,
       odbNetworkId = Prelude.Nothing,
       scanListenerPortTcp = Prelude.Nothing,
       sshPublicKeys = Prelude.Nothing, systemVersion = Prelude.Nothing,
       tags = Prelude.Nothing, timeZone = Prelude.Nothing}
instance ToResourceProperties CloudVmCluster where
  toResourceProperties CloudVmCluster {..}
    = ResourceProperties
        {awsType = "AWS::ODB::CloudVmCluster", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CloudExadataInfrastructureId"
                              Prelude.<$> cloudExadataInfrastructureId,
                            (JSON..=) "ClusterName" Prelude.<$> clusterName,
                            (JSON..=) "CpuCoreCount" Prelude.<$> cpuCoreCount,
                            (JSON..=) "DataCollectionOptions"
                              Prelude.<$> dataCollectionOptions,
                            (JSON..=) "DataStorageSizeInTBs" Prelude.<$> dataStorageSizeInTBs,
                            (JSON..=) "DbNodeStorageSizeInGBs"
                              Prelude.<$> dbNodeStorageSizeInGBs,
                            (JSON..=) "DbNodes" Prelude.<$> dbNodes,
                            (JSON..=) "DbServers" Prelude.<$> dbServers,
                            (JSON..=) "DisplayName" Prelude.<$> displayName,
                            (JSON..=) "GiVersion" Prelude.<$> giVersion,
                            (JSON..=) "Hostname" Prelude.<$> hostname,
                            (JSON..=) "IsLocalBackupEnabled" Prelude.<$> isLocalBackupEnabled,
                            (JSON..=) "IsSparseDiskgroupEnabled"
                              Prelude.<$> isSparseDiskgroupEnabled,
                            (JSON..=) "LicenseModel" Prelude.<$> licenseModel,
                            (JSON..=) "MemorySizeInGBs" Prelude.<$> memorySizeInGBs,
                            (JSON..=) "OdbNetworkId" Prelude.<$> odbNetworkId,
                            (JSON..=) "ScanListenerPortTcp" Prelude.<$> scanListenerPortTcp,
                            (JSON..=) "SshPublicKeys" Prelude.<$> sshPublicKeys,
                            (JSON..=) "SystemVersion" Prelude.<$> systemVersion,
                            (JSON..=) "Tags" Prelude.<$> tags,
                            (JSON..=) "TimeZone" Prelude.<$> timeZone])}
instance JSON.ToJSON CloudVmCluster where
  toJSON CloudVmCluster {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CloudExadataInfrastructureId"
                 Prelude.<$> cloudExadataInfrastructureId,
               (JSON..=) "ClusterName" Prelude.<$> clusterName,
               (JSON..=) "CpuCoreCount" Prelude.<$> cpuCoreCount,
               (JSON..=) "DataCollectionOptions"
                 Prelude.<$> dataCollectionOptions,
               (JSON..=) "DataStorageSizeInTBs" Prelude.<$> dataStorageSizeInTBs,
               (JSON..=) "DbNodeStorageSizeInGBs"
                 Prelude.<$> dbNodeStorageSizeInGBs,
               (JSON..=) "DbNodes" Prelude.<$> dbNodes,
               (JSON..=) "DbServers" Prelude.<$> dbServers,
               (JSON..=) "DisplayName" Prelude.<$> displayName,
               (JSON..=) "GiVersion" Prelude.<$> giVersion,
               (JSON..=) "Hostname" Prelude.<$> hostname,
               (JSON..=) "IsLocalBackupEnabled" Prelude.<$> isLocalBackupEnabled,
               (JSON..=) "IsSparseDiskgroupEnabled"
                 Prelude.<$> isSparseDiskgroupEnabled,
               (JSON..=) "LicenseModel" Prelude.<$> licenseModel,
               (JSON..=) "MemorySizeInGBs" Prelude.<$> memorySizeInGBs,
               (JSON..=) "OdbNetworkId" Prelude.<$> odbNetworkId,
               (JSON..=) "ScanListenerPortTcp" Prelude.<$> scanListenerPortTcp,
               (JSON..=) "SshPublicKeys" Prelude.<$> sshPublicKeys,
               (JSON..=) "SystemVersion" Prelude.<$> systemVersion,
               (JSON..=) "Tags" Prelude.<$> tags,
               (JSON..=) "TimeZone" Prelude.<$> timeZone]))
instance Property "CloudExadataInfrastructureId" CloudVmCluster where
  type PropertyType "CloudExadataInfrastructureId" CloudVmCluster = Value Prelude.Text
  set newValue CloudVmCluster {..}
    = CloudVmCluster
        {cloudExadataInfrastructureId = Prelude.pure newValue, ..}
instance Property "ClusterName" CloudVmCluster where
  type PropertyType "ClusterName" CloudVmCluster = Value Prelude.Text
  set newValue CloudVmCluster {..}
    = CloudVmCluster {clusterName = Prelude.pure newValue, ..}
instance Property "CpuCoreCount" CloudVmCluster where
  type PropertyType "CpuCoreCount" CloudVmCluster = Value Prelude.Integer
  set newValue CloudVmCluster {..}
    = CloudVmCluster {cpuCoreCount = Prelude.pure newValue, ..}
instance Property "DataCollectionOptions" CloudVmCluster where
  type PropertyType "DataCollectionOptions" CloudVmCluster = DataCollectionOptionsProperty
  set newValue CloudVmCluster {..}
    = CloudVmCluster
        {dataCollectionOptions = Prelude.pure newValue, ..}
instance Property "DataStorageSizeInTBs" CloudVmCluster where
  type PropertyType "DataStorageSizeInTBs" CloudVmCluster = Value Prelude.Double
  set newValue CloudVmCluster {..}
    = CloudVmCluster {dataStorageSizeInTBs = Prelude.pure newValue, ..}
instance Property "DbNodeStorageSizeInGBs" CloudVmCluster where
  type PropertyType "DbNodeStorageSizeInGBs" CloudVmCluster = Value Prelude.Integer
  set newValue CloudVmCluster {..}
    = CloudVmCluster
        {dbNodeStorageSizeInGBs = Prelude.pure newValue, ..}
instance Property "DbNodes" CloudVmCluster where
  type PropertyType "DbNodes" CloudVmCluster = [DbNodeProperty]
  set newValue CloudVmCluster {..}
    = CloudVmCluster {dbNodes = Prelude.pure newValue, ..}
instance Property "DbServers" CloudVmCluster where
  type PropertyType "DbServers" CloudVmCluster = ValueList Prelude.Text
  set newValue CloudVmCluster {..}
    = CloudVmCluster {dbServers = Prelude.pure newValue, ..}
instance Property "DisplayName" CloudVmCluster where
  type PropertyType "DisplayName" CloudVmCluster = Value Prelude.Text
  set newValue CloudVmCluster {..}
    = CloudVmCluster {displayName = Prelude.pure newValue, ..}
instance Property "GiVersion" CloudVmCluster where
  type PropertyType "GiVersion" CloudVmCluster = Value Prelude.Text
  set newValue CloudVmCluster {..}
    = CloudVmCluster {giVersion = Prelude.pure newValue, ..}
instance Property "Hostname" CloudVmCluster where
  type PropertyType "Hostname" CloudVmCluster = Value Prelude.Text
  set newValue CloudVmCluster {..}
    = CloudVmCluster {hostname = Prelude.pure newValue, ..}
instance Property "IsLocalBackupEnabled" CloudVmCluster where
  type PropertyType "IsLocalBackupEnabled" CloudVmCluster = Value Prelude.Bool
  set newValue CloudVmCluster {..}
    = CloudVmCluster {isLocalBackupEnabled = Prelude.pure newValue, ..}
instance Property "IsSparseDiskgroupEnabled" CloudVmCluster where
  type PropertyType "IsSparseDiskgroupEnabled" CloudVmCluster = Value Prelude.Bool
  set newValue CloudVmCluster {..}
    = CloudVmCluster
        {isSparseDiskgroupEnabled = Prelude.pure newValue, ..}
instance Property "LicenseModel" CloudVmCluster where
  type PropertyType "LicenseModel" CloudVmCluster = Value Prelude.Text
  set newValue CloudVmCluster {..}
    = CloudVmCluster {licenseModel = Prelude.pure newValue, ..}
instance Property "MemorySizeInGBs" CloudVmCluster where
  type PropertyType "MemorySizeInGBs" CloudVmCluster = Value Prelude.Integer
  set newValue CloudVmCluster {..}
    = CloudVmCluster {memorySizeInGBs = Prelude.pure newValue, ..}
instance Property "OdbNetworkId" CloudVmCluster where
  type PropertyType "OdbNetworkId" CloudVmCluster = Value Prelude.Text
  set newValue CloudVmCluster {..}
    = CloudVmCluster {odbNetworkId = Prelude.pure newValue, ..}
instance Property "ScanListenerPortTcp" CloudVmCluster where
  type PropertyType "ScanListenerPortTcp" CloudVmCluster = Value Prelude.Integer
  set newValue CloudVmCluster {..}
    = CloudVmCluster {scanListenerPortTcp = Prelude.pure newValue, ..}
instance Property "SshPublicKeys" CloudVmCluster where
  type PropertyType "SshPublicKeys" CloudVmCluster = ValueList Prelude.Text
  set newValue CloudVmCluster {..}
    = CloudVmCluster {sshPublicKeys = Prelude.pure newValue, ..}
instance Property "SystemVersion" CloudVmCluster where
  type PropertyType "SystemVersion" CloudVmCluster = Value Prelude.Text
  set newValue CloudVmCluster {..}
    = CloudVmCluster {systemVersion = Prelude.pure newValue, ..}
instance Property "Tags" CloudVmCluster where
  type PropertyType "Tags" CloudVmCluster = [Tag]
  set newValue CloudVmCluster {..}
    = CloudVmCluster {tags = Prelude.pure newValue, ..}
instance Property "TimeZone" CloudVmCluster where
  type PropertyType "TimeZone" CloudVmCluster = Value Prelude.Text
  set newValue CloudVmCluster {..}
    = CloudVmCluster {timeZone = Prelude.pure newValue, ..}