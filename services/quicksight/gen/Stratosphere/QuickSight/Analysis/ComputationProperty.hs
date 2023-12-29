module Stratosphere.QuickSight.Analysis.ComputationProperty (
        module Exports, ComputationProperty(..), mkComputationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.ForecastComputationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.GrowthRateComputationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.MaximumMinimumComputationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.MetricComparisonComputationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.PeriodOverPeriodComputationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.PeriodToDateComputationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.TopBottomMoversComputationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.TopBottomRankedComputationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.TotalAggregationComputationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.UniqueValuesComputationProperty as Exports
import Stratosphere.ResourceProperties
data ComputationProperty
  = ComputationProperty {forecast :: (Prelude.Maybe ForecastComputationProperty),
                         growthRate :: (Prelude.Maybe GrowthRateComputationProperty),
                         maximumMinimum :: (Prelude.Maybe MaximumMinimumComputationProperty),
                         metricComparison :: (Prelude.Maybe MetricComparisonComputationProperty),
                         periodOverPeriod :: (Prelude.Maybe PeriodOverPeriodComputationProperty),
                         periodToDate :: (Prelude.Maybe PeriodToDateComputationProperty),
                         topBottomMovers :: (Prelude.Maybe TopBottomMoversComputationProperty),
                         topBottomRanked :: (Prelude.Maybe TopBottomRankedComputationProperty),
                         totalAggregation :: (Prelude.Maybe TotalAggregationComputationProperty),
                         uniqueValues :: (Prelude.Maybe UniqueValuesComputationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkComputationProperty :: ComputationProperty
mkComputationProperty
  = ComputationProperty
      {forecast = Prelude.Nothing, growthRate = Prelude.Nothing,
       maximumMinimum = Prelude.Nothing,
       metricComparison = Prelude.Nothing,
       periodOverPeriod = Prelude.Nothing, periodToDate = Prelude.Nothing,
       topBottomMovers = Prelude.Nothing,
       topBottomRanked = Prelude.Nothing,
       totalAggregation = Prelude.Nothing, uniqueValues = Prelude.Nothing}
instance ToResourceProperties ComputationProperty where
  toResourceProperties ComputationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.Computation",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Forecast" Prelude.<$> forecast,
                            (JSON..=) "GrowthRate" Prelude.<$> growthRate,
                            (JSON..=) "MaximumMinimum" Prelude.<$> maximumMinimum,
                            (JSON..=) "MetricComparison" Prelude.<$> metricComparison,
                            (JSON..=) "PeriodOverPeriod" Prelude.<$> periodOverPeriod,
                            (JSON..=) "PeriodToDate" Prelude.<$> periodToDate,
                            (JSON..=) "TopBottomMovers" Prelude.<$> topBottomMovers,
                            (JSON..=) "TopBottomRanked" Prelude.<$> topBottomRanked,
                            (JSON..=) "TotalAggregation" Prelude.<$> totalAggregation,
                            (JSON..=) "UniqueValues" Prelude.<$> uniqueValues])}
instance JSON.ToJSON ComputationProperty where
  toJSON ComputationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Forecast" Prelude.<$> forecast,
               (JSON..=) "GrowthRate" Prelude.<$> growthRate,
               (JSON..=) "MaximumMinimum" Prelude.<$> maximumMinimum,
               (JSON..=) "MetricComparison" Prelude.<$> metricComparison,
               (JSON..=) "PeriodOverPeriod" Prelude.<$> periodOverPeriod,
               (JSON..=) "PeriodToDate" Prelude.<$> periodToDate,
               (JSON..=) "TopBottomMovers" Prelude.<$> topBottomMovers,
               (JSON..=) "TopBottomRanked" Prelude.<$> topBottomRanked,
               (JSON..=) "TotalAggregation" Prelude.<$> totalAggregation,
               (JSON..=) "UniqueValues" Prelude.<$> uniqueValues]))
instance Property "Forecast" ComputationProperty where
  type PropertyType "Forecast" ComputationProperty = ForecastComputationProperty
  set newValue ComputationProperty {..}
    = ComputationProperty {forecast = Prelude.pure newValue, ..}
instance Property "GrowthRate" ComputationProperty where
  type PropertyType "GrowthRate" ComputationProperty = GrowthRateComputationProperty
  set newValue ComputationProperty {..}
    = ComputationProperty {growthRate = Prelude.pure newValue, ..}
instance Property "MaximumMinimum" ComputationProperty where
  type PropertyType "MaximumMinimum" ComputationProperty = MaximumMinimumComputationProperty
  set newValue ComputationProperty {..}
    = ComputationProperty {maximumMinimum = Prelude.pure newValue, ..}
instance Property "MetricComparison" ComputationProperty where
  type PropertyType "MetricComparison" ComputationProperty = MetricComparisonComputationProperty
  set newValue ComputationProperty {..}
    = ComputationProperty
        {metricComparison = Prelude.pure newValue, ..}
instance Property "PeriodOverPeriod" ComputationProperty where
  type PropertyType "PeriodOverPeriod" ComputationProperty = PeriodOverPeriodComputationProperty
  set newValue ComputationProperty {..}
    = ComputationProperty
        {periodOverPeriod = Prelude.pure newValue, ..}
instance Property "PeriodToDate" ComputationProperty where
  type PropertyType "PeriodToDate" ComputationProperty = PeriodToDateComputationProperty
  set newValue ComputationProperty {..}
    = ComputationProperty {periodToDate = Prelude.pure newValue, ..}
instance Property "TopBottomMovers" ComputationProperty where
  type PropertyType "TopBottomMovers" ComputationProperty = TopBottomMoversComputationProperty
  set newValue ComputationProperty {..}
    = ComputationProperty {topBottomMovers = Prelude.pure newValue, ..}
instance Property "TopBottomRanked" ComputationProperty where
  type PropertyType "TopBottomRanked" ComputationProperty = TopBottomRankedComputationProperty
  set newValue ComputationProperty {..}
    = ComputationProperty {topBottomRanked = Prelude.pure newValue, ..}
instance Property "TotalAggregation" ComputationProperty where
  type PropertyType "TotalAggregation" ComputationProperty = TotalAggregationComputationProperty
  set newValue ComputationProperty {..}
    = ComputationProperty
        {totalAggregation = Prelude.pure newValue, ..}
instance Property "UniqueValues" ComputationProperty where
  type PropertyType "UniqueValues" ComputationProperty = UniqueValuesComputationProperty
  set newValue ComputationProperty {..}
    = ComputationProperty {uniqueValues = Prelude.pure newValue, ..}