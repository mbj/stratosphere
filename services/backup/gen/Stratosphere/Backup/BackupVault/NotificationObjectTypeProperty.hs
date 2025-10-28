module Stratosphere.Backup.BackupVault.NotificationObjectTypeProperty (
        NotificationObjectTypeProperty(..),
        mkNotificationObjectTypeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NotificationObjectTypeProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupvault-notificationobjecttype.html>
    NotificationObjectTypeProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupvault-notificationobjecttype.html#cfn-backup-backupvault-notificationobjecttype-backupvaultevents>
                                    backupVaultEvents :: (ValueList Prelude.Text),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupvault-notificationobjecttype.html#cfn-backup-backupvault-notificationobjecttype-snstopicarn>
                                    sNSTopicArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNotificationObjectTypeProperty ::
  ValueList Prelude.Text
  -> Value Prelude.Text -> NotificationObjectTypeProperty
mkNotificationObjectTypeProperty backupVaultEvents sNSTopicArn
  = NotificationObjectTypeProperty
      {haddock_workaround_ = (), backupVaultEvents = backupVaultEvents,
       sNSTopicArn = sNSTopicArn}
instance ToResourceProperties NotificationObjectTypeProperty where
  toResourceProperties NotificationObjectTypeProperty {..}
    = ResourceProperties
        {awsType = "AWS::Backup::BackupVault.NotificationObjectType",
         supportsTags = Prelude.False,
         properties = ["BackupVaultEvents" JSON..= backupVaultEvents,
                       "SNSTopicArn" JSON..= sNSTopicArn]}
instance JSON.ToJSON NotificationObjectTypeProperty where
  toJSON NotificationObjectTypeProperty {..}
    = JSON.object
        ["BackupVaultEvents" JSON..= backupVaultEvents,
         "SNSTopicArn" JSON..= sNSTopicArn]
instance Property "BackupVaultEvents" NotificationObjectTypeProperty where
  type PropertyType "BackupVaultEvents" NotificationObjectTypeProperty = ValueList Prelude.Text
  set newValue NotificationObjectTypeProperty {..}
    = NotificationObjectTypeProperty {backupVaultEvents = newValue, ..}
instance Property "SNSTopicArn" NotificationObjectTypeProperty where
  type PropertyType "SNSTopicArn" NotificationObjectTypeProperty = Value Prelude.Text
  set newValue NotificationObjectTypeProperty {..}
    = NotificationObjectTypeProperty {sNSTopicArn = newValue, ..}