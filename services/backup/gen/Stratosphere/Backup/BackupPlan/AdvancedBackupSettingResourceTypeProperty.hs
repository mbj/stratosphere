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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupplan-advancedbackupsettingresourcetype.html>
    AdvancedBackupSettingResourceTypeProperty {haddock_workaround_ :: (),
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupplan-advancedbackupsettingresourcetype.html#cfn-backup-backupplan-advancedbackupsettingresourcetype-backupoptions>
                                               backupOptions :: JSON.Object,
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupplan-advancedbackupsettingresourcetype.html#cfn-backup-backupplan-advancedbackupsettingresourcetype-resourcetype>
                                               resourceType :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAdvancedBackupSettingResourceTypeProperty ::
  JSON.Object
  -> Value Prelude.Text -> AdvancedBackupSettingResourceTypeProperty
mkAdvancedBackupSettingResourceTypeProperty
  backupOptions
  resourceType
  = AdvancedBackupSettingResourceTypeProperty
      {haddock_workaround_ = (), backupOptions = backupOptions,
       resourceType = resourceType}
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