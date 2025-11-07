module Stratosphere.ODB.CloudAutonomousVmCluster (
        module Exports, CloudAutonomousVmCluster(..),
        mkCloudAutonomousVmCluster
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ODB.CloudAutonomousVmCluster.MaintenanceWindowProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data CloudAutonomousVmCluster
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-odb-cloudautonomousvmcluster.html>
    CloudAutonomousVmCluster {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-odb-cloudautonomousvmcluster.html#cfn-odb-cloudautonomousvmcluster-autonomousdatastoragesizeintbs>
                              autonomousDataStorageSizeInTBs :: (Prelude.Maybe (Value Prelude.Double)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-odb-cloudautonomousvmcluster.html#cfn-odb-cloudautonomousvmcluster-cloudexadatainfrastructureid>
                              cloudExadataInfrastructureId :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-odb-cloudautonomousvmcluster.html#cfn-odb-cloudautonomousvmcluster-cpucorecountpernode>
                              cpuCoreCountPerNode :: (Prelude.Maybe (Value Prelude.Integer)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-odb-cloudautonomousvmcluster.html#cfn-odb-cloudautonomousvmcluster-dbservers>
                              dbServers :: (Prelude.Maybe (ValueList Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-odb-cloudautonomousvmcluster.html#cfn-odb-cloudautonomousvmcluster-description>
                              description :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-odb-cloudautonomousvmcluster.html#cfn-odb-cloudautonomousvmcluster-displayname>
                              displayName :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-odb-cloudautonomousvmcluster.html#cfn-odb-cloudautonomousvmcluster-ismtlsenabledvmcluster>
                              isMtlsEnabledVmCluster :: (Prelude.Maybe (Value Prelude.Bool)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-odb-cloudautonomousvmcluster.html#cfn-odb-cloudautonomousvmcluster-licensemodel>
                              licenseModel :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-odb-cloudautonomousvmcluster.html#cfn-odb-cloudautonomousvmcluster-maintenancewindow>
                              maintenanceWindow :: (Prelude.Maybe MaintenanceWindowProperty),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-odb-cloudautonomousvmcluster.html#cfn-odb-cloudautonomousvmcluster-memoryperoraclecomputeunitingbs>
                              memoryPerOracleComputeUnitInGBs :: (Prelude.Maybe (Value Prelude.Integer)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-odb-cloudautonomousvmcluster.html#cfn-odb-cloudautonomousvmcluster-odbnetworkid>
                              odbNetworkId :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-odb-cloudautonomousvmcluster.html#cfn-odb-cloudautonomousvmcluster-scanlistenerportnontls>
                              scanListenerPortNonTls :: (Prelude.Maybe (Value Prelude.Integer)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-odb-cloudautonomousvmcluster.html#cfn-odb-cloudautonomousvmcluster-scanlistenerporttls>
                              scanListenerPortTls :: (Prelude.Maybe (Value Prelude.Integer)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-odb-cloudautonomousvmcluster.html#cfn-odb-cloudautonomousvmcluster-tags>
                              tags :: (Prelude.Maybe [Tag]),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-odb-cloudautonomousvmcluster.html#cfn-odb-cloudautonomousvmcluster-timezone>
                              timeZone :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-odb-cloudautonomousvmcluster.html#cfn-odb-cloudautonomousvmcluster-totalcontainerdatabases>
                              totalContainerDatabases :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCloudAutonomousVmCluster :: CloudAutonomousVmCluster
mkCloudAutonomousVmCluster
  = CloudAutonomousVmCluster
      {haddock_workaround_ = (),
       autonomousDataStorageSizeInTBs = Prelude.Nothing,
       cloudExadataInfrastructureId = Prelude.Nothing,
       cpuCoreCountPerNode = Prelude.Nothing, dbServers = Prelude.Nothing,
       description = Prelude.Nothing, displayName = Prelude.Nothing,
       isMtlsEnabledVmCluster = Prelude.Nothing,
       licenseModel = Prelude.Nothing,
       maintenanceWindow = Prelude.Nothing,
       memoryPerOracleComputeUnitInGBs = Prelude.Nothing,
       odbNetworkId = Prelude.Nothing,
       scanListenerPortNonTls = Prelude.Nothing,
       scanListenerPortTls = Prelude.Nothing, tags = Prelude.Nothing,
       timeZone = Prelude.Nothing,
       totalContainerDatabases = Prelude.Nothing}
instance ToResourceProperties CloudAutonomousVmCluster where
  toResourceProperties CloudAutonomousVmCluster {..}
    = ResourceProperties
        {awsType = "AWS::ODB::CloudAutonomousVmCluster",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AutonomousDataStorageSizeInTBs"
                              Prelude.<$> autonomousDataStorageSizeInTBs,
                            (JSON..=) "CloudExadataInfrastructureId"
                              Prelude.<$> cloudExadataInfrastructureId,
                            (JSON..=) "CpuCoreCountPerNode" Prelude.<$> cpuCoreCountPerNode,
                            (JSON..=) "DbServers" Prelude.<$> dbServers,
                            (JSON..=) "Description" Prelude.<$> description,
                            (JSON..=) "DisplayName" Prelude.<$> displayName,
                            (JSON..=) "IsMtlsEnabledVmCluster"
                              Prelude.<$> isMtlsEnabledVmCluster,
                            (JSON..=) "LicenseModel" Prelude.<$> licenseModel,
                            (JSON..=) "MaintenanceWindow" Prelude.<$> maintenanceWindow,
                            (JSON..=) "MemoryPerOracleComputeUnitInGBs"
                              Prelude.<$> memoryPerOracleComputeUnitInGBs,
                            (JSON..=) "OdbNetworkId" Prelude.<$> odbNetworkId,
                            (JSON..=) "ScanListenerPortNonTls"
                              Prelude.<$> scanListenerPortNonTls,
                            (JSON..=) "ScanListenerPortTls" Prelude.<$> scanListenerPortTls,
                            (JSON..=) "Tags" Prelude.<$> tags,
                            (JSON..=) "TimeZone" Prelude.<$> timeZone,
                            (JSON..=) "TotalContainerDatabases"
                              Prelude.<$> totalContainerDatabases])}
instance JSON.ToJSON CloudAutonomousVmCluster where
  toJSON CloudAutonomousVmCluster {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AutonomousDataStorageSizeInTBs"
                 Prelude.<$> autonomousDataStorageSizeInTBs,
               (JSON..=) "CloudExadataInfrastructureId"
                 Prelude.<$> cloudExadataInfrastructureId,
               (JSON..=) "CpuCoreCountPerNode" Prelude.<$> cpuCoreCountPerNode,
               (JSON..=) "DbServers" Prelude.<$> dbServers,
               (JSON..=) "Description" Prelude.<$> description,
               (JSON..=) "DisplayName" Prelude.<$> displayName,
               (JSON..=) "IsMtlsEnabledVmCluster"
                 Prelude.<$> isMtlsEnabledVmCluster,
               (JSON..=) "LicenseModel" Prelude.<$> licenseModel,
               (JSON..=) "MaintenanceWindow" Prelude.<$> maintenanceWindow,
               (JSON..=) "MemoryPerOracleComputeUnitInGBs"
                 Prelude.<$> memoryPerOracleComputeUnitInGBs,
               (JSON..=) "OdbNetworkId" Prelude.<$> odbNetworkId,
               (JSON..=) "ScanListenerPortNonTls"
                 Prelude.<$> scanListenerPortNonTls,
               (JSON..=) "ScanListenerPortTls" Prelude.<$> scanListenerPortTls,
               (JSON..=) "Tags" Prelude.<$> tags,
               (JSON..=) "TimeZone" Prelude.<$> timeZone,
               (JSON..=) "TotalContainerDatabases"
                 Prelude.<$> totalContainerDatabases]))
instance Property "AutonomousDataStorageSizeInTBs" CloudAutonomousVmCluster where
  type PropertyType "AutonomousDataStorageSizeInTBs" CloudAutonomousVmCluster = Value Prelude.Double
  set newValue CloudAutonomousVmCluster {..}
    = CloudAutonomousVmCluster
        {autonomousDataStorageSizeInTBs = Prelude.pure newValue, ..}
instance Property "CloudExadataInfrastructureId" CloudAutonomousVmCluster where
  type PropertyType "CloudExadataInfrastructureId" CloudAutonomousVmCluster = Value Prelude.Text
  set newValue CloudAutonomousVmCluster {..}
    = CloudAutonomousVmCluster
        {cloudExadataInfrastructureId = Prelude.pure newValue, ..}
instance Property "CpuCoreCountPerNode" CloudAutonomousVmCluster where
  type PropertyType "CpuCoreCountPerNode" CloudAutonomousVmCluster = Value Prelude.Integer
  set newValue CloudAutonomousVmCluster {..}
    = CloudAutonomousVmCluster
        {cpuCoreCountPerNode = Prelude.pure newValue, ..}
instance Property "DbServers" CloudAutonomousVmCluster where
  type PropertyType "DbServers" CloudAutonomousVmCluster = ValueList Prelude.Text
  set newValue CloudAutonomousVmCluster {..}
    = CloudAutonomousVmCluster {dbServers = Prelude.pure newValue, ..}
instance Property "Description" CloudAutonomousVmCluster where
  type PropertyType "Description" CloudAutonomousVmCluster = Value Prelude.Text
  set newValue CloudAutonomousVmCluster {..}
    = CloudAutonomousVmCluster
        {description = Prelude.pure newValue, ..}
instance Property "DisplayName" CloudAutonomousVmCluster where
  type PropertyType "DisplayName" CloudAutonomousVmCluster = Value Prelude.Text
  set newValue CloudAutonomousVmCluster {..}
    = CloudAutonomousVmCluster
        {displayName = Prelude.pure newValue, ..}
instance Property "IsMtlsEnabledVmCluster" CloudAutonomousVmCluster where
  type PropertyType "IsMtlsEnabledVmCluster" CloudAutonomousVmCluster = Value Prelude.Bool
  set newValue CloudAutonomousVmCluster {..}
    = CloudAutonomousVmCluster
        {isMtlsEnabledVmCluster = Prelude.pure newValue, ..}
instance Property "LicenseModel" CloudAutonomousVmCluster where
  type PropertyType "LicenseModel" CloudAutonomousVmCluster = Value Prelude.Text
  set newValue CloudAutonomousVmCluster {..}
    = CloudAutonomousVmCluster
        {licenseModel = Prelude.pure newValue, ..}
instance Property "MaintenanceWindow" CloudAutonomousVmCluster where
  type PropertyType "MaintenanceWindow" CloudAutonomousVmCluster = MaintenanceWindowProperty
  set newValue CloudAutonomousVmCluster {..}
    = CloudAutonomousVmCluster
        {maintenanceWindow = Prelude.pure newValue, ..}
instance Property "MemoryPerOracleComputeUnitInGBs" CloudAutonomousVmCluster where
  type PropertyType "MemoryPerOracleComputeUnitInGBs" CloudAutonomousVmCluster = Value Prelude.Integer
  set newValue CloudAutonomousVmCluster {..}
    = CloudAutonomousVmCluster
        {memoryPerOracleComputeUnitInGBs = Prelude.pure newValue, ..}
instance Property "OdbNetworkId" CloudAutonomousVmCluster where
  type PropertyType "OdbNetworkId" CloudAutonomousVmCluster = Value Prelude.Text
  set newValue CloudAutonomousVmCluster {..}
    = CloudAutonomousVmCluster
        {odbNetworkId = Prelude.pure newValue, ..}
instance Property "ScanListenerPortNonTls" CloudAutonomousVmCluster where
  type PropertyType "ScanListenerPortNonTls" CloudAutonomousVmCluster = Value Prelude.Integer
  set newValue CloudAutonomousVmCluster {..}
    = CloudAutonomousVmCluster
        {scanListenerPortNonTls = Prelude.pure newValue, ..}
instance Property "ScanListenerPortTls" CloudAutonomousVmCluster where
  type PropertyType "ScanListenerPortTls" CloudAutonomousVmCluster = Value Prelude.Integer
  set newValue CloudAutonomousVmCluster {..}
    = CloudAutonomousVmCluster
        {scanListenerPortTls = Prelude.pure newValue, ..}
instance Property "Tags" CloudAutonomousVmCluster where
  type PropertyType "Tags" CloudAutonomousVmCluster = [Tag]
  set newValue CloudAutonomousVmCluster {..}
    = CloudAutonomousVmCluster {tags = Prelude.pure newValue, ..}
instance Property "TimeZone" CloudAutonomousVmCluster where
  type PropertyType "TimeZone" CloudAutonomousVmCluster = Value Prelude.Text
  set newValue CloudAutonomousVmCluster {..}
    = CloudAutonomousVmCluster {timeZone = Prelude.pure newValue, ..}
instance Property "TotalContainerDatabases" CloudAutonomousVmCluster where
  type PropertyType "TotalContainerDatabases" CloudAutonomousVmCluster = Value Prelude.Integer
  set newValue CloudAutonomousVmCluster {..}
    = CloudAutonomousVmCluster
        {totalContainerDatabases = Prelude.pure newValue, ..}