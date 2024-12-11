module Stratosphere.ApplicationSignals.ServiceLevelObjective.RequestBasedSliProperty (
        module Exports, RequestBasedSliProperty(..),
        mkRequestBasedSliProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ApplicationSignals.ServiceLevelObjective.RequestBasedSliMetricProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RequestBasedSliProperty
  = RequestBasedSliProperty {comparisonOperator :: (Prelude.Maybe (Value Prelude.Text)),
                             metricThreshold :: (Prelude.Maybe (Value Prelude.Double)),
                             requestBasedSliMetric :: RequestBasedSliMetricProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRequestBasedSliProperty ::
  RequestBasedSliMetricProperty -> RequestBasedSliProperty
mkRequestBasedSliProperty requestBasedSliMetric
  = RequestBasedSliProperty
      {requestBasedSliMetric = requestBasedSliMetric,
       comparisonOperator = Prelude.Nothing,
       metricThreshold = Prelude.Nothing}
instance ToResourceProperties RequestBasedSliProperty where
  toResourceProperties RequestBasedSliProperty {..}
    = ResourceProperties
        {awsType = "AWS::ApplicationSignals::ServiceLevelObjective.RequestBasedSli",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["RequestBasedSliMetric" JSON..= requestBasedSliMetric]
                           (Prelude.catMaybes
                              [(JSON..=) "ComparisonOperator" Prelude.<$> comparisonOperator,
                               (JSON..=) "MetricThreshold" Prelude.<$> metricThreshold]))}
instance JSON.ToJSON RequestBasedSliProperty where
  toJSON RequestBasedSliProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["RequestBasedSliMetric" JSON..= requestBasedSliMetric]
              (Prelude.catMaybes
                 [(JSON..=) "ComparisonOperator" Prelude.<$> comparisonOperator,
                  (JSON..=) "MetricThreshold" Prelude.<$> metricThreshold])))
instance Property "ComparisonOperator" RequestBasedSliProperty where
  type PropertyType "ComparisonOperator" RequestBasedSliProperty = Value Prelude.Text
  set newValue RequestBasedSliProperty {..}
    = RequestBasedSliProperty
        {comparisonOperator = Prelude.pure newValue, ..}
instance Property "MetricThreshold" RequestBasedSliProperty where
  type PropertyType "MetricThreshold" RequestBasedSliProperty = Value Prelude.Double
  set newValue RequestBasedSliProperty {..}
    = RequestBasedSliProperty
        {metricThreshold = Prelude.pure newValue, ..}
instance Property "RequestBasedSliMetric" RequestBasedSliProperty where
  type PropertyType "RequestBasedSliMetric" RequestBasedSliProperty = RequestBasedSliMetricProperty
  set newValue RequestBasedSliProperty {..}
    = RequestBasedSliProperty {requestBasedSliMetric = newValue, ..}