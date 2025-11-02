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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationinsights-application-process.html>
    ProcessProperty {haddock_workaround_ :: (),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationinsights-application-process.html#cfn-applicationinsights-application-process-alarmmetrics>
                     alarmMetrics :: [AlarmMetricProperty],
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationinsights-application-process.html#cfn-applicationinsights-application-process-processname>
                     processName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkProcessProperty ::
  [AlarmMetricProperty] -> Value Prelude.Text -> ProcessProperty
mkProcessProperty alarmMetrics processName
  = ProcessProperty
      {haddock_workaround_ = (), alarmMetrics = alarmMetrics,
       processName = processName}
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