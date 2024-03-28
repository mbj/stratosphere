module Stratosphere.EFS.FileSystem.FileSystemProtectionProperty (
        FileSystemProtectionProperty(..), mkFileSystemProtectionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FileSystemProtectionProperty
  = FileSystemProtectionProperty {replicationOverwriteProtection :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFileSystemProtectionProperty :: FileSystemProtectionProperty
mkFileSystemProtectionProperty
  = FileSystemProtectionProperty
      {replicationOverwriteProtection = Prelude.Nothing}
instance ToResourceProperties FileSystemProtectionProperty where
  toResourceProperties FileSystemProtectionProperty {..}
    = ResourceProperties
        {awsType = "AWS::EFS::FileSystem.FileSystemProtection",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ReplicationOverwriteProtection"
                              Prelude.<$> replicationOverwriteProtection])}
instance JSON.ToJSON FileSystemProtectionProperty where
  toJSON FileSystemProtectionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ReplicationOverwriteProtection"
                 Prelude.<$> replicationOverwriteProtection]))
instance Property "ReplicationOverwriteProtection" FileSystemProtectionProperty where
  type PropertyType "ReplicationOverwriteProtection" FileSystemProtectionProperty = Value Prelude.Text
  set newValue FileSystemProtectionProperty {}
    = FileSystemProtectionProperty
        {replicationOverwriteProtection = Prelude.pure newValue, ..}