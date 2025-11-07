module Stratosphere.ODB.CloudVmCluster.DbNodeProperty (
        DbNodeProperty(..), mkDbNodeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data DbNodeProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-odb-cloudvmcluster-dbnode.html>
    DbNodeProperty {haddock_workaround_ :: (),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-odb-cloudvmcluster-dbnode.html#cfn-odb-cloudvmcluster-dbnode-backupipid>
                    backupIpId :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-odb-cloudvmcluster-dbnode.html#cfn-odb-cloudvmcluster-dbnode-backupvnic2id>
                    backupVnic2Id :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-odb-cloudvmcluster-dbnode.html#cfn-odb-cloudvmcluster-dbnode-cpucorecount>
                    cpuCoreCount :: (Prelude.Maybe (Value Prelude.Integer)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-odb-cloudvmcluster-dbnode.html#cfn-odb-cloudvmcluster-dbnode-dbnodearn>
                    dbNodeArn :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-odb-cloudvmcluster-dbnode.html#cfn-odb-cloudvmcluster-dbnode-dbnodeid>
                    dbNodeId :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-odb-cloudvmcluster-dbnode.html#cfn-odb-cloudvmcluster-dbnode-dbnodestoragesizeingbs>
                    dbNodeStorageSizeInGBs :: (Prelude.Maybe (Value Prelude.Integer)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-odb-cloudvmcluster-dbnode.html#cfn-odb-cloudvmcluster-dbnode-dbserverid>
                    dbServerId :: (Value Prelude.Text),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-odb-cloudvmcluster-dbnode.html#cfn-odb-cloudvmcluster-dbnode-dbsystemid>
                    dbSystemId :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-odb-cloudvmcluster-dbnode.html#cfn-odb-cloudvmcluster-dbnode-hostipid>
                    hostIpId :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-odb-cloudvmcluster-dbnode.html#cfn-odb-cloudvmcluster-dbnode-hostname>
                    hostname :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-odb-cloudvmcluster-dbnode.html#cfn-odb-cloudvmcluster-dbnode-memorysizeingbs>
                    memorySizeInGBs :: (Prelude.Maybe (Value Prelude.Integer)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-odb-cloudvmcluster-dbnode.html#cfn-odb-cloudvmcluster-dbnode-ocid>
                    ocid :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-odb-cloudvmcluster-dbnode.html#cfn-odb-cloudvmcluster-dbnode-status>
                    status :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-odb-cloudvmcluster-dbnode.html#cfn-odb-cloudvmcluster-dbnode-tags>
                    tags :: (Prelude.Maybe [Tag]),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-odb-cloudvmcluster-dbnode.html#cfn-odb-cloudvmcluster-dbnode-vnic2id>
                    vnic2Id :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-odb-cloudvmcluster-dbnode.html#cfn-odb-cloudvmcluster-dbnode-vnicid>
                    vnicId :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDbNodeProperty :: Value Prelude.Text -> DbNodeProperty
mkDbNodeProperty dbServerId
  = DbNodeProperty
      {haddock_workaround_ = (), dbServerId = dbServerId,
       backupIpId = Prelude.Nothing, backupVnic2Id = Prelude.Nothing,
       cpuCoreCount = Prelude.Nothing, dbNodeArn = Prelude.Nothing,
       dbNodeId = Prelude.Nothing,
       dbNodeStorageSizeInGBs = Prelude.Nothing,
       dbSystemId = Prelude.Nothing, hostIpId = Prelude.Nothing,
       hostname = Prelude.Nothing, memorySizeInGBs = Prelude.Nothing,
       ocid = Prelude.Nothing, status = Prelude.Nothing,
       tags = Prelude.Nothing, vnic2Id = Prelude.Nothing,
       vnicId = Prelude.Nothing}
instance ToResourceProperties DbNodeProperty where
  toResourceProperties DbNodeProperty {..}
    = ResourceProperties
        {awsType = "AWS::ODB::CloudVmCluster.DbNode",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DbServerId" JSON..= dbServerId]
                           (Prelude.catMaybes
                              [(JSON..=) "BackupIpId" Prelude.<$> backupIpId,
                               (JSON..=) "BackupVnic2Id" Prelude.<$> backupVnic2Id,
                               (JSON..=) "CpuCoreCount" Prelude.<$> cpuCoreCount,
                               (JSON..=) "DbNodeArn" Prelude.<$> dbNodeArn,
                               (JSON..=) "DbNodeId" Prelude.<$> dbNodeId,
                               (JSON..=) "DbNodeStorageSizeInGBs"
                                 Prelude.<$> dbNodeStorageSizeInGBs,
                               (JSON..=) "DbSystemId" Prelude.<$> dbSystemId,
                               (JSON..=) "HostIpId" Prelude.<$> hostIpId,
                               (JSON..=) "Hostname" Prelude.<$> hostname,
                               (JSON..=) "MemorySizeInGBs" Prelude.<$> memorySizeInGBs,
                               (JSON..=) "Ocid" Prelude.<$> ocid,
                               (JSON..=) "Status" Prelude.<$> status,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "Vnic2Id" Prelude.<$> vnic2Id,
                               (JSON..=) "VnicId" Prelude.<$> vnicId]))}
instance JSON.ToJSON DbNodeProperty where
  toJSON DbNodeProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DbServerId" JSON..= dbServerId]
              (Prelude.catMaybes
                 [(JSON..=) "BackupIpId" Prelude.<$> backupIpId,
                  (JSON..=) "BackupVnic2Id" Prelude.<$> backupVnic2Id,
                  (JSON..=) "CpuCoreCount" Prelude.<$> cpuCoreCount,
                  (JSON..=) "DbNodeArn" Prelude.<$> dbNodeArn,
                  (JSON..=) "DbNodeId" Prelude.<$> dbNodeId,
                  (JSON..=) "DbNodeStorageSizeInGBs"
                    Prelude.<$> dbNodeStorageSizeInGBs,
                  (JSON..=) "DbSystemId" Prelude.<$> dbSystemId,
                  (JSON..=) "HostIpId" Prelude.<$> hostIpId,
                  (JSON..=) "Hostname" Prelude.<$> hostname,
                  (JSON..=) "MemorySizeInGBs" Prelude.<$> memorySizeInGBs,
                  (JSON..=) "Ocid" Prelude.<$> ocid,
                  (JSON..=) "Status" Prelude.<$> status,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "Vnic2Id" Prelude.<$> vnic2Id,
                  (JSON..=) "VnicId" Prelude.<$> vnicId])))
instance Property "BackupIpId" DbNodeProperty where
  type PropertyType "BackupIpId" DbNodeProperty = Value Prelude.Text
  set newValue DbNodeProperty {..}
    = DbNodeProperty {backupIpId = Prelude.pure newValue, ..}
instance Property "BackupVnic2Id" DbNodeProperty where
  type PropertyType "BackupVnic2Id" DbNodeProperty = Value Prelude.Text
  set newValue DbNodeProperty {..}
    = DbNodeProperty {backupVnic2Id = Prelude.pure newValue, ..}
instance Property "CpuCoreCount" DbNodeProperty where
  type PropertyType "CpuCoreCount" DbNodeProperty = Value Prelude.Integer
  set newValue DbNodeProperty {..}
    = DbNodeProperty {cpuCoreCount = Prelude.pure newValue, ..}
instance Property "DbNodeArn" DbNodeProperty where
  type PropertyType "DbNodeArn" DbNodeProperty = Value Prelude.Text
  set newValue DbNodeProperty {..}
    = DbNodeProperty {dbNodeArn = Prelude.pure newValue, ..}
instance Property "DbNodeId" DbNodeProperty where
  type PropertyType "DbNodeId" DbNodeProperty = Value Prelude.Text
  set newValue DbNodeProperty {..}
    = DbNodeProperty {dbNodeId = Prelude.pure newValue, ..}
instance Property "DbNodeStorageSizeInGBs" DbNodeProperty where
  type PropertyType "DbNodeStorageSizeInGBs" DbNodeProperty = Value Prelude.Integer
  set newValue DbNodeProperty {..}
    = DbNodeProperty
        {dbNodeStorageSizeInGBs = Prelude.pure newValue, ..}
instance Property "DbServerId" DbNodeProperty where
  type PropertyType "DbServerId" DbNodeProperty = Value Prelude.Text
  set newValue DbNodeProperty {..}
    = DbNodeProperty {dbServerId = newValue, ..}
instance Property "DbSystemId" DbNodeProperty where
  type PropertyType "DbSystemId" DbNodeProperty = Value Prelude.Text
  set newValue DbNodeProperty {..}
    = DbNodeProperty {dbSystemId = Prelude.pure newValue, ..}
instance Property "HostIpId" DbNodeProperty where
  type PropertyType "HostIpId" DbNodeProperty = Value Prelude.Text
  set newValue DbNodeProperty {..}
    = DbNodeProperty {hostIpId = Prelude.pure newValue, ..}
instance Property "Hostname" DbNodeProperty where
  type PropertyType "Hostname" DbNodeProperty = Value Prelude.Text
  set newValue DbNodeProperty {..}
    = DbNodeProperty {hostname = Prelude.pure newValue, ..}
instance Property "MemorySizeInGBs" DbNodeProperty where
  type PropertyType "MemorySizeInGBs" DbNodeProperty = Value Prelude.Integer
  set newValue DbNodeProperty {..}
    = DbNodeProperty {memorySizeInGBs = Prelude.pure newValue, ..}
instance Property "Ocid" DbNodeProperty where
  type PropertyType "Ocid" DbNodeProperty = Value Prelude.Text
  set newValue DbNodeProperty {..}
    = DbNodeProperty {ocid = Prelude.pure newValue, ..}
instance Property "Status" DbNodeProperty where
  type PropertyType "Status" DbNodeProperty = Value Prelude.Text
  set newValue DbNodeProperty {..}
    = DbNodeProperty {status = Prelude.pure newValue, ..}
instance Property "Tags" DbNodeProperty where
  type PropertyType "Tags" DbNodeProperty = [Tag]
  set newValue DbNodeProperty {..}
    = DbNodeProperty {tags = Prelude.pure newValue, ..}
instance Property "Vnic2Id" DbNodeProperty where
  type PropertyType "Vnic2Id" DbNodeProperty = Value Prelude.Text
  set newValue DbNodeProperty {..}
    = DbNodeProperty {vnic2Id = Prelude.pure newValue, ..}
instance Property "VnicId" DbNodeProperty where
  type PropertyType "VnicId" DbNodeProperty = Value Prelude.Text
  set newValue DbNodeProperty {..}
    = DbNodeProperty {vnicId = Prelude.pure newValue, ..}