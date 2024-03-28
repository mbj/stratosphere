module Stratosphere.DocDB.DBInstance (
        DBInstance(..), mkDBInstance
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data DBInstance
  = DBInstance {autoMinorVersionUpgrade :: (Prelude.Maybe (Value Prelude.Bool)),
                availabilityZone :: (Prelude.Maybe (Value Prelude.Text)),
                cACertificateIdentifier :: (Prelude.Maybe (Value Prelude.Text)),
                certificateRotationRestart :: (Prelude.Maybe (Value Prelude.Bool)),
                dBClusterIdentifier :: (Value Prelude.Text),
                dBInstanceClass :: (Value Prelude.Text),
                dBInstanceIdentifier :: (Prelude.Maybe (Value Prelude.Text)),
                enablePerformanceInsights :: (Prelude.Maybe (Value Prelude.Bool)),
                preferredMaintenanceWindow :: (Prelude.Maybe (Value Prelude.Text)),
                tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDBInstance ::
  Value Prelude.Text -> Value Prelude.Text -> DBInstance
mkDBInstance dBClusterIdentifier dBInstanceClass
  = DBInstance
      {dBClusterIdentifier = dBClusterIdentifier,
       dBInstanceClass = dBInstanceClass,
       autoMinorVersionUpgrade = Prelude.Nothing,
       availabilityZone = Prelude.Nothing,
       cACertificateIdentifier = Prelude.Nothing,
       certificateRotationRestart = Prelude.Nothing,
       dBInstanceIdentifier = Prelude.Nothing,
       enablePerformanceInsights = Prelude.Nothing,
       preferredMaintenanceWindow = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties DBInstance where
  toResourceProperties DBInstance {..}
    = ResourceProperties
        {awsType = "AWS::DocDB::DBInstance", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DBClusterIdentifier" JSON..= dBClusterIdentifier,
                            "DBInstanceClass" JSON..= dBInstanceClass]
                           (Prelude.catMaybes
                              [(JSON..=) "AutoMinorVersionUpgrade"
                                 Prelude.<$> autoMinorVersionUpgrade,
                               (JSON..=) "AvailabilityZone" Prelude.<$> availabilityZone,
                               (JSON..=) "CACertificateIdentifier"
                                 Prelude.<$> cACertificateIdentifier,
                               (JSON..=) "CertificateRotationRestart"
                                 Prelude.<$> certificateRotationRestart,
                               (JSON..=) "DBInstanceIdentifier" Prelude.<$> dBInstanceIdentifier,
                               (JSON..=) "EnablePerformanceInsights"
                                 Prelude.<$> enablePerformanceInsights,
                               (JSON..=) "PreferredMaintenanceWindow"
                                 Prelude.<$> preferredMaintenanceWindow,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON DBInstance where
  toJSON DBInstance {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DBClusterIdentifier" JSON..= dBClusterIdentifier,
               "DBInstanceClass" JSON..= dBInstanceClass]
              (Prelude.catMaybes
                 [(JSON..=) "AutoMinorVersionUpgrade"
                    Prelude.<$> autoMinorVersionUpgrade,
                  (JSON..=) "AvailabilityZone" Prelude.<$> availabilityZone,
                  (JSON..=) "CACertificateIdentifier"
                    Prelude.<$> cACertificateIdentifier,
                  (JSON..=) "CertificateRotationRestart"
                    Prelude.<$> certificateRotationRestart,
                  (JSON..=) "DBInstanceIdentifier" Prelude.<$> dBInstanceIdentifier,
                  (JSON..=) "EnablePerformanceInsights"
                    Prelude.<$> enablePerformanceInsights,
                  (JSON..=) "PreferredMaintenanceWindow"
                    Prelude.<$> preferredMaintenanceWindow,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "AutoMinorVersionUpgrade" DBInstance where
  type PropertyType "AutoMinorVersionUpgrade" DBInstance = Value Prelude.Bool
  set newValue DBInstance {..}
    = DBInstance {autoMinorVersionUpgrade = Prelude.pure newValue, ..}
instance Property "AvailabilityZone" DBInstance where
  type PropertyType "AvailabilityZone" DBInstance = Value Prelude.Text
  set newValue DBInstance {..}
    = DBInstance {availabilityZone = Prelude.pure newValue, ..}
instance Property "CACertificateIdentifier" DBInstance where
  type PropertyType "CACertificateIdentifier" DBInstance = Value Prelude.Text
  set newValue DBInstance {..}
    = DBInstance {cACertificateIdentifier = Prelude.pure newValue, ..}
instance Property "CertificateRotationRestart" DBInstance where
  type PropertyType "CertificateRotationRestart" DBInstance = Value Prelude.Bool
  set newValue DBInstance {..}
    = DBInstance
        {certificateRotationRestart = Prelude.pure newValue, ..}
instance Property "DBClusterIdentifier" DBInstance where
  type PropertyType "DBClusterIdentifier" DBInstance = Value Prelude.Text
  set newValue DBInstance {..}
    = DBInstance {dBClusterIdentifier = newValue, ..}
instance Property "DBInstanceClass" DBInstance where
  type PropertyType "DBInstanceClass" DBInstance = Value Prelude.Text
  set newValue DBInstance {..}
    = DBInstance {dBInstanceClass = newValue, ..}
instance Property "DBInstanceIdentifier" DBInstance where
  type PropertyType "DBInstanceIdentifier" DBInstance = Value Prelude.Text
  set newValue DBInstance {..}
    = DBInstance {dBInstanceIdentifier = Prelude.pure newValue, ..}
instance Property "EnablePerformanceInsights" DBInstance where
  type PropertyType "EnablePerformanceInsights" DBInstance = Value Prelude.Bool
  set newValue DBInstance {..}
    = DBInstance
        {enablePerformanceInsights = Prelude.pure newValue, ..}
instance Property "PreferredMaintenanceWindow" DBInstance where
  type PropertyType "PreferredMaintenanceWindow" DBInstance = Value Prelude.Text
  set newValue DBInstance {..}
    = DBInstance
        {preferredMaintenanceWindow = Prelude.pure newValue, ..}
instance Property "Tags" DBInstance where
  type PropertyType "Tags" DBInstance = [Tag]
  set newValue DBInstance {..}
    = DBInstance {tags = Prelude.pure newValue, ..}