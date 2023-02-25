module Stratosphere.IoTSiteWise.Portal.AlarmsProperty (
        AlarmsProperty(..), mkAlarmsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AlarmsProperty
  = AlarmsProperty {alarmRoleArn :: (Prelude.Maybe (Value Prelude.Text)),
                    notificationLambdaArn :: (Prelude.Maybe (Value Prelude.Text))}
mkAlarmsProperty :: AlarmsProperty
mkAlarmsProperty
  = AlarmsProperty
      {alarmRoleArn = Prelude.Nothing,
       notificationLambdaArn = Prelude.Nothing}
instance ToResourceProperties AlarmsProperty where
  toResourceProperties AlarmsProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTSiteWise::Portal.Alarms",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AlarmRoleArn" Prelude.<$> alarmRoleArn,
                            (JSON..=) "NotificationLambdaArn"
                              Prelude.<$> notificationLambdaArn])}
instance JSON.ToJSON AlarmsProperty where
  toJSON AlarmsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AlarmRoleArn" Prelude.<$> alarmRoleArn,
               (JSON..=) "NotificationLambdaArn"
                 Prelude.<$> notificationLambdaArn]))
instance Property "AlarmRoleArn" AlarmsProperty where
  type PropertyType "AlarmRoleArn" AlarmsProperty = Value Prelude.Text
  set newValue AlarmsProperty {..}
    = AlarmsProperty {alarmRoleArn = Prelude.pure newValue, ..}
instance Property "NotificationLambdaArn" AlarmsProperty where
  type PropertyType "NotificationLambdaArn" AlarmsProperty = Value Prelude.Text
  set newValue AlarmsProperty {..}
    = AlarmsProperty
        {notificationLambdaArn = Prelude.pure newValue, ..}