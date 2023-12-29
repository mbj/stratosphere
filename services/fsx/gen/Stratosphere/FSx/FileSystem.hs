module Stratosphere.FSx.FileSystem (
        module Exports, FileSystem(..), mkFileSystem
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.FSx.FileSystem.LustreConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.FSx.FileSystem.OntapConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.FSx.FileSystem.OpenZFSConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.FSx.FileSystem.WindowsConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data FileSystem
  = FileSystem {backupId :: (Prelude.Maybe (Value Prelude.Text)),
                fileSystemType :: (Value Prelude.Text),
                fileSystemTypeVersion :: (Prelude.Maybe (Value Prelude.Text)),
                kmsKeyId :: (Prelude.Maybe (Value Prelude.Text)),
                lustreConfiguration :: (Prelude.Maybe LustreConfigurationProperty),
                ontapConfiguration :: (Prelude.Maybe OntapConfigurationProperty),
                openZFSConfiguration :: (Prelude.Maybe OpenZFSConfigurationProperty),
                securityGroupIds :: (Prelude.Maybe (ValueList Prelude.Text)),
                storageCapacity :: (Prelude.Maybe (Value Prelude.Integer)),
                storageType :: (Prelude.Maybe (Value Prelude.Text)),
                subnetIds :: (ValueList Prelude.Text),
                tags :: (Prelude.Maybe [Tag]),
                windowsConfiguration :: (Prelude.Maybe WindowsConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFileSystem ::
  Value Prelude.Text -> ValueList Prelude.Text -> FileSystem
mkFileSystem fileSystemType subnetIds
  = FileSystem
      {fileSystemType = fileSystemType, subnetIds = subnetIds,
       backupId = Prelude.Nothing,
       fileSystemTypeVersion = Prelude.Nothing,
       kmsKeyId = Prelude.Nothing, lustreConfiguration = Prelude.Nothing,
       ontapConfiguration = Prelude.Nothing,
       openZFSConfiguration = Prelude.Nothing,
       securityGroupIds = Prelude.Nothing,
       storageCapacity = Prelude.Nothing, storageType = Prelude.Nothing,
       tags = Prelude.Nothing, windowsConfiguration = Prelude.Nothing}
instance ToResourceProperties FileSystem where
  toResourceProperties FileSystem {..}
    = ResourceProperties
        {awsType = "AWS::FSx::FileSystem", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["FileSystemType" JSON..= fileSystemType,
                            "SubnetIds" JSON..= subnetIds]
                           (Prelude.catMaybes
                              [(JSON..=) "BackupId" Prelude.<$> backupId,
                               (JSON..=) "FileSystemTypeVersion"
                                 Prelude.<$> fileSystemTypeVersion,
                               (JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId,
                               (JSON..=) "LustreConfiguration" Prelude.<$> lustreConfiguration,
                               (JSON..=) "OntapConfiguration" Prelude.<$> ontapConfiguration,
                               (JSON..=) "OpenZFSConfiguration" Prelude.<$> openZFSConfiguration,
                               (JSON..=) "SecurityGroupIds" Prelude.<$> securityGroupIds,
                               (JSON..=) "StorageCapacity" Prelude.<$> storageCapacity,
                               (JSON..=) "StorageType" Prelude.<$> storageType,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "WindowsConfiguration"
                                 Prelude.<$> windowsConfiguration]))}
instance JSON.ToJSON FileSystem where
  toJSON FileSystem {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["FileSystemType" JSON..= fileSystemType,
               "SubnetIds" JSON..= subnetIds]
              (Prelude.catMaybes
                 [(JSON..=) "BackupId" Prelude.<$> backupId,
                  (JSON..=) "FileSystemTypeVersion"
                    Prelude.<$> fileSystemTypeVersion,
                  (JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId,
                  (JSON..=) "LustreConfiguration" Prelude.<$> lustreConfiguration,
                  (JSON..=) "OntapConfiguration" Prelude.<$> ontapConfiguration,
                  (JSON..=) "OpenZFSConfiguration" Prelude.<$> openZFSConfiguration,
                  (JSON..=) "SecurityGroupIds" Prelude.<$> securityGroupIds,
                  (JSON..=) "StorageCapacity" Prelude.<$> storageCapacity,
                  (JSON..=) "StorageType" Prelude.<$> storageType,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "WindowsConfiguration"
                    Prelude.<$> windowsConfiguration])))
instance Property "BackupId" FileSystem where
  type PropertyType "BackupId" FileSystem = Value Prelude.Text
  set newValue FileSystem {..}
    = FileSystem {backupId = Prelude.pure newValue, ..}
instance Property "FileSystemType" FileSystem where
  type PropertyType "FileSystemType" FileSystem = Value Prelude.Text
  set newValue FileSystem {..}
    = FileSystem {fileSystemType = newValue, ..}
instance Property "FileSystemTypeVersion" FileSystem where
  type PropertyType "FileSystemTypeVersion" FileSystem = Value Prelude.Text
  set newValue FileSystem {..}
    = FileSystem {fileSystemTypeVersion = Prelude.pure newValue, ..}
instance Property "KmsKeyId" FileSystem where
  type PropertyType "KmsKeyId" FileSystem = Value Prelude.Text
  set newValue FileSystem {..}
    = FileSystem {kmsKeyId = Prelude.pure newValue, ..}
instance Property "LustreConfiguration" FileSystem where
  type PropertyType "LustreConfiguration" FileSystem = LustreConfigurationProperty
  set newValue FileSystem {..}
    = FileSystem {lustreConfiguration = Prelude.pure newValue, ..}
instance Property "OntapConfiguration" FileSystem where
  type PropertyType "OntapConfiguration" FileSystem = OntapConfigurationProperty
  set newValue FileSystem {..}
    = FileSystem {ontapConfiguration = Prelude.pure newValue, ..}
instance Property "OpenZFSConfiguration" FileSystem where
  type PropertyType "OpenZFSConfiguration" FileSystem = OpenZFSConfigurationProperty
  set newValue FileSystem {..}
    = FileSystem {openZFSConfiguration = Prelude.pure newValue, ..}
instance Property "SecurityGroupIds" FileSystem where
  type PropertyType "SecurityGroupIds" FileSystem = ValueList Prelude.Text
  set newValue FileSystem {..}
    = FileSystem {securityGroupIds = Prelude.pure newValue, ..}
instance Property "StorageCapacity" FileSystem where
  type PropertyType "StorageCapacity" FileSystem = Value Prelude.Integer
  set newValue FileSystem {..}
    = FileSystem {storageCapacity = Prelude.pure newValue, ..}
instance Property "StorageType" FileSystem where
  type PropertyType "StorageType" FileSystem = Value Prelude.Text
  set newValue FileSystem {..}
    = FileSystem {storageType = Prelude.pure newValue, ..}
instance Property "SubnetIds" FileSystem where
  type PropertyType "SubnetIds" FileSystem = ValueList Prelude.Text
  set newValue FileSystem {..}
    = FileSystem {subnetIds = newValue, ..}
instance Property "Tags" FileSystem where
  type PropertyType "Tags" FileSystem = [Tag]
  set newValue FileSystem {..}
    = FileSystem {tags = Prelude.pure newValue, ..}
instance Property "WindowsConfiguration" FileSystem where
  type PropertyType "WindowsConfiguration" FileSystem = WindowsConfigurationProperty
  set newValue FileSystem {..}
    = FileSystem {windowsConfiguration = Prelude.pure newValue, ..}