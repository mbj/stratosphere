module Stratosphere.EFS.FileSystem.ReplicationDestinationProperty (
        ReplicationDestinationProperty(..),
        mkReplicationDestinationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ReplicationDestinationProperty
  = ReplicationDestinationProperty {availabilityZoneName :: (Prelude.Maybe (Value Prelude.Text)),
                                    fileSystemId :: (Prelude.Maybe (Value Prelude.Text)),
                                    kmsKeyId :: (Prelude.Maybe (Value Prelude.Text)),
                                    region :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkReplicationDestinationProperty :: ReplicationDestinationProperty
mkReplicationDestinationProperty
  = ReplicationDestinationProperty
      {availabilityZoneName = Prelude.Nothing,
       fileSystemId = Prelude.Nothing, kmsKeyId = Prelude.Nothing,
       region = Prelude.Nothing}
instance ToResourceProperties ReplicationDestinationProperty where
  toResourceProperties ReplicationDestinationProperty {..}
    = ResourceProperties
        {awsType = "AWS::EFS::FileSystem.ReplicationDestination",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AvailabilityZoneName" Prelude.<$> availabilityZoneName,
                            (JSON..=) "FileSystemId" Prelude.<$> fileSystemId,
                            (JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId,
                            (JSON..=) "Region" Prelude.<$> region])}
instance JSON.ToJSON ReplicationDestinationProperty where
  toJSON ReplicationDestinationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AvailabilityZoneName" Prelude.<$> availabilityZoneName,
               (JSON..=) "FileSystemId" Prelude.<$> fileSystemId,
               (JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId,
               (JSON..=) "Region" Prelude.<$> region]))
instance Property "AvailabilityZoneName" ReplicationDestinationProperty where
  type PropertyType "AvailabilityZoneName" ReplicationDestinationProperty = Value Prelude.Text
  set newValue ReplicationDestinationProperty {..}
    = ReplicationDestinationProperty
        {availabilityZoneName = Prelude.pure newValue, ..}
instance Property "FileSystemId" ReplicationDestinationProperty where
  type PropertyType "FileSystemId" ReplicationDestinationProperty = Value Prelude.Text
  set newValue ReplicationDestinationProperty {..}
    = ReplicationDestinationProperty
        {fileSystemId = Prelude.pure newValue, ..}
instance Property "KmsKeyId" ReplicationDestinationProperty where
  type PropertyType "KmsKeyId" ReplicationDestinationProperty = Value Prelude.Text
  set newValue ReplicationDestinationProperty {..}
    = ReplicationDestinationProperty
        {kmsKeyId = Prelude.pure newValue, ..}
instance Property "Region" ReplicationDestinationProperty where
  type PropertyType "Region" ReplicationDestinationProperty = Value Prelude.Text
  set newValue ReplicationDestinationProperty {..}
    = ReplicationDestinationProperty
        {region = Prelude.pure newValue, ..}