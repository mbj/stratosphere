module Stratosphere.DocDBElastic.Cluster (
        Cluster(..), mkCluster
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Cluster
  = Cluster {adminUserName :: (Value Prelude.Text),
             adminUserPassword :: (Prelude.Maybe (Value Prelude.Text)),
             authType :: (Value Prelude.Text),
             backupRetentionPeriod :: (Prelude.Maybe (Value Prelude.Integer)),
             clusterName :: (Value Prelude.Text),
             kmsKeyId :: (Prelude.Maybe (Value Prelude.Text)),
             preferredBackupWindow :: (Prelude.Maybe (Value Prelude.Text)),
             preferredMaintenanceWindow :: (Prelude.Maybe (Value Prelude.Text)),
             shardCapacity :: (Value Prelude.Integer),
             shardCount :: (Value Prelude.Integer),
             shardInstanceCount :: (Prelude.Maybe (Value Prelude.Integer)),
             subnetIds :: (Prelude.Maybe (ValueList Prelude.Text)),
             tags :: (Prelude.Maybe [Tag]),
             vpcSecurityGroupIds :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCluster ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text
        -> Value Prelude.Integer -> Value Prelude.Integer -> Cluster
mkCluster
  adminUserName
  authType
  clusterName
  shardCapacity
  shardCount
  = Cluster
      {adminUserName = adminUserName, authType = authType,
       clusterName = clusterName, shardCapacity = shardCapacity,
       shardCount = shardCount, adminUserPassword = Prelude.Nothing,
       backupRetentionPeriod = Prelude.Nothing,
       kmsKeyId = Prelude.Nothing,
       preferredBackupWindow = Prelude.Nothing,
       preferredMaintenanceWindow = Prelude.Nothing,
       shardInstanceCount = Prelude.Nothing, subnetIds = Prelude.Nothing,
       tags = Prelude.Nothing, vpcSecurityGroupIds = Prelude.Nothing}
instance ToResourceProperties Cluster where
  toResourceProperties Cluster {..}
    = ResourceProperties
        {awsType = "AWS::DocDBElastic::Cluster",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AdminUserName" JSON..= adminUserName,
                            "AuthType" JSON..= authType, "ClusterName" JSON..= clusterName,
                            "ShardCapacity" JSON..= shardCapacity,
                            "ShardCount" JSON..= shardCount]
                           (Prelude.catMaybes
                              [(JSON..=) "AdminUserPassword" Prelude.<$> adminUserPassword,
                               (JSON..=) "BackupRetentionPeriod"
                                 Prelude.<$> backupRetentionPeriod,
                               (JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId,
                               (JSON..=) "PreferredBackupWindow"
                                 Prelude.<$> preferredBackupWindow,
                               (JSON..=) "PreferredMaintenanceWindow"
                                 Prelude.<$> preferredMaintenanceWindow,
                               (JSON..=) "ShardInstanceCount" Prelude.<$> shardInstanceCount,
                               (JSON..=) "SubnetIds" Prelude.<$> subnetIds,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "VpcSecurityGroupIds" Prelude.<$> vpcSecurityGroupIds]))}
instance JSON.ToJSON Cluster where
  toJSON Cluster {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AdminUserName" JSON..= adminUserName,
               "AuthType" JSON..= authType, "ClusterName" JSON..= clusterName,
               "ShardCapacity" JSON..= shardCapacity,
               "ShardCount" JSON..= shardCount]
              (Prelude.catMaybes
                 [(JSON..=) "AdminUserPassword" Prelude.<$> adminUserPassword,
                  (JSON..=) "BackupRetentionPeriod"
                    Prelude.<$> backupRetentionPeriod,
                  (JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId,
                  (JSON..=) "PreferredBackupWindow"
                    Prelude.<$> preferredBackupWindow,
                  (JSON..=) "PreferredMaintenanceWindow"
                    Prelude.<$> preferredMaintenanceWindow,
                  (JSON..=) "ShardInstanceCount" Prelude.<$> shardInstanceCount,
                  (JSON..=) "SubnetIds" Prelude.<$> subnetIds,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "VpcSecurityGroupIds" Prelude.<$> vpcSecurityGroupIds])))
instance Property "AdminUserName" Cluster where
  type PropertyType "AdminUserName" Cluster = Value Prelude.Text
  set newValue Cluster {..} = Cluster {adminUserName = newValue, ..}
instance Property "AdminUserPassword" Cluster where
  type PropertyType "AdminUserPassword" Cluster = Value Prelude.Text
  set newValue Cluster {..}
    = Cluster {adminUserPassword = Prelude.pure newValue, ..}
instance Property "AuthType" Cluster where
  type PropertyType "AuthType" Cluster = Value Prelude.Text
  set newValue Cluster {..} = Cluster {authType = newValue, ..}
instance Property "BackupRetentionPeriod" Cluster where
  type PropertyType "BackupRetentionPeriod" Cluster = Value Prelude.Integer
  set newValue Cluster {..}
    = Cluster {backupRetentionPeriod = Prelude.pure newValue, ..}
instance Property "ClusterName" Cluster where
  type PropertyType "ClusterName" Cluster = Value Prelude.Text
  set newValue Cluster {..} = Cluster {clusterName = newValue, ..}
instance Property "KmsKeyId" Cluster where
  type PropertyType "KmsKeyId" Cluster = Value Prelude.Text
  set newValue Cluster {..}
    = Cluster {kmsKeyId = Prelude.pure newValue, ..}
instance Property "PreferredBackupWindow" Cluster where
  type PropertyType "PreferredBackupWindow" Cluster = Value Prelude.Text
  set newValue Cluster {..}
    = Cluster {preferredBackupWindow = Prelude.pure newValue, ..}
instance Property "PreferredMaintenanceWindow" Cluster where
  type PropertyType "PreferredMaintenanceWindow" Cluster = Value Prelude.Text
  set newValue Cluster {..}
    = Cluster {preferredMaintenanceWindow = Prelude.pure newValue, ..}
instance Property "ShardCapacity" Cluster where
  type PropertyType "ShardCapacity" Cluster = Value Prelude.Integer
  set newValue Cluster {..} = Cluster {shardCapacity = newValue, ..}
instance Property "ShardCount" Cluster where
  type PropertyType "ShardCount" Cluster = Value Prelude.Integer
  set newValue Cluster {..} = Cluster {shardCount = newValue, ..}
instance Property "ShardInstanceCount" Cluster where
  type PropertyType "ShardInstanceCount" Cluster = Value Prelude.Integer
  set newValue Cluster {..}
    = Cluster {shardInstanceCount = Prelude.pure newValue, ..}
instance Property "SubnetIds" Cluster where
  type PropertyType "SubnetIds" Cluster = ValueList Prelude.Text
  set newValue Cluster {..}
    = Cluster {subnetIds = Prelude.pure newValue, ..}
instance Property "Tags" Cluster where
  type PropertyType "Tags" Cluster = [Tag]
  set newValue Cluster {..}
    = Cluster {tags = Prelude.pure newValue, ..}
instance Property "VpcSecurityGroupIds" Cluster where
  type PropertyType "VpcSecurityGroupIds" Cluster = ValueList Prelude.Text
  set newValue Cluster {..}
    = Cluster {vpcSecurityGroupIds = Prelude.pure newValue, ..}