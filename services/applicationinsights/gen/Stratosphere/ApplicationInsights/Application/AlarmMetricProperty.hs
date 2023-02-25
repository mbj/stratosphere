module Stratosphere.ApplicationInsights.Application.AlarmMetricProperty (
        AlarmMetricProperty(..), mkAlarmMetricProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AlarmMetricProperty
  = AlarmMetricProperty {alarmMetricName :: (Value Prelude.Text)}
mkAlarmMetricProperty :: Value Prelude.Text -> AlarmMetricProperty
mkAlarmMetricProperty alarmMetricName
  = AlarmMetricProperty {alarmMetricName = alarmMetricName}
instance ToResourceProperties AlarmMetricProperty where
  toResourceProperties AlarmMetricProperty {..}
    = ResourceProperties
        {awsType = "AWS::ApplicationInsights::Application.AlarmMetric",
         properties = ["AlarmMetricName" JSON..= alarmMetricName]}
instance JSON.ToJSON AlarmMetricProperty where
  toJSON AlarmMetricProperty {..}
    = JSON.object ["AlarmMetricName" JSON..= alarmMetricName]
instance Property "AlarmMetricName" AlarmMetricProperty where
  type PropertyType "AlarmMetricName" AlarmMetricProperty = Value Prelude.Text
  set newValue AlarmMetricProperty {}
    = AlarmMetricProperty {alarmMetricName = newValue, ..}