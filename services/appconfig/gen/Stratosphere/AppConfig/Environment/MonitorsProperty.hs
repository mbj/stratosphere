module Stratosphere.AppConfig.Environment.MonitorsProperty (
        MonitorsProperty(..), mkMonitorsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MonitorsProperty
  = MonitorsProperty {alarmArn :: (Prelude.Maybe (Value Prelude.Text)),
                      alarmRoleArn :: (Prelude.Maybe (Value Prelude.Text))}
mkMonitorsProperty :: MonitorsProperty
mkMonitorsProperty
  = MonitorsProperty
      {alarmArn = Prelude.Nothing, alarmRoleArn = Prelude.Nothing}
instance ToResourceProperties MonitorsProperty where
  toResourceProperties MonitorsProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppConfig::Environment.Monitors",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AlarmArn" Prelude.<$> alarmArn,
                            (JSON..=) "AlarmRoleArn" Prelude.<$> alarmRoleArn])}
instance JSON.ToJSON MonitorsProperty where
  toJSON MonitorsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AlarmArn" Prelude.<$> alarmArn,
               (JSON..=) "AlarmRoleArn" Prelude.<$> alarmRoleArn]))
instance Property "AlarmArn" MonitorsProperty where
  type PropertyType "AlarmArn" MonitorsProperty = Value Prelude.Text
  set newValue MonitorsProperty {..}
    = MonitorsProperty {alarmArn = Prelude.pure newValue, ..}
instance Property "AlarmRoleArn" MonitorsProperty where
  type PropertyType "AlarmRoleArn" MonitorsProperty = Value Prelude.Text
  set newValue MonitorsProperty {..}
    = MonitorsProperty {alarmRoleArn = Prelude.pure newValue, ..}