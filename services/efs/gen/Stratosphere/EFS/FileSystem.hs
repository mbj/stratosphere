module Stratosphere.EFS.FileSystem (
        module Exports, FileSystem(..), mkFileSystem
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EFS.FileSystem.BackupPolicyProperty as Exports
import {-# SOURCE #-} Stratosphere.EFS.FileSystem.ElasticFileSystemTagProperty as Exports
import {-# SOURCE #-} Stratosphere.EFS.FileSystem.FileSystemProtectionProperty as Exports
import {-# SOURCE #-} Stratosphere.EFS.FileSystem.LifecyclePolicyProperty as Exports
import {-# SOURCE #-} Stratosphere.EFS.FileSystem.ReplicationConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FileSystem
  = FileSystem {availabilityZoneName :: (Prelude.Maybe (Value Prelude.Text)),
                backupPolicy :: (Prelude.Maybe BackupPolicyProperty),
                bypassPolicyLockoutSafetyCheck :: (Prelude.Maybe (Value Prelude.Bool)),
                encrypted :: (Prelude.Maybe (Value Prelude.Bool)),
                fileSystemPolicy :: (Prelude.Maybe JSON.Object),
                fileSystemProtection :: (Prelude.Maybe FileSystemProtectionProperty),
                fileSystemTags :: (Prelude.Maybe [ElasticFileSystemTagProperty]),
                kmsKeyId :: (Prelude.Maybe (Value Prelude.Text)),
                lifecyclePolicies :: (Prelude.Maybe [LifecyclePolicyProperty]),
                performanceMode :: (Prelude.Maybe (Value Prelude.Text)),
                provisionedThroughputInMibps :: (Prelude.Maybe (Value Prelude.Double)),
                replicationConfiguration :: (Prelude.Maybe ReplicationConfigurationProperty),
                throughputMode :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFileSystem :: FileSystem
mkFileSystem
  = FileSystem
      {availabilityZoneName = Prelude.Nothing,
       backupPolicy = Prelude.Nothing,
       bypassPolicyLockoutSafetyCheck = Prelude.Nothing,
       encrypted = Prelude.Nothing, fileSystemPolicy = Prelude.Nothing,
       fileSystemProtection = Prelude.Nothing,
       fileSystemTags = Prelude.Nothing, kmsKeyId = Prelude.Nothing,
       lifecyclePolicies = Prelude.Nothing,
       performanceMode = Prelude.Nothing,
       provisionedThroughputInMibps = Prelude.Nothing,
       replicationConfiguration = Prelude.Nothing,
       throughputMode = Prelude.Nothing}
instance ToResourceProperties FileSystem where
  toResourceProperties FileSystem {..}
    = ResourceProperties
        {awsType = "AWS::EFS::FileSystem", supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AvailabilityZoneName" Prelude.<$> availabilityZoneName,
                            (JSON..=) "BackupPolicy" Prelude.<$> backupPolicy,
                            (JSON..=) "BypassPolicyLockoutSafetyCheck"
                              Prelude.<$> bypassPolicyLockoutSafetyCheck,
                            (JSON..=) "Encrypted" Prelude.<$> encrypted,
                            (JSON..=) "FileSystemPolicy" Prelude.<$> fileSystemPolicy,
                            (JSON..=) "FileSystemProtection" Prelude.<$> fileSystemProtection,
                            (JSON..=) "FileSystemTags" Prelude.<$> fileSystemTags,
                            (JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId,
                            (JSON..=) "LifecyclePolicies" Prelude.<$> lifecyclePolicies,
                            (JSON..=) "PerformanceMode" Prelude.<$> performanceMode,
                            (JSON..=) "ProvisionedThroughputInMibps"
                              Prelude.<$> provisionedThroughputInMibps,
                            (JSON..=) "ReplicationConfiguration"
                              Prelude.<$> replicationConfiguration,
                            (JSON..=) "ThroughputMode" Prelude.<$> throughputMode])}
instance JSON.ToJSON FileSystem where
  toJSON FileSystem {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AvailabilityZoneName" Prelude.<$> availabilityZoneName,
               (JSON..=) "BackupPolicy" Prelude.<$> backupPolicy,
               (JSON..=) "BypassPolicyLockoutSafetyCheck"
                 Prelude.<$> bypassPolicyLockoutSafetyCheck,
               (JSON..=) "Encrypted" Prelude.<$> encrypted,
               (JSON..=) "FileSystemPolicy" Prelude.<$> fileSystemPolicy,
               (JSON..=) "FileSystemProtection" Prelude.<$> fileSystemProtection,
               (JSON..=) "FileSystemTags" Prelude.<$> fileSystemTags,
               (JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId,
               (JSON..=) "LifecyclePolicies" Prelude.<$> lifecyclePolicies,
               (JSON..=) "PerformanceMode" Prelude.<$> performanceMode,
               (JSON..=) "ProvisionedThroughputInMibps"
                 Prelude.<$> provisionedThroughputInMibps,
               (JSON..=) "ReplicationConfiguration"
                 Prelude.<$> replicationConfiguration,
               (JSON..=) "ThroughputMode" Prelude.<$> throughputMode]))
instance Property "AvailabilityZoneName" FileSystem where
  type PropertyType "AvailabilityZoneName" FileSystem = Value Prelude.Text
  set newValue FileSystem {..}
    = FileSystem {availabilityZoneName = Prelude.pure newValue, ..}
instance Property "BackupPolicy" FileSystem where
  type PropertyType "BackupPolicy" FileSystem = BackupPolicyProperty
  set newValue FileSystem {..}
    = FileSystem {backupPolicy = Prelude.pure newValue, ..}
instance Property "BypassPolicyLockoutSafetyCheck" FileSystem where
  type PropertyType "BypassPolicyLockoutSafetyCheck" FileSystem = Value Prelude.Bool
  set newValue FileSystem {..}
    = FileSystem
        {bypassPolicyLockoutSafetyCheck = Prelude.pure newValue, ..}
instance Property "Encrypted" FileSystem where
  type PropertyType "Encrypted" FileSystem = Value Prelude.Bool
  set newValue FileSystem {..}
    = FileSystem {encrypted = Prelude.pure newValue, ..}
instance Property "FileSystemPolicy" FileSystem where
  type PropertyType "FileSystemPolicy" FileSystem = JSON.Object
  set newValue FileSystem {..}
    = FileSystem {fileSystemPolicy = Prelude.pure newValue, ..}
instance Property "FileSystemProtection" FileSystem where
  type PropertyType "FileSystemProtection" FileSystem = FileSystemProtectionProperty
  set newValue FileSystem {..}
    = FileSystem {fileSystemProtection = Prelude.pure newValue, ..}
instance Property "FileSystemTags" FileSystem where
  type PropertyType "FileSystemTags" FileSystem = [ElasticFileSystemTagProperty]
  set newValue FileSystem {..}
    = FileSystem {fileSystemTags = Prelude.pure newValue, ..}
instance Property "KmsKeyId" FileSystem where
  type PropertyType "KmsKeyId" FileSystem = Value Prelude.Text
  set newValue FileSystem {..}
    = FileSystem {kmsKeyId = Prelude.pure newValue, ..}
instance Property "LifecyclePolicies" FileSystem where
  type PropertyType "LifecyclePolicies" FileSystem = [LifecyclePolicyProperty]
  set newValue FileSystem {..}
    = FileSystem {lifecyclePolicies = Prelude.pure newValue, ..}
instance Property "PerformanceMode" FileSystem where
  type PropertyType "PerformanceMode" FileSystem = Value Prelude.Text
  set newValue FileSystem {..}
    = FileSystem {performanceMode = Prelude.pure newValue, ..}
instance Property "ProvisionedThroughputInMibps" FileSystem where
  type PropertyType "ProvisionedThroughputInMibps" FileSystem = Value Prelude.Double
  set newValue FileSystem {..}
    = FileSystem
        {provisionedThroughputInMibps = Prelude.pure newValue, ..}
instance Property "ReplicationConfiguration" FileSystem where
  type PropertyType "ReplicationConfiguration" FileSystem = ReplicationConfigurationProperty
  set newValue FileSystem {..}
    = FileSystem {replicationConfiguration = Prelude.pure newValue, ..}
instance Property "ThroughputMode" FileSystem where
  type PropertyType "ThroughputMode" FileSystem = Value Prelude.Text
  set newValue FileSystem {..}
    = FileSystem {throughputMode = Prelude.pure newValue, ..}