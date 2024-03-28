module Stratosphere.ApplicationInsights.Application.ProcessProperty (
        module Exports, ProcessProperty(..), mkProcessProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ApplicationInsights.Application.AlarmMetricProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ProcessProperty
  = ProcessProperty {alarmMetrics :: [AlarmMetricProperty],
                     processName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkProcessProperty ::
  [AlarmMetricProperty] -> Value Prelude.Text -> ProcessProperty
mkProcessProperty alarmMetrics processName
  = ProcessProperty
      {alarmMetrics = alarmMetrics, processName = processName}
instance ToResourceProperties ProcessProperty where
  toResourceProperties ProcessProperty {..}
    = ResourceProperties
        {awsType = "AWS::ApplicationInsights::Application.Process",
         supportsTags = Prelude.False,
         properties = ["AlarmMetrics" JSON..= alarmMetrics,
                       "ProcessName" JSON..= processName]}
instance JSON.ToJSON ProcessProperty where
  toJSON ProcessProperty {..}
    = JSON.object
        ["AlarmMetrics" JSON..= alarmMetrics,
         "ProcessName" JSON..= processName]
instance Property "AlarmMetrics" ProcessProperty where
  type PropertyType "AlarmMetrics" ProcessProperty = [AlarmMetricProperty]
  set newValue ProcessProperty {..}
    = ProcessProperty {alarmMetrics = newValue, ..}
instance Property "ProcessName" ProcessProperty where
  type PropertyType "ProcessName" ProcessProperty = Value Prelude.Text
  set newValue ProcessProperty {..}
    = ProcessProperty {processName = newValue, ..}