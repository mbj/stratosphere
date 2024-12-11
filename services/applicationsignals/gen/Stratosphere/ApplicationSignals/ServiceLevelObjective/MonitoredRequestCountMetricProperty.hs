module Stratosphere.ApplicationSignals.ServiceLevelObjective.MonitoredRequestCountMetricProperty (
        module Exports, MonitoredRequestCountMetricProperty(..),
        mkMonitoredRequestCountMetricProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ApplicationSignals.ServiceLevelObjective.MetricDataQueryProperty as Exports
import Stratosphere.ResourceProperties
data MonitoredRequestCountMetricProperty
  = MonitoredRequestCountMetricProperty {badCountMetric :: (Prelude.Maybe [MetricDataQueryProperty]),
                                         goodCountMetric :: (Prelude.Maybe [MetricDataQueryProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMonitoredRequestCountMetricProperty ::
  MonitoredRequestCountMetricProperty
mkMonitoredRequestCountMetricProperty
  = MonitoredRequestCountMetricProperty
      {badCountMetric = Prelude.Nothing,
       goodCountMetric = Prelude.Nothing}
instance ToResourceProperties MonitoredRequestCountMetricProperty where
  toResourceProperties MonitoredRequestCountMetricProperty {..}
    = ResourceProperties
        {awsType = "AWS::ApplicationSignals::ServiceLevelObjective.MonitoredRequestCountMetric",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "BadCountMetric" Prelude.<$> badCountMetric,
                            (JSON..=) "GoodCountMetric" Prelude.<$> goodCountMetric])}
instance JSON.ToJSON MonitoredRequestCountMetricProperty where
  toJSON MonitoredRequestCountMetricProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "BadCountMetric" Prelude.<$> badCountMetric,
               (JSON..=) "GoodCountMetric" Prelude.<$> goodCountMetric]))
instance Property "BadCountMetric" MonitoredRequestCountMetricProperty where
  type PropertyType "BadCountMetric" MonitoredRequestCountMetricProperty = [MetricDataQueryProperty]
  set newValue MonitoredRequestCountMetricProperty {..}
    = MonitoredRequestCountMetricProperty
        {badCountMetric = Prelude.pure newValue, ..}
instance Property "GoodCountMetric" MonitoredRequestCountMetricProperty where
  type PropertyType "GoodCountMetric" MonitoredRequestCountMetricProperty = [MetricDataQueryProperty]
  set newValue MonitoredRequestCountMetricProperty {..}
    = MonitoredRequestCountMetricProperty
        {goodCountMetric = Prelude.pure newValue, ..}