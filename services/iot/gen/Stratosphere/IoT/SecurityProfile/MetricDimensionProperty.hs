module Stratosphere.IoT.SecurityProfile.MetricDimensionProperty (
        MetricDimensionProperty(..), mkMetricDimensionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MetricDimensionProperty
  = MetricDimensionProperty {dimensionName :: (Value Prelude.Text),
                             operator :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMetricDimensionProperty ::
  Value Prelude.Text -> MetricDimensionProperty
mkMetricDimensionProperty dimensionName
  = MetricDimensionProperty
      {dimensionName = dimensionName, operator = Prelude.Nothing}
instance ToResourceProperties MetricDimensionProperty where
  toResourceProperties MetricDimensionProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoT::SecurityProfile.MetricDimension",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DimensionName" JSON..= dimensionName]
                           (Prelude.catMaybes [(JSON..=) "Operator" Prelude.<$> operator]))}
instance JSON.ToJSON MetricDimensionProperty where
  toJSON MetricDimensionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DimensionName" JSON..= dimensionName]
              (Prelude.catMaybes [(JSON..=) "Operator" Prelude.<$> operator])))
instance Property "DimensionName" MetricDimensionProperty where
  type PropertyType "DimensionName" MetricDimensionProperty = Value Prelude.Text
  set newValue MetricDimensionProperty {..}
    = MetricDimensionProperty {dimensionName = newValue, ..}
instance Property "Operator" MetricDimensionProperty where
  type PropertyType "Operator" MetricDimensionProperty = Value Prelude.Text
  set newValue MetricDimensionProperty {..}
    = MetricDimensionProperty {operator = Prelude.pure newValue, ..}