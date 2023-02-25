module Stratosphere.FSx.StorageVirtualMachine (
        module Exports, StorageVirtualMachine(..), mkStorageVirtualMachine
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.FSx.StorageVirtualMachine.ActiveDirectoryConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data StorageVirtualMachine
  = StorageVirtualMachine {activeDirectoryConfiguration :: (Prelude.Maybe ActiveDirectoryConfigurationProperty),
                           fileSystemId :: (Value Prelude.Text),
                           name :: (Value Prelude.Text),
                           rootVolumeSecurityStyle :: (Prelude.Maybe (Value Prelude.Text)),
                           svmAdminPassword :: (Prelude.Maybe (Value Prelude.Text)),
                           tags :: (Prelude.Maybe [Tag])}
mkStorageVirtualMachine ::
  Value Prelude.Text -> Value Prelude.Text -> StorageVirtualMachine
mkStorageVirtualMachine fileSystemId name
  = StorageVirtualMachine
      {fileSystemId = fileSystemId, name = name,
       activeDirectoryConfiguration = Prelude.Nothing,
       rootVolumeSecurityStyle = Prelude.Nothing,
       svmAdminPassword = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties StorageVirtualMachine where
  toResourceProperties StorageVirtualMachine {..}
    = ResourceProperties
        {awsType = "AWS::FSx::StorageVirtualMachine",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["FileSystemId" JSON..= fileSystemId, "Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "ActiveDirectoryConfiguration"
                                 Prelude.<$> activeDirectoryConfiguration,
                               (JSON..=) "RootVolumeSecurityStyle"
                                 Prelude.<$> rootVolumeSecurityStyle,
                               (JSON..=) "SvmAdminPassword" Prelude.<$> svmAdminPassword,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON StorageVirtualMachine where
  toJSON StorageVirtualMachine {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["FileSystemId" JSON..= fileSystemId, "Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "ActiveDirectoryConfiguration"
                    Prelude.<$> activeDirectoryConfiguration,
                  (JSON..=) "RootVolumeSecurityStyle"
                    Prelude.<$> rootVolumeSecurityStyle,
                  (JSON..=) "SvmAdminPassword" Prelude.<$> svmAdminPassword,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "ActiveDirectoryConfiguration" StorageVirtualMachine where
  type PropertyType "ActiveDirectoryConfiguration" StorageVirtualMachine = ActiveDirectoryConfigurationProperty
  set newValue StorageVirtualMachine {..}
    = StorageVirtualMachine
        {activeDirectoryConfiguration = Prelude.pure newValue, ..}
instance Property "FileSystemId" StorageVirtualMachine where
  type PropertyType "FileSystemId" StorageVirtualMachine = Value Prelude.Text
  set newValue StorageVirtualMachine {..}
    = StorageVirtualMachine {fileSystemId = newValue, ..}
instance Property "Name" StorageVirtualMachine where
  type PropertyType "Name" StorageVirtualMachine = Value Prelude.Text
  set newValue StorageVirtualMachine {..}
    = StorageVirtualMachine {name = newValue, ..}
instance Property "RootVolumeSecurityStyle" StorageVirtualMachine where
  type PropertyType "RootVolumeSecurityStyle" StorageVirtualMachine = Value Prelude.Text
  set newValue StorageVirtualMachine {..}
    = StorageVirtualMachine
        {rootVolumeSecurityStyle = Prelude.pure newValue, ..}
instance Property "SvmAdminPassword" StorageVirtualMachine where
  type PropertyType "SvmAdminPassword" StorageVirtualMachine = Value Prelude.Text
  set newValue StorageVirtualMachine {..}
    = StorageVirtualMachine
        {svmAdminPassword = Prelude.pure newValue, ..}
instance Property "Tags" StorageVirtualMachine where
  type PropertyType "Tags" StorageVirtualMachine = [Tag]
  set newValue StorageVirtualMachine {..}
    = StorageVirtualMachine {tags = Prelude.pure newValue, ..}