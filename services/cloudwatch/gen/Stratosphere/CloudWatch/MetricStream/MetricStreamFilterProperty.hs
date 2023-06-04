module Stratosphere.CloudWatch.MetricStream.MetricStreamFilterProperty (
        MetricStreamFilterProperty(..), mkMetricStreamFilterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MetricStreamFilterProperty
  = MetricStreamFilterProperty {metricNames :: (Prelude.Maybe (ValueList Prelude.Text)),
                                namespace :: (Value Prelude.Text)}
mkMetricStreamFilterProperty ::
  Value Prelude.Text -> MetricStreamFilterProperty
mkMetricStreamFilterProperty namespace
  = MetricStreamFilterProperty
      {namespace = namespace, metricNames = Prelude.Nothing}
instance ToResourceProperties MetricStreamFilterProperty where
  toResourceProperties MetricStreamFilterProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudWatch::MetricStream.MetricStreamFilter",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Namespace" JSON..= namespace]
                           (Prelude.catMaybes
                              [(JSON..=) "MetricNames" Prelude.<$> metricNames]))}
instance JSON.ToJSON MetricStreamFilterProperty where
  toJSON MetricStreamFilterProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Namespace" JSON..= namespace]
              (Prelude.catMaybes
                 [(JSON..=) "MetricNames" Prelude.<$> metricNames])))
instance Property "MetricNames" MetricStreamFilterProperty where
  type PropertyType "MetricNames" MetricStreamFilterProperty = ValueList Prelude.Text
  set newValue MetricStreamFilterProperty {..}
    = MetricStreamFilterProperty
        {metricNames = Prelude.pure newValue, ..}
instance Property "Namespace" MetricStreamFilterProperty where
  type PropertyType "Namespace" MetricStreamFilterProperty = Value Prelude.Text
  set newValue MetricStreamFilterProperty {..}
    = MetricStreamFilterProperty {namespace = newValue, ..}