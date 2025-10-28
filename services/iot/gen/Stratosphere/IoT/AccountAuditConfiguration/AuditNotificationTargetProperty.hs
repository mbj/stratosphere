module Stratosphere.IoT.AccountAuditConfiguration.AuditNotificationTargetProperty (
        AuditNotificationTargetProperty(..),
        mkAuditNotificationTargetProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AuditNotificationTargetProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-accountauditconfiguration-auditnotificationtarget.html>
    AuditNotificationTargetProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-accountauditconfiguration-auditnotificationtarget.html#cfn-iot-accountauditconfiguration-auditnotificationtarget-enabled>
                                     enabled :: (Prelude.Maybe (Value Prelude.Bool)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-accountauditconfiguration-auditnotificationtarget.html#cfn-iot-accountauditconfiguration-auditnotificationtarget-rolearn>
                                     roleArn :: (Prelude.Maybe (Value Prelude.Text)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-accountauditconfiguration-auditnotificationtarget.html#cfn-iot-accountauditconfiguration-auditnotificationtarget-targetarn>
                                     targetArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAuditNotificationTargetProperty ::
  AuditNotificationTargetProperty
mkAuditNotificationTargetProperty
  = AuditNotificationTargetProperty
      {haddock_workaround_ = (), enabled = Prelude.Nothing,
       roleArn = Prelude.Nothing, targetArn = Prelude.Nothing}
instance ToResourceProperties AuditNotificationTargetProperty where
  toResourceProperties AuditNotificationTargetProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoT::AccountAuditConfiguration.AuditNotificationTarget",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Enabled" Prelude.<$> enabled,
                            (JSON..=) "RoleArn" Prelude.<$> roleArn,
                            (JSON..=) "TargetArn" Prelude.<$> targetArn])}
instance JSON.ToJSON AuditNotificationTargetProperty where
  toJSON AuditNotificationTargetProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Enabled" Prelude.<$> enabled,
               (JSON..=) "RoleArn" Prelude.<$> roleArn,
               (JSON..=) "TargetArn" Prelude.<$> targetArn]))
instance Property "Enabled" AuditNotificationTargetProperty where
  type PropertyType "Enabled" AuditNotificationTargetProperty = Value Prelude.Bool
  set newValue AuditNotificationTargetProperty {..}
    = AuditNotificationTargetProperty
        {enabled = Prelude.pure newValue, ..}
instance Property "RoleArn" AuditNotificationTargetProperty where
  type PropertyType "RoleArn" AuditNotificationTargetProperty = Value Prelude.Text
  set newValue AuditNotificationTargetProperty {..}
    = AuditNotificationTargetProperty
        {roleArn = Prelude.pure newValue, ..}
instance Property "TargetArn" AuditNotificationTargetProperty where
  type PropertyType "TargetArn" AuditNotificationTargetProperty = Value Prelude.Text
  set newValue AuditNotificationTargetProperty {..}
    = AuditNotificationTargetProperty
        {targetArn = Prelude.pure newValue, ..}