module Stratosphere.ApplicationInsights.Application.AlarmProperty (
        AlarmProperty(..), mkAlarmProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AlarmProperty
  = AlarmProperty {alarmName :: (Value Prelude.Text),
                   severity :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAlarmProperty :: Value Prelude.Text -> AlarmProperty
mkAlarmProperty alarmName
  = AlarmProperty {alarmName = alarmName, severity = Prelude.Nothing}
instance ToResourceProperties AlarmProperty where
  toResourceProperties AlarmProperty {..}
    = ResourceProperties
        {awsType = "AWS::ApplicationInsights::Application.Alarm",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AlarmName" JSON..= alarmName]
                           (Prelude.catMaybes [(JSON..=) "Severity" Prelude.<$> severity]))}
instance JSON.ToJSON AlarmProperty where
  toJSON AlarmProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AlarmName" JSON..= alarmName]
              (Prelude.catMaybes [(JSON..=) "Severity" Prelude.<$> severity])))
instance Property "AlarmName" AlarmProperty where
  type PropertyType "AlarmName" AlarmProperty = Value Prelude.Text
  set newValue AlarmProperty {..}
    = AlarmProperty {alarmName = newValue, ..}
instance Property "Severity" AlarmProperty where
  type PropertyType "Severity" AlarmProperty = Value Prelude.Text
  set newValue AlarmProperty {..}
    = AlarmProperty {severity = Prelude.pure newValue, ..}