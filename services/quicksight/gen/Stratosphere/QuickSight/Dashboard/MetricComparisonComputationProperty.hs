module Stratosphere.QuickSight.Dashboard.MetricComparisonComputationProperty (
        module Exports, MetricComparisonComputationProperty(..),
        mkMetricComparisonComputationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.DimensionFieldProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.MeasureFieldProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MetricComparisonComputationProperty
  = MetricComparisonComputationProperty {computationId :: (Value Prelude.Text),
                                         fromValue :: (Prelude.Maybe MeasureFieldProperty),
                                         name :: (Prelude.Maybe (Value Prelude.Text)),
                                         targetValue :: (Prelude.Maybe MeasureFieldProperty),
                                         time :: (Prelude.Maybe DimensionFieldProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMetricComparisonComputationProperty ::
  Value Prelude.Text -> MetricComparisonComputationProperty
mkMetricComparisonComputationProperty computationId
  = MetricComparisonComputationProperty
      {computationId = computationId, fromValue = Prelude.Nothing,
       name = Prelude.Nothing, targetValue = Prelude.Nothing,
       time = Prelude.Nothing}
instance ToResourceProperties MetricComparisonComputationProperty where
  toResourceProperties MetricComparisonComputationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.MetricComparisonComputation",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ComputationId" JSON..= computationId]
                           (Prelude.catMaybes
                              [(JSON..=) "FromValue" Prelude.<$> fromValue,
                               (JSON..=) "Name" Prelude.<$> name,
                               (JSON..=) "TargetValue" Prelude.<$> targetValue,
                               (JSON..=) "Time" Prelude.<$> time]))}
instance JSON.ToJSON MetricComparisonComputationProperty where
  toJSON MetricComparisonComputationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ComputationId" JSON..= computationId]
              (Prelude.catMaybes
                 [(JSON..=) "FromValue" Prelude.<$> fromValue,
                  (JSON..=) "Name" Prelude.<$> name,
                  (JSON..=) "TargetValue" Prelude.<$> targetValue,
                  (JSON..=) "Time" Prelude.<$> time])))
instance Property "ComputationId" MetricComparisonComputationProperty where
  type PropertyType "ComputationId" MetricComparisonComputationProperty = Value Prelude.Text
  set newValue MetricComparisonComputationProperty {..}
    = MetricComparisonComputationProperty
        {computationId = newValue, ..}
instance Property "FromValue" MetricComparisonComputationProperty where
  type PropertyType "FromValue" MetricComparisonComputationProperty = MeasureFieldProperty
  set newValue MetricComparisonComputationProperty {..}
    = MetricComparisonComputationProperty
        {fromValue = Prelude.pure newValue, ..}
instance Property "Name" MetricComparisonComputationProperty where
  type PropertyType "Name" MetricComparisonComputationProperty = Value Prelude.Text
  set newValue MetricComparisonComputationProperty {..}
    = MetricComparisonComputationProperty
        {name = Prelude.pure newValue, ..}
instance Property "TargetValue" MetricComparisonComputationProperty where
  type PropertyType "TargetValue" MetricComparisonComputationProperty = MeasureFieldProperty
  set newValue MetricComparisonComputationProperty {..}
    = MetricComparisonComputationProperty
        {targetValue = Prelude.pure newValue, ..}
instance Property "Time" MetricComparisonComputationProperty where
  type PropertyType "Time" MetricComparisonComputationProperty = DimensionFieldProperty
  set newValue MetricComparisonComputationProperty {..}
    = MetricComparisonComputationProperty
        {time = Prelude.pure newValue, ..}