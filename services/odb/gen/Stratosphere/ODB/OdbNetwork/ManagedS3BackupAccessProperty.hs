module Stratosphere.ODB.OdbNetwork.ManagedS3BackupAccessProperty (
        ManagedS3BackupAccessProperty(..), mkManagedS3BackupAccessProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ManagedS3BackupAccessProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-odb-odbnetwork-manageds3backupaccess.html>
    ManagedS3BackupAccessProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-odb-odbnetwork-manageds3backupaccess.html#cfn-odb-odbnetwork-manageds3backupaccess-ipv4addresses>
                                   ipv4Addresses :: (Prelude.Maybe (ValueList Prelude.Text)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-odb-odbnetwork-manageds3backupaccess.html#cfn-odb-odbnetwork-manageds3backupaccess-status>
                                   status :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkManagedS3BackupAccessProperty :: ManagedS3BackupAccessProperty
mkManagedS3BackupAccessProperty
  = ManagedS3BackupAccessProperty
      {haddock_workaround_ = (), ipv4Addresses = Prelude.Nothing,
       status = Prelude.Nothing}
instance ToResourceProperties ManagedS3BackupAccessProperty where
  toResourceProperties ManagedS3BackupAccessProperty {..}
    = ResourceProperties
        {awsType = "AWS::ODB::OdbNetwork.ManagedS3BackupAccess",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Ipv4Addresses" Prelude.<$> ipv4Addresses,
                            (JSON..=) "Status" Prelude.<$> status])}
instance JSON.ToJSON ManagedS3BackupAccessProperty where
  toJSON ManagedS3BackupAccessProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Ipv4Addresses" Prelude.<$> ipv4Addresses,
               (JSON..=) "Status" Prelude.<$> status]))
instance Property "Ipv4Addresses" ManagedS3BackupAccessProperty where
  type PropertyType "Ipv4Addresses" ManagedS3BackupAccessProperty = ValueList Prelude.Text
  set newValue ManagedS3BackupAccessProperty {..}
    = ManagedS3BackupAccessProperty
        {ipv4Addresses = Prelude.pure newValue, ..}
instance Property "Status" ManagedS3BackupAccessProperty where
  type PropertyType "Status" ManagedS3BackupAccessProperty = Value Prelude.Text
  set newValue ManagedS3BackupAccessProperty {..}
    = ManagedS3BackupAccessProperty
        {status = Prelude.pure newValue, ..}