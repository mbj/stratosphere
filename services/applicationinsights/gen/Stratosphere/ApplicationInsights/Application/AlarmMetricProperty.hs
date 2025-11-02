module Stratosphere.ApplicationInsights.Application.AlarmMetricProperty (
        AlarmMetricProperty(..), mkAlarmMetricProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AlarmMetricProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationinsights-application-alarmmetric.html>
    AlarmMetricProperty {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationinsights-application-alarmmetric.html#cfn-applicationinsights-application-alarmmetric-alarmmetricname>
                         alarmMetricName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAlarmMetricProperty :: Value Prelude.Text -> AlarmMetricProperty
mkAlarmMetricProperty alarmMetricName
  = AlarmMetricProperty
      {haddock_workaround_ = (), alarmMetricName = alarmMetricName}
instance ToResourceProperties AlarmMetricProperty where
  toResourceProperties AlarmMetricProperty {..}
    = ResourceProperties
        {awsType = "AWS::ApplicationInsights::Application.AlarmMetric",
         supportsTags = Prelude.False,
         properties = ["AlarmMetricName" JSON..= alarmMetricName]}
instance JSON.ToJSON AlarmMetricProperty where
  toJSON AlarmMetricProperty {..}
    = JSON.object ["AlarmMetricName" JSON..= alarmMetricName]
instance Property "AlarmMetricName" AlarmMetricProperty where
  type PropertyType "AlarmMetricName" AlarmMetricProperty = Value Prelude.Text
  set newValue AlarmMetricProperty {..}
    = AlarmMetricProperty {alarmMetricName = newValue, ..}