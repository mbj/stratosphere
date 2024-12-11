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
                                    region :: (Prelude.Maybe (Value Prelude.Text)),
                                    roleArn :: (Prelude.Maybe (Value Prelude.Text)),
                                    status :: (Prelude.Maybe (Value Prelude.Text)),
                                    statusMessage :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkReplicationDestinationProperty :: ReplicationDestinationProperty
mkReplicationDestinationProperty
  = ReplicationDestinationProperty
      {availabilityZoneName = Prelude.Nothing,
       fileSystemId = Prelude.Nothing, kmsKeyId = Prelude.Nothing,
       region = Prelude.Nothing, roleArn = Prelude.Nothing,
       status = Prelude.Nothing, statusMessage = Prelude.Nothing}
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
                            (JSON..=) "Region" Prelude.<$> region,
                            (JSON..=) "RoleArn" Prelude.<$> roleArn,
                            (JSON..=) "Status" Prelude.<$> status,
                            (JSON..=) "StatusMessage" Prelude.<$> statusMessage])}
instance JSON.ToJSON ReplicationDestinationProperty where
  toJSON ReplicationDestinationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AvailabilityZoneName" Prelude.<$> availabilityZoneName,
               (JSON..=) "FileSystemId" Prelude.<$> fileSystemId,
               (JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId,
               (JSON..=) "Region" Prelude.<$> region,
               (JSON..=) "RoleArn" Prelude.<$> roleArn,
               (JSON..=) "Status" Prelude.<$> status,
               (JSON..=) "StatusMessage" Prelude.<$> statusMessage]))
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
instance Property "RoleArn" ReplicationDestinationProperty where
  type PropertyType "RoleArn" ReplicationDestinationProperty = Value Prelude.Text
  set newValue ReplicationDestinationProperty {..}
    = ReplicationDestinationProperty
        {roleArn = Prelude.pure newValue, ..}
instance Property "Status" ReplicationDestinationProperty where
  type PropertyType "Status" ReplicationDestinationProperty = Value Prelude.Text
  set newValue ReplicationDestinationProperty {..}
    = ReplicationDestinationProperty
        {status = Prelude.pure newValue, ..}
instance Property "StatusMessage" ReplicationDestinationProperty where
  type PropertyType "StatusMessage" ReplicationDestinationProperty = Value Prelude.Text
  set newValue ReplicationDestinationProperty {..}
    = ReplicationDestinationProperty
        {statusMessage = Prelude.pure newValue, ..}