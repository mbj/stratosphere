module Stratosphere.FSx.Volume.SnaplockConfigurationProperty (
        module Exports, SnaplockConfigurationProperty(..),
        mkSnaplockConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.FSx.Volume.AutocommitPeriodProperty as Exports
import {-# SOURCE #-} Stratosphere.FSx.Volume.SnaplockRetentionPeriodProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SnaplockConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-volume-ontapconfiguration-snaplockconfiguration.html>
    SnaplockConfigurationProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-volume-ontapconfiguration-snaplockconfiguration.html#cfn-fsx-volume-ontapconfiguration-snaplockconfiguration-auditlogvolume>
                                   auditLogVolume :: (Prelude.Maybe (Value Prelude.Text)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-volume-ontapconfiguration-snaplockconfiguration.html#cfn-fsx-volume-ontapconfiguration-snaplockconfiguration-autocommitperiod>
                                   autocommitPeriod :: (Prelude.Maybe AutocommitPeriodProperty),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-volume-ontapconfiguration-snaplockconfiguration.html#cfn-fsx-volume-ontapconfiguration-snaplockconfiguration-privilegeddelete>
                                   privilegedDelete :: (Prelude.Maybe (Value Prelude.Text)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-volume-ontapconfiguration-snaplockconfiguration.html#cfn-fsx-volume-ontapconfiguration-snaplockconfiguration-retentionperiod>
                                   retentionPeriod :: (Prelude.Maybe SnaplockRetentionPeriodProperty),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-volume-ontapconfiguration-snaplockconfiguration.html#cfn-fsx-volume-ontapconfiguration-snaplockconfiguration-snaplocktype>
                                   snaplockType :: (Value Prelude.Text),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-volume-ontapconfiguration-snaplockconfiguration.html#cfn-fsx-volume-ontapconfiguration-snaplockconfiguration-volumeappendmodeenabled>
                                   volumeAppendModeEnabled :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSnaplockConfigurationProperty ::
  Value Prelude.Text -> SnaplockConfigurationProperty
mkSnaplockConfigurationProperty snaplockType
  = SnaplockConfigurationProperty
      {haddock_workaround_ = (), snaplockType = snaplockType,
       auditLogVolume = Prelude.Nothing,
       autocommitPeriod = Prelude.Nothing,
       privilegedDelete = Prelude.Nothing,
       retentionPeriod = Prelude.Nothing,
       volumeAppendModeEnabled = Prelude.Nothing}
instance ToResourceProperties SnaplockConfigurationProperty where
  toResourceProperties SnaplockConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::FSx::Volume.SnaplockConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["SnaplockType" JSON..= snaplockType]
                           (Prelude.catMaybes
                              [(JSON..=) "AuditLogVolume" Prelude.<$> auditLogVolume,
                               (JSON..=) "AutocommitPeriod" Prelude.<$> autocommitPeriod,
                               (JSON..=) "PrivilegedDelete" Prelude.<$> privilegedDelete,
                               (JSON..=) "RetentionPeriod" Prelude.<$> retentionPeriod,
                               (JSON..=) "VolumeAppendModeEnabled"
                                 Prelude.<$> volumeAppendModeEnabled]))}
instance JSON.ToJSON SnaplockConfigurationProperty where
  toJSON SnaplockConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["SnaplockType" JSON..= snaplockType]
              (Prelude.catMaybes
                 [(JSON..=) "AuditLogVolume" Prelude.<$> auditLogVolume,
                  (JSON..=) "AutocommitPeriod" Prelude.<$> autocommitPeriod,
                  (JSON..=) "PrivilegedDelete" Prelude.<$> privilegedDelete,
                  (JSON..=) "RetentionPeriod" Prelude.<$> retentionPeriod,
                  (JSON..=) "VolumeAppendModeEnabled"
                    Prelude.<$> volumeAppendModeEnabled])))
instance Property "AuditLogVolume" SnaplockConfigurationProperty where
  type PropertyType "AuditLogVolume" SnaplockConfigurationProperty = Value Prelude.Text
  set newValue SnaplockConfigurationProperty {..}
    = SnaplockConfigurationProperty
        {auditLogVolume = Prelude.pure newValue, ..}
instance Property "AutocommitPeriod" SnaplockConfigurationProperty where
  type PropertyType "AutocommitPeriod" SnaplockConfigurationProperty = AutocommitPeriodProperty
  set newValue SnaplockConfigurationProperty {..}
    = SnaplockConfigurationProperty
        {autocommitPeriod = Prelude.pure newValue, ..}
instance Property "PrivilegedDelete" SnaplockConfigurationProperty where
  type PropertyType "PrivilegedDelete" SnaplockConfigurationProperty = Value Prelude.Text
  set newValue SnaplockConfigurationProperty {..}
    = SnaplockConfigurationProperty
        {privilegedDelete = Prelude.pure newValue, ..}
instance Property "RetentionPeriod" SnaplockConfigurationProperty where
  type PropertyType "RetentionPeriod" SnaplockConfigurationProperty = SnaplockRetentionPeriodProperty
  set newValue SnaplockConfigurationProperty {..}
    = SnaplockConfigurationProperty
        {retentionPeriod = Prelude.pure newValue, ..}
instance Property "SnaplockType" SnaplockConfigurationProperty where
  type PropertyType "SnaplockType" SnaplockConfigurationProperty = Value Prelude.Text
  set newValue SnaplockConfigurationProperty {..}
    = SnaplockConfigurationProperty {snaplockType = newValue, ..}
instance Property "VolumeAppendModeEnabled" SnaplockConfigurationProperty where
  type PropertyType "VolumeAppendModeEnabled" SnaplockConfigurationProperty = Value Prelude.Text
  set newValue SnaplockConfigurationProperty {..}
    = SnaplockConfigurationProperty
        {volumeAppendModeEnabled = Prelude.pure newValue, ..}