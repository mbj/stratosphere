module Stratosphere.AutoScaling.ScalingPolicy.MetricDimensionProperty (
        MetricDimensionProperty(..), mkMetricDimensionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MetricDimensionProperty
  = MetricDimensionProperty {name :: (Value Prelude.Text),
                             value :: (Value Prelude.Text)}
mkMetricDimensionProperty ::
  Value Prelude.Text -> Value Prelude.Text -> MetricDimensionProperty
mkMetricDimensionProperty name value
  = MetricDimensionProperty {name = name, value = value}
instance ToResourceProperties MetricDimensionProperty where
  toResourceProperties MetricDimensionProperty {..}
    = ResourceProperties
        {awsType = "AWS::AutoScaling::ScalingPolicy.MetricDimension",
         properties = ["Name" JSON..= name, "Value" JSON..= value]}
instance JSON.ToJSON MetricDimensionProperty where
  toJSON MetricDimensionProperty {..}
    = JSON.object ["Name" JSON..= name, "Value" JSON..= value]
instance Property "Name" MetricDimensionProperty where
  type PropertyType "Name" MetricDimensionProperty = Value Prelude.Text
  set newValue MetricDimensionProperty {..}
    = MetricDimensionProperty {name = newValue, ..}
instance Property "Value" MetricDimensionProperty where
  type PropertyType "Value" MetricDimensionProperty = Value Prelude.Text
  set newValue MetricDimensionProperty {..}
    = MetricDimensionProperty {value = newValue, ..}