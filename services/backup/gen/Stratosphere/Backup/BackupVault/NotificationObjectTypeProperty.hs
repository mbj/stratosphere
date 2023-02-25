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
  = NotificationObjectTypeProperty {backupVaultEvents :: (ValueList (Value Prelude.Text)),
                                    sNSTopicArn :: (Value Prelude.Text)}
mkNotificationObjectTypeProperty ::
  ValueList (Value Prelude.Text)
  -> Value Prelude.Text -> NotificationObjectTypeProperty
mkNotificationObjectTypeProperty backupVaultEvents sNSTopicArn
  = NotificationObjectTypeProperty
      {backupVaultEvents = backupVaultEvents, sNSTopicArn = sNSTopicArn}
instance ToResourceProperties NotificationObjectTypeProperty where
  toResourceProperties NotificationObjectTypeProperty {..}
    = ResourceProperties
        {awsType = "AWS::Backup::BackupVault.NotificationObjectType",
         properties = ["BackupVaultEvents" JSON..= backupVaultEvents,
                       "SNSTopicArn" JSON..= sNSTopicArn]}
instance JSON.ToJSON NotificationObjectTypeProperty where
  toJSON NotificationObjectTypeProperty {..}
    = JSON.object
        ["BackupVaultEvents" JSON..= backupVaultEvents,
         "SNSTopicArn" JSON..= sNSTopicArn]
instance Property "BackupVaultEvents" NotificationObjectTypeProperty where
  type PropertyType "BackupVaultEvents" NotificationObjectTypeProperty = ValueList (Value Prelude.Text)
  set newValue NotificationObjectTypeProperty {..}
    = NotificationObjectTypeProperty {backupVaultEvents = newValue, ..}
instance Property "SNSTopicArn" NotificationObjectTypeProperty where
  type PropertyType "SNSTopicArn" NotificationObjectTypeProperty = Value Prelude.Text
  set newValue NotificationObjectTypeProperty {..}
    = NotificationObjectTypeProperty {sNSTopicArn = newValue, ..}