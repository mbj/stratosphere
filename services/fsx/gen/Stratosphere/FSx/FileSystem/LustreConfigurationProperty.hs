module Stratosphere.FSx.FileSystem.LustreConfigurationProperty (
        LustreConfigurationProperty(..), mkLustreConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LustreConfigurationProperty
  = LustreConfigurationProperty {autoImportPolicy :: (Prelude.Maybe (Value Prelude.Text)),
                                 automaticBackupRetentionDays :: (Prelude.Maybe (Value Prelude.Integer)),
                                 copyTagsToBackups :: (Prelude.Maybe (Value Prelude.Bool)),
                                 dailyAutomaticBackupStartTime :: (Prelude.Maybe (Value Prelude.Text)),
                                 dataCompressionType :: (Prelude.Maybe (Value Prelude.Text)),
                                 deploymentType :: (Prelude.Maybe (Value Prelude.Text)),
                                 driveCacheType :: (Prelude.Maybe (Value Prelude.Text)),
                                 exportPath :: (Prelude.Maybe (Value Prelude.Text)),
                                 importPath :: (Prelude.Maybe (Value Prelude.Text)),
                                 importedFileChunkSize :: (Prelude.Maybe (Value Prelude.Integer)),
                                 perUnitStorageThroughput :: (Prelude.Maybe (Value Prelude.Integer)),
                                 weeklyMaintenanceStartTime :: (Prelude.Maybe (Value Prelude.Text))}
mkLustreConfigurationProperty :: LustreConfigurationProperty
mkLustreConfigurationProperty
  = LustreConfigurationProperty
      {autoImportPolicy = Prelude.Nothing,
       automaticBackupRetentionDays = Prelude.Nothing,
       copyTagsToBackups = Prelude.Nothing,
       dailyAutomaticBackupStartTime = Prelude.Nothing,
       dataCompressionType = Prelude.Nothing,
       deploymentType = Prelude.Nothing, driveCacheType = Prelude.Nothing,
       exportPath = Prelude.Nothing, importPath = Prelude.Nothing,
       importedFileChunkSize = Prelude.Nothing,
       perUnitStorageThroughput = Prelude.Nothing,
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
                            (JSON..=) "DeploymentType" Prelude.<$> deploymentType,
                            (JSON..=) "DriveCacheType" Prelude.<$> driveCacheType,
                            (JSON..=) "ExportPath" Prelude.<$> exportPath,
                            (JSON..=) "ImportPath" Prelude.<$> importPath,
                            (JSON..=) "ImportedFileChunkSize"
                              Prelude.<$> importedFileChunkSize,
                            (JSON..=) "PerUnitStorageThroughput"
                              Prelude.<$> perUnitStorageThroughput,
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
               (JSON..=) "DeploymentType" Prelude.<$> deploymentType,
               (JSON..=) "DriveCacheType" Prelude.<$> driveCacheType,
               (JSON..=) "ExportPath" Prelude.<$> exportPath,
               (JSON..=) "ImportPath" Prelude.<$> importPath,
               (JSON..=) "ImportedFileChunkSize"
                 Prelude.<$> importedFileChunkSize,
               (JSON..=) "PerUnitStorageThroughput"
                 Prelude.<$> perUnitStorageThroughput,
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
instance Property "PerUnitStorageThroughput" LustreConfigurationProperty where
  type PropertyType "PerUnitStorageThroughput" LustreConfigurationProperty = Value Prelude.Integer
  set newValue LustreConfigurationProperty {..}
    = LustreConfigurationProperty
        {perUnitStorageThroughput = Prelude.pure newValue, ..}
instance Property "WeeklyMaintenanceStartTime" LustreConfigurationProperty where
  type PropertyType "WeeklyMaintenanceStartTime" LustreConfigurationProperty = Value Prelude.Text
  set newValue LustreConfigurationProperty {..}
    = LustreConfigurationProperty
        {weeklyMaintenanceStartTime = Prelude.pure newValue, ..}