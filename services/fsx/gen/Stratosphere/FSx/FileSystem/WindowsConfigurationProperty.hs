module Stratosphere.FSx.FileSystem.WindowsConfigurationProperty (
        module Exports, WindowsConfigurationProperty(..),
        mkWindowsConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.FSx.FileSystem.AuditLogConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.FSx.FileSystem.DiskIopsConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.FSx.FileSystem.SelfManagedActiveDirectoryConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data WindowsConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-windowsconfiguration.html>
    WindowsConfigurationProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-windowsconfiguration.html#cfn-fsx-filesystem-windowsconfiguration-activedirectoryid>
                                  activeDirectoryId :: (Prelude.Maybe (Value Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-windowsconfiguration.html#cfn-fsx-filesystem-windowsconfiguration-aliases>
                                  aliases :: (Prelude.Maybe (ValueList Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-windowsconfiguration.html#cfn-fsx-filesystem-windowsconfiguration-auditlogconfiguration>
                                  auditLogConfiguration :: (Prelude.Maybe AuditLogConfigurationProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-windowsconfiguration.html#cfn-fsx-filesystem-windowsconfiguration-automaticbackupretentiondays>
                                  automaticBackupRetentionDays :: (Prelude.Maybe (Value Prelude.Integer)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-windowsconfiguration.html#cfn-fsx-filesystem-windowsconfiguration-copytagstobackups>
                                  copyTagsToBackups :: (Prelude.Maybe (Value Prelude.Bool)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-windowsconfiguration.html#cfn-fsx-filesystem-windowsconfiguration-dailyautomaticbackupstarttime>
                                  dailyAutomaticBackupStartTime :: (Prelude.Maybe (Value Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-windowsconfiguration.html#cfn-fsx-filesystem-windowsconfiguration-deploymenttype>
                                  deploymentType :: (Prelude.Maybe (Value Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-windowsconfiguration.html#cfn-fsx-filesystem-windowsconfiguration-diskiopsconfiguration>
                                  diskIopsConfiguration :: (Prelude.Maybe DiskIopsConfigurationProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-windowsconfiguration.html#cfn-fsx-filesystem-windowsconfiguration-preferredsubnetid>
                                  preferredSubnetId :: (Prelude.Maybe (Value Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-windowsconfiguration.html#cfn-fsx-filesystem-windowsconfiguration-selfmanagedactivedirectoryconfiguration>
                                  selfManagedActiveDirectoryConfiguration :: (Prelude.Maybe SelfManagedActiveDirectoryConfigurationProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-windowsconfiguration.html#cfn-fsx-filesystem-windowsconfiguration-throughputcapacity>
                                  throughputCapacity :: (Value Prelude.Integer),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-windowsconfiguration.html#cfn-fsx-filesystem-windowsconfiguration-weeklymaintenancestarttime>
                                  weeklyMaintenanceStartTime :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkWindowsConfigurationProperty ::
  Value Prelude.Integer -> WindowsConfigurationProperty
mkWindowsConfigurationProperty throughputCapacity
  = WindowsConfigurationProperty
      {haddock_workaround_ = (), throughputCapacity = throughputCapacity,
       activeDirectoryId = Prelude.Nothing, aliases = Prelude.Nothing,
       auditLogConfiguration = Prelude.Nothing,
       automaticBackupRetentionDays = Prelude.Nothing,
       copyTagsToBackups = Prelude.Nothing,
       dailyAutomaticBackupStartTime = Prelude.Nothing,
       deploymentType = Prelude.Nothing,
       diskIopsConfiguration = Prelude.Nothing,
       preferredSubnetId = Prelude.Nothing,
       selfManagedActiveDirectoryConfiguration = Prelude.Nothing,
       weeklyMaintenanceStartTime = Prelude.Nothing}
instance ToResourceProperties WindowsConfigurationProperty where
  toResourceProperties WindowsConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::FSx::FileSystem.WindowsConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ThroughputCapacity" JSON..= throughputCapacity]
                           (Prelude.catMaybes
                              [(JSON..=) "ActiveDirectoryId" Prelude.<$> activeDirectoryId,
                               (JSON..=) "Aliases" Prelude.<$> aliases,
                               (JSON..=) "AuditLogConfiguration"
                                 Prelude.<$> auditLogConfiguration,
                               (JSON..=) "AutomaticBackupRetentionDays"
                                 Prelude.<$> automaticBackupRetentionDays,
                               (JSON..=) "CopyTagsToBackups" Prelude.<$> copyTagsToBackups,
                               (JSON..=) "DailyAutomaticBackupStartTime"
                                 Prelude.<$> dailyAutomaticBackupStartTime,
                               (JSON..=) "DeploymentType" Prelude.<$> deploymentType,
                               (JSON..=) "DiskIopsConfiguration"
                                 Prelude.<$> diskIopsConfiguration,
                               (JSON..=) "PreferredSubnetId" Prelude.<$> preferredSubnetId,
                               (JSON..=) "SelfManagedActiveDirectoryConfiguration"
                                 Prelude.<$> selfManagedActiveDirectoryConfiguration,
                               (JSON..=) "WeeklyMaintenanceStartTime"
                                 Prelude.<$> weeklyMaintenanceStartTime]))}
instance JSON.ToJSON WindowsConfigurationProperty where
  toJSON WindowsConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ThroughputCapacity" JSON..= throughputCapacity]
              (Prelude.catMaybes
                 [(JSON..=) "ActiveDirectoryId" Prelude.<$> activeDirectoryId,
                  (JSON..=) "Aliases" Prelude.<$> aliases,
                  (JSON..=) "AuditLogConfiguration"
                    Prelude.<$> auditLogConfiguration,
                  (JSON..=) "AutomaticBackupRetentionDays"
                    Prelude.<$> automaticBackupRetentionDays,
                  (JSON..=) "CopyTagsToBackups" Prelude.<$> copyTagsToBackups,
                  (JSON..=) "DailyAutomaticBackupStartTime"
                    Prelude.<$> dailyAutomaticBackupStartTime,
                  (JSON..=) "DeploymentType" Prelude.<$> deploymentType,
                  (JSON..=) "DiskIopsConfiguration"
                    Prelude.<$> diskIopsConfiguration,
                  (JSON..=) "PreferredSubnetId" Prelude.<$> preferredSubnetId,
                  (JSON..=) "SelfManagedActiveDirectoryConfiguration"
                    Prelude.<$> selfManagedActiveDirectoryConfiguration,
                  (JSON..=) "WeeklyMaintenanceStartTime"
                    Prelude.<$> weeklyMaintenanceStartTime])))
instance Property "ActiveDirectoryId" WindowsConfigurationProperty where
  type PropertyType "ActiveDirectoryId" WindowsConfigurationProperty = Value Prelude.Text
  set newValue WindowsConfigurationProperty {..}
    = WindowsConfigurationProperty
        {activeDirectoryId = Prelude.pure newValue, ..}
instance Property "Aliases" WindowsConfigurationProperty where
  type PropertyType "Aliases" WindowsConfigurationProperty = ValueList Prelude.Text
  set newValue WindowsConfigurationProperty {..}
    = WindowsConfigurationProperty
        {aliases = Prelude.pure newValue, ..}
instance Property "AuditLogConfiguration" WindowsConfigurationProperty where
  type PropertyType "AuditLogConfiguration" WindowsConfigurationProperty = AuditLogConfigurationProperty
  set newValue WindowsConfigurationProperty {..}
    = WindowsConfigurationProperty
        {auditLogConfiguration = Prelude.pure newValue, ..}
instance Property "AutomaticBackupRetentionDays" WindowsConfigurationProperty where
  type PropertyType "AutomaticBackupRetentionDays" WindowsConfigurationProperty = Value Prelude.Integer
  set newValue WindowsConfigurationProperty {..}
    = WindowsConfigurationProperty
        {automaticBackupRetentionDays = Prelude.pure newValue, ..}
instance Property "CopyTagsToBackups" WindowsConfigurationProperty where
  type PropertyType "CopyTagsToBackups" WindowsConfigurationProperty = Value Prelude.Bool
  set newValue WindowsConfigurationProperty {..}
    = WindowsConfigurationProperty
        {copyTagsToBackups = Prelude.pure newValue, ..}
instance Property "DailyAutomaticBackupStartTime" WindowsConfigurationProperty where
  type PropertyType "DailyAutomaticBackupStartTime" WindowsConfigurationProperty = Value Prelude.Text
  set newValue WindowsConfigurationProperty {..}
    = WindowsConfigurationProperty
        {dailyAutomaticBackupStartTime = Prelude.pure newValue, ..}
instance Property "DeploymentType" WindowsConfigurationProperty where
  type PropertyType "DeploymentType" WindowsConfigurationProperty = Value Prelude.Text
  set newValue WindowsConfigurationProperty {..}
    = WindowsConfigurationProperty
        {deploymentType = Prelude.pure newValue, ..}
instance Property "DiskIopsConfiguration" WindowsConfigurationProperty where
  type PropertyType "DiskIopsConfiguration" WindowsConfigurationProperty = DiskIopsConfigurationProperty
  set newValue WindowsConfigurationProperty {..}
    = WindowsConfigurationProperty
        {diskIopsConfiguration = Prelude.pure newValue, ..}
instance Property "PreferredSubnetId" WindowsConfigurationProperty where
  type PropertyType "PreferredSubnetId" WindowsConfigurationProperty = Value Prelude.Text
  set newValue WindowsConfigurationProperty {..}
    = WindowsConfigurationProperty
        {preferredSubnetId = Prelude.pure newValue, ..}
instance Property "SelfManagedActiveDirectoryConfiguration" WindowsConfigurationProperty where
  type PropertyType "SelfManagedActiveDirectoryConfiguration" WindowsConfigurationProperty = SelfManagedActiveDirectoryConfigurationProperty
  set newValue WindowsConfigurationProperty {..}
    = WindowsConfigurationProperty
        {selfManagedActiveDirectoryConfiguration = Prelude.pure newValue,
         ..}
instance Property "ThroughputCapacity" WindowsConfigurationProperty where
  type PropertyType "ThroughputCapacity" WindowsConfigurationProperty = Value Prelude.Integer
  set newValue WindowsConfigurationProperty {..}
    = WindowsConfigurationProperty {throughputCapacity = newValue, ..}
instance Property "WeeklyMaintenanceStartTime" WindowsConfigurationProperty where
  type PropertyType "WeeklyMaintenanceStartTime" WindowsConfigurationProperty = Value Prelude.Text
  set newValue WindowsConfigurationProperty {..}
    = WindowsConfigurationProperty
        {weeklyMaintenanceStartTime = Prelude.pure newValue, ..}