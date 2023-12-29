module Stratosphere.FSx.FileSystem.OpenZFSConfigurationProperty (
        module Exports, OpenZFSConfigurationProperty(..),
        mkOpenZFSConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.FSx.FileSystem.DiskIopsConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.FSx.FileSystem.RootVolumeConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OpenZFSConfigurationProperty
  = OpenZFSConfigurationProperty {automaticBackupRetentionDays :: (Prelude.Maybe (Value Prelude.Integer)),
                                  copyTagsToBackups :: (Prelude.Maybe (Value Prelude.Bool)),
                                  copyTagsToVolumes :: (Prelude.Maybe (Value Prelude.Bool)),
                                  dailyAutomaticBackupStartTime :: (Prelude.Maybe (Value Prelude.Text)),
                                  deploymentType :: (Value Prelude.Text),
                                  diskIopsConfiguration :: (Prelude.Maybe DiskIopsConfigurationProperty),
                                  options :: (Prelude.Maybe (ValueList Prelude.Text)),
                                  rootVolumeConfiguration :: (Prelude.Maybe RootVolumeConfigurationProperty),
                                  throughputCapacity :: (Prelude.Maybe (Value Prelude.Integer)),
                                  weeklyMaintenanceStartTime :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOpenZFSConfigurationProperty ::
  Value Prelude.Text -> OpenZFSConfigurationProperty
mkOpenZFSConfigurationProperty deploymentType
  = OpenZFSConfigurationProperty
      {deploymentType = deploymentType,
       automaticBackupRetentionDays = Prelude.Nothing,
       copyTagsToBackups = Prelude.Nothing,
       copyTagsToVolumes = Prelude.Nothing,
       dailyAutomaticBackupStartTime = Prelude.Nothing,
       diskIopsConfiguration = Prelude.Nothing, options = Prelude.Nothing,
       rootVolumeConfiguration = Prelude.Nothing,
       throughputCapacity = Prelude.Nothing,
       weeklyMaintenanceStartTime = Prelude.Nothing}
instance ToResourceProperties OpenZFSConfigurationProperty where
  toResourceProperties OpenZFSConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::FSx::FileSystem.OpenZFSConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DeploymentType" JSON..= deploymentType]
                           (Prelude.catMaybes
                              [(JSON..=) "AutomaticBackupRetentionDays"
                                 Prelude.<$> automaticBackupRetentionDays,
                               (JSON..=) "CopyTagsToBackups" Prelude.<$> copyTagsToBackups,
                               (JSON..=) "CopyTagsToVolumes" Prelude.<$> copyTagsToVolumes,
                               (JSON..=) "DailyAutomaticBackupStartTime"
                                 Prelude.<$> dailyAutomaticBackupStartTime,
                               (JSON..=) "DiskIopsConfiguration"
                                 Prelude.<$> diskIopsConfiguration,
                               (JSON..=) "Options" Prelude.<$> options,
                               (JSON..=) "RootVolumeConfiguration"
                                 Prelude.<$> rootVolumeConfiguration,
                               (JSON..=) "ThroughputCapacity" Prelude.<$> throughputCapacity,
                               (JSON..=) "WeeklyMaintenanceStartTime"
                                 Prelude.<$> weeklyMaintenanceStartTime]))}
instance JSON.ToJSON OpenZFSConfigurationProperty where
  toJSON OpenZFSConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DeploymentType" JSON..= deploymentType]
              (Prelude.catMaybes
                 [(JSON..=) "AutomaticBackupRetentionDays"
                    Prelude.<$> automaticBackupRetentionDays,
                  (JSON..=) "CopyTagsToBackups" Prelude.<$> copyTagsToBackups,
                  (JSON..=) "CopyTagsToVolumes" Prelude.<$> copyTagsToVolumes,
                  (JSON..=) "DailyAutomaticBackupStartTime"
                    Prelude.<$> dailyAutomaticBackupStartTime,
                  (JSON..=) "DiskIopsConfiguration"
                    Prelude.<$> diskIopsConfiguration,
                  (JSON..=) "Options" Prelude.<$> options,
                  (JSON..=) "RootVolumeConfiguration"
                    Prelude.<$> rootVolumeConfiguration,
                  (JSON..=) "ThroughputCapacity" Prelude.<$> throughputCapacity,
                  (JSON..=) "WeeklyMaintenanceStartTime"
                    Prelude.<$> weeklyMaintenanceStartTime])))
instance Property "AutomaticBackupRetentionDays" OpenZFSConfigurationProperty where
  type PropertyType "AutomaticBackupRetentionDays" OpenZFSConfigurationProperty = Value Prelude.Integer
  set newValue OpenZFSConfigurationProperty {..}
    = OpenZFSConfigurationProperty
        {automaticBackupRetentionDays = Prelude.pure newValue, ..}
instance Property "CopyTagsToBackups" OpenZFSConfigurationProperty where
  type PropertyType "CopyTagsToBackups" OpenZFSConfigurationProperty = Value Prelude.Bool
  set newValue OpenZFSConfigurationProperty {..}
    = OpenZFSConfigurationProperty
        {copyTagsToBackups = Prelude.pure newValue, ..}
instance Property "CopyTagsToVolumes" OpenZFSConfigurationProperty where
  type PropertyType "CopyTagsToVolumes" OpenZFSConfigurationProperty = Value Prelude.Bool
  set newValue OpenZFSConfigurationProperty {..}
    = OpenZFSConfigurationProperty
        {copyTagsToVolumes = Prelude.pure newValue, ..}
instance Property "DailyAutomaticBackupStartTime" OpenZFSConfigurationProperty where
  type PropertyType "DailyAutomaticBackupStartTime" OpenZFSConfigurationProperty = Value Prelude.Text
  set newValue OpenZFSConfigurationProperty {..}
    = OpenZFSConfigurationProperty
        {dailyAutomaticBackupStartTime = Prelude.pure newValue, ..}
instance Property "DeploymentType" OpenZFSConfigurationProperty where
  type PropertyType "DeploymentType" OpenZFSConfigurationProperty = Value Prelude.Text
  set newValue OpenZFSConfigurationProperty {..}
    = OpenZFSConfigurationProperty {deploymentType = newValue, ..}
instance Property "DiskIopsConfiguration" OpenZFSConfigurationProperty where
  type PropertyType "DiskIopsConfiguration" OpenZFSConfigurationProperty = DiskIopsConfigurationProperty
  set newValue OpenZFSConfigurationProperty {..}
    = OpenZFSConfigurationProperty
        {diskIopsConfiguration = Prelude.pure newValue, ..}
instance Property "Options" OpenZFSConfigurationProperty where
  type PropertyType "Options" OpenZFSConfigurationProperty = ValueList Prelude.Text
  set newValue OpenZFSConfigurationProperty {..}
    = OpenZFSConfigurationProperty
        {options = Prelude.pure newValue, ..}
instance Property "RootVolumeConfiguration" OpenZFSConfigurationProperty where
  type PropertyType "RootVolumeConfiguration" OpenZFSConfigurationProperty = RootVolumeConfigurationProperty
  set newValue OpenZFSConfigurationProperty {..}
    = OpenZFSConfigurationProperty
        {rootVolumeConfiguration = Prelude.pure newValue, ..}
instance Property "ThroughputCapacity" OpenZFSConfigurationProperty where
  type PropertyType "ThroughputCapacity" OpenZFSConfigurationProperty = Value Prelude.Integer
  set newValue OpenZFSConfigurationProperty {..}
    = OpenZFSConfigurationProperty
        {throughputCapacity = Prelude.pure newValue, ..}
instance Property "WeeklyMaintenanceStartTime" OpenZFSConfigurationProperty where
  type PropertyType "WeeklyMaintenanceStartTime" OpenZFSConfigurationProperty = Value Prelude.Text
  set newValue OpenZFSConfigurationProperty {..}
    = OpenZFSConfigurationProperty
        {weeklyMaintenanceStartTime = Prelude.pure newValue, ..}