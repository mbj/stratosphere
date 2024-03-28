module Stratosphere.AppConfig.Environment.MonitorProperty (
        MonitorProperty(..), mkMonitorProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MonitorProperty
  = MonitorProperty {alarmArn :: (Value Prelude.Text),
                     alarmRoleArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMonitorProperty :: Value Prelude.Text -> MonitorProperty
mkMonitorProperty alarmArn
  = MonitorProperty
      {alarmArn = alarmArn, alarmRoleArn = Prelude.Nothing}
instance ToResourceProperties MonitorProperty where
  toResourceProperties MonitorProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppConfig::Environment.Monitor",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AlarmArn" JSON..= alarmArn]
                           (Prelude.catMaybes
                              [(JSON..=) "AlarmRoleArn" Prelude.<$> alarmRoleArn]))}
instance JSON.ToJSON MonitorProperty where
  toJSON MonitorProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AlarmArn" JSON..= alarmArn]
              (Prelude.catMaybes
                 [(JSON..=) "AlarmRoleArn" Prelude.<$> alarmRoleArn])))
instance Property "AlarmArn" MonitorProperty where
  type PropertyType "AlarmArn" MonitorProperty = Value Prelude.Text
  set newValue MonitorProperty {..}
    = MonitorProperty {alarmArn = newValue, ..}
instance Property "AlarmRoleArn" MonitorProperty where
  type PropertyType "AlarmRoleArn" MonitorProperty = Value Prelude.Text
  set newValue MonitorProperty {..}
    = MonitorProperty {alarmRoleArn = Prelude.pure newValue, ..}