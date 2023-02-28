module Stratosphere.Backup.BackupPlan.AdvancedBackupSettingResourceTypeProperty (
        AdvancedBackupSettingResourceTypeProperty(..),
        mkAdvancedBackupSettingResourceTypeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AdvancedBackupSettingResourceTypeProperty
  = AdvancedBackupSettingResourceTypeProperty {backupOptions :: JSON.Object,
                                               resourceType :: (Value Prelude.Text)}
mkAdvancedBackupSettingResourceTypeProperty ::
  JSON.Object
  -> Value Prelude.Text -> AdvancedBackupSettingResourceTypeProperty
mkAdvancedBackupSettingResourceTypeProperty
  backupOptions
  resourceType
  = AdvancedBackupSettingResourceTypeProperty
      {backupOptions = backupOptions, resourceType = resourceType}
instance ToResourceProperties AdvancedBackupSettingResourceTypeProperty where
  toResourceProperties AdvancedBackupSettingResourceTypeProperty {..}
    = ResourceProperties
        {awsType = "AWS::Backup::BackupPlan.AdvancedBackupSettingResourceType",
         supportsTags = Prelude.False,
         properties = ["BackupOptions" JSON..= backupOptions,
                       "ResourceType" JSON..= resourceType]}
instance JSON.ToJSON AdvancedBackupSettingResourceTypeProperty where
  toJSON AdvancedBackupSettingResourceTypeProperty {..}
    = JSON.object
        ["BackupOptions" JSON..= backupOptions,
         "ResourceType" JSON..= resourceType]
instance Property "BackupOptions" AdvancedBackupSettingResourceTypeProperty where
  type PropertyType "BackupOptions" AdvancedBackupSettingResourceTypeProperty = JSON.Object
  set newValue AdvancedBackupSettingResourceTypeProperty {..}
    = AdvancedBackupSettingResourceTypeProperty
        {backupOptions = newValue, ..}
instance Property "ResourceType" AdvancedBackupSettingResourceTypeProperty where
  type PropertyType "ResourceType" AdvancedBackupSettingResourceTypeProperty = Value Prelude.Text
  set newValue AdvancedBackupSettingResourceTypeProperty {..}
    = AdvancedBackupSettingResourceTypeProperty
        {resourceType = newValue, ..}