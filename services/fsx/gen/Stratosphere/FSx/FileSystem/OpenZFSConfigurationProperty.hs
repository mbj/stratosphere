module Stratosphere.FSx.FileSystem.OpenZFSConfigurationProperty (
        module Exports, OpenZFSConfigurationProperty(..),
        mkOpenZFSConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.FSx.FileSystem.DiskIopsConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.FSx.FileSystem.ReadCacheConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.FSx.FileSystem.RootVolumeConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OpenZFSConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-openzfsconfiguration.html>
    OpenZFSConfigurationProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-openzfsconfiguration.html#cfn-fsx-filesystem-openzfsconfiguration-automaticbackupretentiondays>
                                  automaticBackupRetentionDays :: (Prelude.Maybe (Value Prelude.Integer)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-openzfsconfiguration.html#cfn-fsx-filesystem-openzfsconfiguration-copytagstobackups>
                                  copyTagsToBackups :: (Prelude.Maybe (Value Prelude.Bool)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-openzfsconfiguration.html#cfn-fsx-filesystem-openzfsconfiguration-copytagstovolumes>
                                  copyTagsToVolumes :: (Prelude.Maybe (Value Prelude.Bool)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-openzfsconfiguration.html#cfn-fsx-filesystem-openzfsconfiguration-dailyautomaticbackupstarttime>
                                  dailyAutomaticBackupStartTime :: (Prelude.Maybe (Value Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-openzfsconfiguration.html#cfn-fsx-filesystem-openzfsconfiguration-deploymenttype>
                                  deploymentType :: (Value Prelude.Text),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-openzfsconfiguration.html#cfn-fsx-filesystem-openzfsconfiguration-diskiopsconfiguration>
                                  diskIopsConfiguration :: (Prelude.Maybe DiskIopsConfigurationProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-openzfsconfiguration.html#cfn-fsx-filesystem-openzfsconfiguration-endpointipaddressrange>
                                  endpointIpAddressRange :: (Prelude.Maybe (Value Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-openzfsconfiguration.html#cfn-fsx-filesystem-openzfsconfiguration-options>
                                  options :: (Prelude.Maybe (ValueList Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-openzfsconfiguration.html#cfn-fsx-filesystem-openzfsconfiguration-preferredsubnetid>
                                  preferredSubnetId :: (Prelude.Maybe (Value Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-openzfsconfiguration.html#cfn-fsx-filesystem-openzfsconfiguration-readcacheconfiguration>
                                  readCacheConfiguration :: (Prelude.Maybe ReadCacheConfigurationProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-openzfsconfiguration.html#cfn-fsx-filesystem-openzfsconfiguration-rootvolumeconfiguration>
                                  rootVolumeConfiguration :: (Prelude.Maybe RootVolumeConfigurationProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-openzfsconfiguration.html#cfn-fsx-filesystem-openzfsconfiguration-routetableids>
                                  routeTableIds :: (Prelude.Maybe (ValueList Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-openzfsconfiguration.html#cfn-fsx-filesystem-openzfsconfiguration-throughputcapacity>
                                  throughputCapacity :: (Prelude.Maybe (Value Prelude.Integer)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-openzfsconfiguration.html#cfn-fsx-filesystem-openzfsconfiguration-weeklymaintenancestarttime>
                                  weeklyMaintenanceStartTime :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOpenZFSConfigurationProperty ::
  Value Prelude.Text -> OpenZFSConfigurationProperty
mkOpenZFSConfigurationProperty deploymentType
  = OpenZFSConfigurationProperty
      {haddock_workaround_ = (), deploymentType = deploymentType,
       automaticBackupRetentionDays = Prelude.Nothing,
       copyTagsToBackups = Prelude.Nothing,
       copyTagsToVolumes = Prelude.Nothing,
       dailyAutomaticBackupStartTime = Prelude.Nothing,
       diskIopsConfiguration = Prelude.Nothing,
       endpointIpAddressRange = Prelude.Nothing,
       options = Prelude.Nothing, preferredSubnetId = Prelude.Nothing,
       readCacheConfiguration = Prelude.Nothing,
       rootVolumeConfiguration = Prelude.Nothing,
       routeTableIds = Prelude.Nothing,
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
                               (JSON..=) "EndpointIpAddressRange"
                                 Prelude.<$> endpointIpAddressRange,
                               (JSON..=) "Options" Prelude.<$> options,
                               (JSON..=) "PreferredSubnetId" Prelude.<$> preferredSubnetId,
                               (JSON..=) "ReadCacheConfiguration"
                                 Prelude.<$> readCacheConfiguration,
                               (JSON..=) "RootVolumeConfiguration"
                                 Prelude.<$> rootVolumeConfiguration,
                               (JSON..=) "RouteTableIds" Prelude.<$> routeTableIds,
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
                  (JSON..=) "EndpointIpAddressRange"
                    Prelude.<$> endpointIpAddressRange,
                  (JSON..=) "Options" Prelude.<$> options,
                  (JSON..=) "PreferredSubnetId" Prelude.<$> preferredSubnetId,
                  (JSON..=) "ReadCacheConfiguration"
                    Prelude.<$> readCacheConfiguration,
                  (JSON..=) "RootVolumeConfiguration"
                    Prelude.<$> rootVolumeConfiguration,
                  (JSON..=) "RouteTableIds" Prelude.<$> routeTableIds,
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
instance Property "EndpointIpAddressRange" OpenZFSConfigurationProperty where
  type PropertyType "EndpointIpAddressRange" OpenZFSConfigurationProperty = Value Prelude.Text
  set newValue OpenZFSConfigurationProperty {..}
    = OpenZFSConfigurationProperty
        {endpointIpAddressRange = Prelude.pure newValue, ..}
instance Property "Options" OpenZFSConfigurationProperty where
  type PropertyType "Options" OpenZFSConfigurationProperty = ValueList Prelude.Text
  set newValue OpenZFSConfigurationProperty {..}
    = OpenZFSConfigurationProperty
        {options = Prelude.pure newValue, ..}
instance Property "PreferredSubnetId" OpenZFSConfigurationProperty where
  type PropertyType "PreferredSubnetId" OpenZFSConfigurationProperty = Value Prelude.Text
  set newValue OpenZFSConfigurationProperty {..}
    = OpenZFSConfigurationProperty
        {preferredSubnetId = Prelude.pure newValue, ..}
instance Property "ReadCacheConfiguration" OpenZFSConfigurationProperty where
  type PropertyType "ReadCacheConfiguration" OpenZFSConfigurationProperty = ReadCacheConfigurationProperty
  set newValue OpenZFSConfigurationProperty {..}
    = OpenZFSConfigurationProperty
        {readCacheConfiguration = Prelude.pure newValue, ..}
instance Property "RootVolumeConfiguration" OpenZFSConfigurationProperty where
  type PropertyType "RootVolumeConfiguration" OpenZFSConfigurationProperty = RootVolumeConfigurationProperty
  set newValue OpenZFSConfigurationProperty {..}
    = OpenZFSConfigurationProperty
        {rootVolumeConfiguration = Prelude.pure newValue, ..}
instance Property "RouteTableIds" OpenZFSConfigurationProperty where
  type PropertyType "RouteTableIds" OpenZFSConfigurationProperty = ValueList Prelude.Text
  set newValue OpenZFSConfigurationProperty {..}
    = OpenZFSConfigurationProperty
        {routeTableIds = Prelude.pure newValue, ..}
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