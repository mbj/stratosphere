module Stratosphere.Pinpoint.Campaign.MetricDimensionProperty (
        MetricDimensionProperty(..), mkMetricDimensionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MetricDimensionProperty
  = MetricDimensionProperty {comparisonOperator :: (Prelude.Maybe (Value Prelude.Text)),
                             value :: (Prelude.Maybe (Value Prelude.Double))}
mkMetricDimensionProperty :: MetricDimensionProperty
mkMetricDimensionProperty
  = MetricDimensionProperty
      {comparisonOperator = Prelude.Nothing, value = Prelude.Nothing}
instance ToResourceProperties MetricDimensionProperty where
  toResourceProperties MetricDimensionProperty {..}
    = ResourceProperties
        {awsType = "AWS::Pinpoint::Campaign.MetricDimension",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ComparisonOperator" Prelude.<$> comparisonOperator,
                            (JSON..=) "Value" Prelude.<$> value])}
instance JSON.ToJSON MetricDimensionProperty where
  toJSON MetricDimensionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ComparisonOperator" Prelude.<$> comparisonOperator,
               (JSON..=) "Value" Prelude.<$> value]))
instance Property "ComparisonOperator" MetricDimensionProperty where
  type PropertyType "ComparisonOperator" MetricDimensionProperty = Value Prelude.Text
  set newValue MetricDimensionProperty {..}
    = MetricDimensionProperty
        {comparisonOperator = Prelude.pure newValue, ..}
instance Property "Value" MetricDimensionProperty where
  type PropertyType "Value" MetricDimensionProperty = Value Prelude.Double
  set newValue MetricDimensionProperty {..}
    = MetricDimensionProperty {value = Prelude.pure newValue, ..}