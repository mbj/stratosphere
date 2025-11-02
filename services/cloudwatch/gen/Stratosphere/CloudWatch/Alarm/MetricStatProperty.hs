module Stratosphere.CloudWatch.Alarm.MetricStatProperty (
        module Exports, MetricStatProperty(..), mkMetricStatProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CloudWatch.Alarm.MetricProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MetricStatProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudwatch-alarm-metricstat.html>
    MetricStatProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudwatch-alarm-metricstat.html#cfn-cloudwatch-alarm-metricstat-metric>
                        metric :: MetricProperty,
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudwatch-alarm-metricstat.html#cfn-cloudwatch-alarm-metricstat-period>
                        period :: (Value Prelude.Integer),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudwatch-alarm-metricstat.html#cfn-cloudwatch-alarm-metricstat-stat>
                        stat :: (Value Prelude.Text),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudwatch-alarm-metricstat.html#cfn-cloudwatch-alarm-metricstat-unit>
                        unit :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMetricStatProperty ::
  MetricProperty
  -> Value Prelude.Integer
     -> Value Prelude.Text -> MetricStatProperty
mkMetricStatProperty metric period stat
  = MetricStatProperty
      {haddock_workaround_ = (), metric = metric, period = period,
       stat = stat, unit = Prelude.Nothing}
instance ToResourceProperties MetricStatProperty where
  toResourceProperties MetricStatProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudWatch::Alarm.MetricStat",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Metric" JSON..= metric, "Period" JSON..= period,
                            "Stat" JSON..= stat]
                           (Prelude.catMaybes [(JSON..=) "Unit" Prelude.<$> unit]))}
instance JSON.ToJSON MetricStatProperty where
  toJSON MetricStatProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Metric" JSON..= metric, "Period" JSON..= period,
               "Stat" JSON..= stat]
              (Prelude.catMaybes [(JSON..=) "Unit" Prelude.<$> unit])))
instance Property "Metric" MetricStatProperty where
  type PropertyType "Metric" MetricStatProperty = MetricProperty
  set newValue MetricStatProperty {..}
    = MetricStatProperty {metric = newValue, ..}
instance Property "Period" MetricStatProperty where
  type PropertyType "Period" MetricStatProperty = Value Prelude.Integer
  set newValue MetricStatProperty {..}
    = MetricStatProperty {period = newValue, ..}
instance Property "Stat" MetricStatProperty where
  type PropertyType "Stat" MetricStatProperty = Value Prelude.Text
  set newValue MetricStatProperty {..}
    = MetricStatProperty {stat = newValue, ..}
instance Property "Unit" MetricStatProperty where
  type PropertyType "Unit" MetricStatProperty = Value Prelude.Text
  set newValue MetricStatProperty {..}
    = MetricStatProperty {unit = Prelude.pure newValue, ..}