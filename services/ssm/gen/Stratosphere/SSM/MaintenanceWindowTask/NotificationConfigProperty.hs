module Stratosphere.SSM.MaintenanceWindowTask.NotificationConfigProperty (
        NotificationConfigProperty(..), mkNotificationConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NotificationConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-notificationconfig.html>
    NotificationConfigProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-notificationconfig.html#cfn-ssm-maintenancewindowtask-notificationconfig-notificationarn>
                                notificationArn :: (Value Prelude.Text),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-notificationconfig.html#cfn-ssm-maintenancewindowtask-notificationconfig-notificationevents>
                                notificationEvents :: (Prelude.Maybe (ValueList Prelude.Text)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-notificationconfig.html#cfn-ssm-maintenancewindowtask-notificationconfig-notificationtype>
                                notificationType :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNotificationConfigProperty ::
  Value Prelude.Text -> NotificationConfigProperty
mkNotificationConfigProperty notificationArn
  = NotificationConfigProperty
      {haddock_workaround_ = (), notificationArn = notificationArn,
       notificationEvents = Prelude.Nothing,
       notificationType = Prelude.Nothing}
instance ToResourceProperties NotificationConfigProperty where
  toResourceProperties NotificationConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::SSM::MaintenanceWindowTask.NotificationConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["NotificationArn" JSON..= notificationArn]
                           (Prelude.catMaybes
                              [(JSON..=) "NotificationEvents" Prelude.<$> notificationEvents,
                               (JSON..=) "NotificationType" Prelude.<$> notificationType]))}
instance JSON.ToJSON NotificationConfigProperty where
  toJSON NotificationConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["NotificationArn" JSON..= notificationArn]
              (Prelude.catMaybes
                 [(JSON..=) "NotificationEvents" Prelude.<$> notificationEvents,
                  (JSON..=) "NotificationType" Prelude.<$> notificationType])))
instance Property "NotificationArn" NotificationConfigProperty where
  type PropertyType "NotificationArn" NotificationConfigProperty = Value Prelude.Text
  set newValue NotificationConfigProperty {..}
    = NotificationConfigProperty {notificationArn = newValue, ..}
instance Property "NotificationEvents" NotificationConfigProperty where
  type PropertyType "NotificationEvents" NotificationConfigProperty = ValueList Prelude.Text
  set newValue NotificationConfigProperty {..}
    = NotificationConfigProperty
        {notificationEvents = Prelude.pure newValue, ..}
instance Property "NotificationType" NotificationConfigProperty where
  type PropertyType "NotificationType" NotificationConfigProperty = Value Prelude.Text
  set newValue NotificationConfigProperty {..}
    = NotificationConfigProperty
        {notificationType = Prelude.pure newValue, ..}