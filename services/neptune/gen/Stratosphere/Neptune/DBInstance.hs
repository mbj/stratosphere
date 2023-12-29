module Stratosphere.Neptune.DBInstance (
        DBInstance(..), mkDBInstance
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data DBInstance
  = DBInstance {allowMajorVersionUpgrade :: (Prelude.Maybe (Value Prelude.Bool)),
                autoMinorVersionUpgrade :: (Prelude.Maybe (Value Prelude.Bool)),
                availabilityZone :: (Prelude.Maybe (Value Prelude.Text)),
                dBClusterIdentifier :: (Prelude.Maybe (Value Prelude.Text)),
                dBInstanceClass :: (Value Prelude.Text),
                dBInstanceIdentifier :: (Prelude.Maybe (Value Prelude.Text)),
                dBParameterGroupName :: (Prelude.Maybe (Value Prelude.Text)),
                dBSnapshotIdentifier :: (Prelude.Maybe (Value Prelude.Text)),
                dBSubnetGroupName :: (Prelude.Maybe (Value Prelude.Text)),
                preferredMaintenanceWindow :: (Prelude.Maybe (Value Prelude.Text)),
                tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDBInstance :: Value Prelude.Text -> DBInstance
mkDBInstance dBInstanceClass
  = DBInstance
      {dBInstanceClass = dBInstanceClass,
       allowMajorVersionUpgrade = Prelude.Nothing,
       autoMinorVersionUpgrade = Prelude.Nothing,
       availabilityZone = Prelude.Nothing,
       dBClusterIdentifier = Prelude.Nothing,
       dBInstanceIdentifier = Prelude.Nothing,
       dBParameterGroupName = Prelude.Nothing,
       dBSnapshotIdentifier = Prelude.Nothing,
       dBSubnetGroupName = Prelude.Nothing,
       preferredMaintenanceWindow = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties DBInstance where
  toResourceProperties DBInstance {..}
    = ResourceProperties
        {awsType = "AWS::Neptune::DBInstance", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DBInstanceClass" JSON..= dBInstanceClass]
                           (Prelude.catMaybes
                              [(JSON..=) "AllowMajorVersionUpgrade"
                                 Prelude.<$> allowMajorVersionUpgrade,
                               (JSON..=) "AutoMinorVersionUpgrade"
                                 Prelude.<$> autoMinorVersionUpgrade,
                               (JSON..=) "AvailabilityZone" Prelude.<$> availabilityZone,
                               (JSON..=) "DBClusterIdentifier" Prelude.<$> dBClusterIdentifier,
                               (JSON..=) "DBInstanceIdentifier" Prelude.<$> dBInstanceIdentifier,
                               (JSON..=) "DBParameterGroupName" Prelude.<$> dBParameterGroupName,
                               (JSON..=) "DBSnapshotIdentifier" Prelude.<$> dBSnapshotIdentifier,
                               (JSON..=) "DBSubnetGroupName" Prelude.<$> dBSubnetGroupName,
                               (JSON..=) "PreferredMaintenanceWindow"
                                 Prelude.<$> preferredMaintenanceWindow,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON DBInstance where
  toJSON DBInstance {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DBInstanceClass" JSON..= dBInstanceClass]
              (Prelude.catMaybes
                 [(JSON..=) "AllowMajorVersionUpgrade"
                    Prelude.<$> allowMajorVersionUpgrade,
                  (JSON..=) "AutoMinorVersionUpgrade"
                    Prelude.<$> autoMinorVersionUpgrade,
                  (JSON..=) "AvailabilityZone" Prelude.<$> availabilityZone,
                  (JSON..=) "DBClusterIdentifier" Prelude.<$> dBClusterIdentifier,
                  (JSON..=) "DBInstanceIdentifier" Prelude.<$> dBInstanceIdentifier,
                  (JSON..=) "DBParameterGroupName" Prelude.<$> dBParameterGroupName,
                  (JSON..=) "DBSnapshotIdentifier" Prelude.<$> dBSnapshotIdentifier,
                  (JSON..=) "DBSubnetGroupName" Prelude.<$> dBSubnetGroupName,
                  (JSON..=) "PreferredMaintenanceWindow"
                    Prelude.<$> preferredMaintenanceWindow,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "AllowMajorVersionUpgrade" DBInstance where
  type PropertyType "AllowMajorVersionUpgrade" DBInstance = Value Prelude.Bool
  set newValue DBInstance {..}
    = DBInstance {allowMajorVersionUpgrade = Prelude.pure newValue, ..}
instance Property "AutoMinorVersionUpgrade" DBInstance where
  type PropertyType "AutoMinorVersionUpgrade" DBInstance = Value Prelude.Bool
  set newValue DBInstance {..}
    = DBInstance {autoMinorVersionUpgrade = Prelude.pure newValue, ..}
instance Property "AvailabilityZone" DBInstance where
  type PropertyType "AvailabilityZone" DBInstance = Value Prelude.Text
  set newValue DBInstance {..}
    = DBInstance {availabilityZone = Prelude.pure newValue, ..}
instance Property "DBClusterIdentifier" DBInstance where
  type PropertyType "DBClusterIdentifier" DBInstance = Value Prelude.Text
  set newValue DBInstance {..}
    = DBInstance {dBClusterIdentifier = Prelude.pure newValue, ..}
instance Property "DBInstanceClass" DBInstance where
  type PropertyType "DBInstanceClass" DBInstance = Value Prelude.Text
  set newValue DBInstance {..}
    = DBInstance {dBInstanceClass = newValue, ..}
instance Property "DBInstanceIdentifier" DBInstance where
  type PropertyType "DBInstanceIdentifier" DBInstance = Value Prelude.Text
  set newValue DBInstance {..}
    = DBInstance {dBInstanceIdentifier = Prelude.pure newValue, ..}
instance Property "DBParameterGroupName" DBInstance where
  type PropertyType "DBParameterGroupName" DBInstance = Value Prelude.Text
  set newValue DBInstance {..}
    = DBInstance {dBParameterGroupName = Prelude.pure newValue, ..}
instance Property "DBSnapshotIdentifier" DBInstance where
  type PropertyType "DBSnapshotIdentifier" DBInstance = Value Prelude.Text
  set newValue DBInstance {..}
    = DBInstance {dBSnapshotIdentifier = Prelude.pure newValue, ..}
instance Property "DBSubnetGroupName" DBInstance where
  type PropertyType "DBSubnetGroupName" DBInstance = Value Prelude.Text
  set newValue DBInstance {..}
    = DBInstance {dBSubnetGroupName = Prelude.pure newValue, ..}
instance Property "PreferredMaintenanceWindow" DBInstance where
  type PropertyType "PreferredMaintenanceWindow" DBInstance = Value Prelude.Text
  set newValue DBInstance {..}
    = DBInstance
        {preferredMaintenanceWindow = Prelude.pure newValue, ..}
instance Property "Tags" DBInstance where
  type PropertyType "Tags" DBInstance = [Tag]
  set newValue DBInstance {..}
    = DBInstance {tags = Prelude.pure newValue, ..}