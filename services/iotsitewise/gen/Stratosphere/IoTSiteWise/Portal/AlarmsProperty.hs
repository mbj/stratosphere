module Stratosphere.IoTSiteWise.Portal.AlarmsProperty (
        AlarmsProperty(..), mkAlarmsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AlarmsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-portal-alarms.html>
    AlarmsProperty {haddock_workaround_ :: (),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-portal-alarms.html#cfn-iotsitewise-portal-alarms-alarmrolearn>
                    alarmRoleArn :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-portal-alarms.html#cfn-iotsitewise-portal-alarms-notificationlambdaarn>
                    notificationLambdaArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAlarmsProperty :: AlarmsProperty
mkAlarmsProperty
  = AlarmsProperty
      {haddock_workaround_ = (), alarmRoleArn = Prelude.Nothing,
       notificationLambdaArn = Prelude.Nothing}
instance ToResourceProperties AlarmsProperty where
  toResourceProperties AlarmsProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTSiteWise::Portal.Alarms",
         supportsTags = Prelude.False,
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