module Stratosphere.FSx.FileSystem.LustreConfigurationProperty (
        module Exports, LustreConfigurationProperty(..),
        mkLustreConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.FSx.FileSystem.DataReadCacheConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.FSx.FileSystem.MetadataConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LustreConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-lustreconfiguration.html>
    LustreConfigurationProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-lustreconfiguration.html#cfn-fsx-filesystem-lustreconfiguration-autoimportpolicy>
                                 autoImportPolicy :: (Prelude.Maybe (Value Prelude.Text)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-lustreconfiguration.html#cfn-fsx-filesystem-lustreconfiguration-automaticbackupretentiondays>
                                 automaticBackupRetentionDays :: (Prelude.Maybe (Value Prelude.Integer)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-lustreconfiguration.html#cfn-fsx-filesystem-lustreconfiguration-copytagstobackups>
                                 copyTagsToBackups :: (Prelude.Maybe (Value Prelude.Bool)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-lustreconfiguration.html#cfn-fsx-filesystem-lustreconfiguration-dailyautomaticbackupstarttime>
                                 dailyAutomaticBackupStartTime :: (Prelude.Maybe (Value Prelude.Text)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-lustreconfiguration.html#cfn-fsx-filesystem-lustreconfiguration-datacompressiontype>
                                 dataCompressionType :: (Prelude.Maybe (Value Prelude.Text)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-lustreconfiguration.html#cfn-fsx-filesystem-lustreconfiguration-datareadcacheconfiguration>
                                 dataReadCacheConfiguration :: (Prelude.Maybe DataReadCacheConfigurationProperty),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-lustreconfiguration.html#cfn-fsx-filesystem-lustreconfiguration-deploymenttype>
                                 deploymentType :: (Prelude.Maybe (Value Prelude.Text)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-lustreconfiguration.html#cfn-fsx-filesystem-lustreconfiguration-drivecachetype>
                                 driveCacheType :: (Prelude.Maybe (Value Prelude.Text)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-lustreconfiguration.html#cfn-fsx-filesystem-lustreconfiguration-efaenabled>
                                 efaEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-lustreconfiguration.html#cfn-fsx-filesystem-lustreconfiguration-exportpath>
                                 exportPath :: (Prelude.Maybe (Value Prelude.Text)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-lustreconfiguration.html#cfn-fsx-filesystem-lustreconfiguration-importpath>
                                 importPath :: (Prelude.Maybe (Value Prelude.Text)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-lustreconfiguration.html#cfn-fsx-filesystem-lustreconfiguration-importedfilechunksize>
                                 importedFileChunkSize :: (Prelude.Maybe (Value Prelude.Integer)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-lustreconfiguration.html#cfn-fsx-filesystem-lustreconfiguration-metadataconfiguration>
                                 metadataConfiguration :: (Prelude.Maybe MetadataConfigurationProperty),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-lustreconfiguration.html#cfn-fsx-filesystem-lustreconfiguration-perunitstoragethroughput>
                                 perUnitStorageThroughput :: (Prelude.Maybe (Value Prelude.Integer)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-lustreconfiguration.html#cfn-fsx-filesystem-lustreconfiguration-throughputcapacity>
                                 throughputCapacity :: (Prelude.Maybe (Value Prelude.Integer)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-lustreconfiguration.html#cfn-fsx-filesystem-lustreconfiguration-weeklymaintenancestarttime>
                                 weeklyMaintenanceStartTime :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLustreConfigurationProperty :: LustreConfigurationProperty
mkLustreConfigurationProperty
  = LustreConfigurationProperty
      {haddock_workaround_ = (), autoImportPolicy = Prelude.Nothing,
       automaticBackupRetentionDays = Prelude.Nothing,
       copyTagsToBackups = Prelude.Nothing,
       dailyAutomaticBackupStartTime = Prelude.Nothing,
       dataCompressionType = Prelude.Nothing,
       dataReadCacheConfiguration = Prelude.Nothing,
       deploymentType = Prelude.Nothing, driveCacheType = Prelude.Nothing,
       efaEnabled = Prelude.Nothing, exportPath = Prelude.Nothing,
       importPath = Prelude.Nothing,
       importedFileChunkSize = Prelude.Nothing,
       metadataConfiguration = Prelude.Nothing,
       perUnitStorageThroughput = Prelude.Nothing,
       throughputCapacity = Prelude.Nothing,
       weeklyMaintenanceStartTime = Prelude.Nothing}
instance ToResourceProperties LustreConfigurationProperty where
  toResourceProperties LustreConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::FSx::FileSystem.LustreConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AutoImportPolicy" Prelude.<$> autoImportPolicy,
                            (JSON..=) "AutomaticBackupRetentionDays"
                              Prelude.<$> automaticBackupRetentionDays,
                            (JSON..=) "CopyTagsToBackups" Prelude.<$> copyTagsToBackups,
                            (JSON..=) "DailyAutomaticBackupStartTime"
                              Prelude.<$> dailyAutomaticBackupStartTime,
                            (JSON..=) "DataCompressionType" Prelude.<$> dataCompressionType,
                            (JSON..=) "DataReadCacheConfiguration"
                              Prelude.<$> dataReadCacheConfiguration,
                            (JSON..=) "DeploymentType" Prelude.<$> deploymentType,
                            (JSON..=) "DriveCacheType" Prelude.<$> driveCacheType,
                            (JSON..=) "EfaEnabled" Prelude.<$> efaEnabled,
                            (JSON..=) "ExportPath" Prelude.<$> exportPath,
                            (JSON..=) "ImportPath" Prelude.<$> importPath,
                            (JSON..=) "ImportedFileChunkSize"
                              Prelude.<$> importedFileChunkSize,
                            (JSON..=) "MetadataConfiguration"
                              Prelude.<$> metadataConfiguration,
                            (JSON..=) "PerUnitStorageThroughput"
                              Prelude.<$> perUnitStorageThroughput,
                            (JSON..=) "ThroughputCapacity" Prelude.<$> throughputCapacity,
                            (JSON..=) "WeeklyMaintenanceStartTime"
                              Prelude.<$> weeklyMaintenanceStartTime])}
instance JSON.ToJSON LustreConfigurationProperty where
  toJSON LustreConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AutoImportPolicy" Prelude.<$> autoImportPolicy,
               (JSON..=) "AutomaticBackupRetentionDays"
                 Prelude.<$> automaticBackupRetentionDays,
               (JSON..=) "CopyTagsToBackups" Prelude.<$> copyTagsToBackups,
               (JSON..=) "DailyAutomaticBackupStartTime"
                 Prelude.<$> dailyAutomaticBackupStartTime,
               (JSON..=) "DataCompressionType" Prelude.<$> dataCompressionType,
               (JSON..=) "DataReadCacheConfiguration"
                 Prelude.<$> dataReadCacheConfiguration,
               (JSON..=) "DeploymentType" Prelude.<$> deploymentType,
               (JSON..=) "DriveCacheType" Prelude.<$> driveCacheType,
               (JSON..=) "EfaEnabled" Prelude.<$> efaEnabled,
               (JSON..=) "ExportPath" Prelude.<$> exportPath,
               (JSON..=) "ImportPath" Prelude.<$> importPath,
               (JSON..=) "ImportedFileChunkSize"
                 Prelude.<$> importedFileChunkSize,
               (JSON..=) "MetadataConfiguration"
                 Prelude.<$> metadataConfiguration,
               (JSON..=) "PerUnitStorageThroughput"
                 Prelude.<$> perUnitStorageThroughput,
               (JSON..=) "ThroughputCapacity" Prelude.<$> throughputCapacity,
               (JSON..=) "WeeklyMaintenanceStartTime"
                 Prelude.<$> weeklyMaintenanceStartTime]))
instance Property "AutoImportPolicy" LustreConfigurationProperty where
  type PropertyType "AutoImportPolicy" LustreConfigurationProperty = Value Prelude.Text
  set newValue LustreConfigurationProperty {..}
    = LustreConfigurationProperty
        {autoImportPolicy = Prelude.pure newValue, ..}
instance Property "AutomaticBackupRetentionDays" LustreConfigurationProperty where
  type PropertyType "AutomaticBackupRetentionDays" LustreConfigurationProperty = Value Prelude.Integer
  set newValue LustreConfigurationProperty {..}
    = LustreConfigurationProperty
        {automaticBackupRetentionDays = Prelude.pure newValue, ..}
instance Property "CopyTagsToBackups" LustreConfigurationProperty where
  type PropertyType "CopyTagsToBackups" LustreConfigurationProperty = Value Prelude.Bool
  set newValue LustreConfigurationProperty {..}
    = LustreConfigurationProperty
        {copyTagsToBackups = Prelude.pure newValue, ..}
instance Property "DailyAutomaticBackupStartTime" LustreConfigurationProperty where
  type PropertyType "DailyAutomaticBackupStartTime" LustreConfigurationProperty = Value Prelude.Text
  set newValue LustreConfigurationProperty {..}
    = LustreConfigurationProperty
        {dailyAutomaticBackupStartTime = Prelude.pure newValue, ..}
instance Property "DataCompressionType" LustreConfigurationProperty where
  type PropertyType "DataCompressionType" LustreConfigurationProperty = Value Prelude.Text
  set newValue LustreConfigurationProperty {..}
    = LustreConfigurationProperty
        {dataCompressionType = Prelude.pure newValue, ..}
instance Property "DataReadCacheConfiguration" LustreConfigurationProperty where
  type PropertyType "DataReadCacheConfiguration" LustreConfigurationProperty = DataReadCacheConfigurationProperty
  set newValue LustreConfigurationProperty {..}
    = LustreConfigurationProperty
        {dataReadCacheConfiguration = Prelude.pure newValue, ..}
instance Property "DeploymentType" LustreConfigurationProperty where
  type PropertyType "DeploymentType" LustreConfigurationProperty = Value Prelude.Text
  set newValue LustreConfigurationProperty {..}
    = LustreConfigurationProperty
        {deploymentType = Prelude.pure newValue, ..}
instance Property "DriveCacheType" LustreConfigurationProperty where
  type PropertyType "DriveCacheType" LustreConfigurationProperty = Value Prelude.Text
  set newValue LustreConfigurationProperty {..}
    = LustreConfigurationProperty
        {driveCacheType = Prelude.pure newValue, ..}
instance Property "EfaEnabled" LustreConfigurationProperty where
  type PropertyType "EfaEnabled" LustreConfigurationProperty = Value Prelude.Bool
  set newValue LustreConfigurationProperty {..}
    = LustreConfigurationProperty
        {efaEnabled = Prelude.pure newValue, ..}
instance Property "ExportPath" LustreConfigurationProperty where
  type PropertyType "ExportPath" LustreConfigurationProperty = Value Prelude.Text
  set newValue LustreConfigurationProperty {..}
    = LustreConfigurationProperty
        {exportPath = Prelude.pure newValue, ..}
instance Property "ImportPath" LustreConfigurationProperty where
  type PropertyType "ImportPath" LustreConfigurationProperty = Value Prelude.Text
  set newValue LustreConfigurationProperty {..}
    = LustreConfigurationProperty
        {importPath = Prelude.pure newValue, ..}
instance Property "ImportedFileChunkSize" LustreConfigurationProperty where
  type PropertyType "ImportedFileChunkSize" LustreConfigurationProperty = Value Prelude.Integer
  set newValue LustreConfigurationProperty {..}
    = LustreConfigurationProperty
        {importedFileChunkSize = Prelude.pure newValue, ..}
instance Property "MetadataConfiguration" LustreConfigurationProperty where
  type PropertyType "MetadataConfiguration" LustreConfigurationProperty = MetadataConfigurationProperty
  set newValue LustreConfigurationProperty {..}
    = LustreConfigurationProperty
        {metadataConfiguration = Prelude.pure newValue, ..}
instance Property "PerUnitStorageThroughput" LustreConfigurationProperty where
  type PropertyType "PerUnitStorageThroughput" LustreConfigurationProperty = Value Prelude.Integer
  set newValue LustreConfigurationProperty {..}
    = LustreConfigurationProperty
        {perUnitStorageThroughput = Prelude.pure newValue, ..}
instance Property "ThroughputCapacity" LustreConfigurationProperty where
  type PropertyType "ThroughputCapacity" LustreConfigurationProperty = Value Prelude.Integer
  set newValue LustreConfigurationProperty {..}
    = LustreConfigurationProperty
        {throughputCapacity = Prelude.pure newValue, ..}
instance Property "WeeklyMaintenanceStartTime" LustreConfigurationProperty where
  type PropertyType "WeeklyMaintenanceStartTime" LustreConfigurationProperty = Value Prelude.Text
  set newValue LustreConfigurationProperty {..}
    = LustreConfigurationProperty
        {weeklyMaintenanceStartTime = Prelude.pure newValue, ..}