module Stratosphere.ApplicationSignals.ServiceLevelObjective.MetricProperty (
        module Exports, MetricProperty(..), mkMetricProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ApplicationSignals.ServiceLevelObjective.DimensionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MetricProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationsignals-servicelevelobjective-metric.html>
    MetricProperty {haddock_workaround_ :: (),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationsignals-servicelevelobjective-metric.html#cfn-applicationsignals-servicelevelobjective-metric-dimensions>
                    dimensions :: (Prelude.Maybe [DimensionProperty]),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationsignals-servicelevelobjective-metric.html#cfn-applicationsignals-servicelevelobjective-metric-metricname>
                    metricName :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationsignals-servicelevelobjective-metric.html#cfn-applicationsignals-servicelevelobjective-metric-namespace>
                    namespace :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMetricProperty :: MetricProperty
mkMetricProperty
  = MetricProperty
      {haddock_workaround_ = (), dimensions = Prelude.Nothing,
       metricName = Prelude.Nothing, namespace = Prelude.Nothing}
instance ToResourceProperties MetricProperty where
  toResourceProperties MetricProperty {..}
    = ResourceProperties
        {awsType = "AWS::ApplicationSignals::ServiceLevelObjective.Metric",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Dimensions" Prelude.<$> dimensions,
                            (JSON..=) "MetricName" Prelude.<$> metricName,
                            (JSON..=) "Namespace" Prelude.<$> namespace])}
instance JSON.ToJSON MetricProperty where
  toJSON MetricProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Dimensions" Prelude.<$> dimensions,
               (JSON..=) "MetricName" Prelude.<$> metricName,
               (JSON..=) "Namespace" Prelude.<$> namespace]))
instance Property "Dimensions" MetricProperty where
  type PropertyType "Dimensions" MetricProperty = [DimensionProperty]
  set newValue MetricProperty {..}
    = MetricProperty {dimensions = Prelude.pure newValue, ..}
instance Property "MetricName" MetricProperty where
  type PropertyType "MetricName" MetricProperty = Value Prelude.Text
  set newValue MetricProperty {..}
    = MetricProperty {metricName = Prelude.pure newValue, ..}
instance Property "Namespace" MetricProperty where
  type PropertyType "Namespace" MetricProperty = Value Prelude.Text
  set newValue MetricProperty {..}
    = MetricProperty {namespace = Prelude.pure newValue, ..}