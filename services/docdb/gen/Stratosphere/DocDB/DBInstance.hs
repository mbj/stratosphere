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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-docdb-dbinstance.html>
    DBInstance {haddock_workaround_ :: (),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-docdb-dbinstance.html#cfn-docdb-dbinstance-autominorversionupgrade>
                autoMinorVersionUpgrade :: (Prelude.Maybe (Value Prelude.Bool)),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-docdb-dbinstance.html#cfn-docdb-dbinstance-availabilityzone>
                availabilityZone :: (Prelude.Maybe (Value Prelude.Text)),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-docdb-dbinstance.html#cfn-docdb-dbinstance-cacertificateidentifier>
                cACertificateIdentifier :: (Prelude.Maybe (Value Prelude.Text)),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-docdb-dbinstance.html#cfn-docdb-dbinstance-certificaterotationrestart>
                certificateRotationRestart :: (Prelude.Maybe (Value Prelude.Bool)),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-docdb-dbinstance.html#cfn-docdb-dbinstance-dbclusteridentifier>
                dBClusterIdentifier :: (Value Prelude.Text),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-docdb-dbinstance.html#cfn-docdb-dbinstance-dbinstanceclass>
                dBInstanceClass :: (Value Prelude.Text),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-docdb-dbinstance.html#cfn-docdb-dbinstance-dbinstanceidentifier>
                dBInstanceIdentifier :: (Prelude.Maybe (Value Prelude.Text)),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-docdb-dbinstance.html#cfn-docdb-dbinstance-enableperformanceinsights>
                enablePerformanceInsights :: (Prelude.Maybe (Value Prelude.Bool)),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-docdb-dbinstance.html#cfn-docdb-dbinstance-preferredmaintenancewindow>
                preferredMaintenanceWindow :: (Prelude.Maybe (Value Prelude.Text)),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-docdb-dbinstance.html#cfn-docdb-dbinstance-tags>
                tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDBInstance ::
  Value Prelude.Text -> Value Prelude.Text -> DBInstance
mkDBInstance dBClusterIdentifier dBInstanceClass
  = DBInstance
      {haddock_workaround_ = (),
       dBClusterIdentifier = dBClusterIdentifier,
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