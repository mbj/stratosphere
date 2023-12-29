module Stratosphere.AutoScaling.ScalingPolicy.MetricStatProperty (
        module Exports, MetricStatProperty(..), mkMetricStatProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AutoScaling.ScalingPolicy.MetricProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MetricStatProperty
  = MetricStatProperty {metric :: MetricProperty,
                        stat :: (Value Prelude.Text),
                        unit :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMetricStatProperty ::
  MetricProperty -> Value Prelude.Text -> MetricStatProperty
mkMetricStatProperty metric stat
  = MetricStatProperty
      {metric = metric, stat = stat, unit = Prelude.Nothing}
instance ToResourceProperties MetricStatProperty where
  toResourceProperties MetricStatProperty {..}
    = ResourceProperties
        {awsType = "AWS::AutoScaling::ScalingPolicy.MetricStat",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Metric" JSON..= metric, "Stat" JSON..= stat]
                           (Prelude.catMaybes [(JSON..=) "Unit" Prelude.<$> unit]))}
instance JSON.ToJSON MetricStatProperty where
  toJSON MetricStatProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Metric" JSON..= metric, "Stat" JSON..= stat]
              (Prelude.catMaybes [(JSON..=) "Unit" Prelude.<$> unit])))
instance Property "Metric" MetricStatProperty where
  type PropertyType "Metric" MetricStatProperty = MetricProperty
  set newValue MetricStatProperty {..}
    = MetricStatProperty {metric = newValue, ..}
instance Property "Stat" MetricStatProperty where
  type PropertyType "Stat" MetricStatProperty = Value Prelude.Text
  set newValue MetricStatProperty {..}
    = MetricStatProperty {stat = newValue, ..}
instance Property "Unit" MetricStatProperty where
  type PropertyType "Unit" MetricStatProperty = Value Prelude.Text
  set newValue MetricStatProperty {..}
    = MetricStatProperty {unit = Prelude.pure newValue, ..}