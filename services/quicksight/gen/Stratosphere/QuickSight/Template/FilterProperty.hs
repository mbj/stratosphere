module Stratosphere.QuickSight.Template.FilterProperty (
        module Exports, FilterProperty(..), mkFilterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.CategoryFilterProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.NumericEqualityFilterProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.NumericRangeFilterProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.RelativeDatesFilterProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.TimeEqualityFilterProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.TimeRangeFilterProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.TopBottomFilterProperty as Exports
import Stratosphere.ResourceProperties
data FilterProperty
  = FilterProperty {categoryFilter :: (Prelude.Maybe CategoryFilterProperty),
                    numericEqualityFilter :: (Prelude.Maybe NumericEqualityFilterProperty),
                    numericRangeFilter :: (Prelude.Maybe NumericRangeFilterProperty),
                    relativeDatesFilter :: (Prelude.Maybe RelativeDatesFilterProperty),
                    timeEqualityFilter :: (Prelude.Maybe TimeEqualityFilterProperty),
                    timeRangeFilter :: (Prelude.Maybe TimeRangeFilterProperty),
                    topBottomFilter :: (Prelude.Maybe TopBottomFilterProperty)}
mkFilterProperty :: FilterProperty
mkFilterProperty
  = FilterProperty
      {categoryFilter = Prelude.Nothing,
       numericEqualityFilter = Prelude.Nothing,
       numericRangeFilter = Prelude.Nothing,
       relativeDatesFilter = Prelude.Nothing,
       timeEqualityFilter = Prelude.Nothing,
       timeRangeFilter = Prelude.Nothing,
       topBottomFilter = Prelude.Nothing}
instance ToResourceProperties FilterProperty where
  toResourceProperties FilterProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.Filter",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CategoryFilter" Prelude.<$> categoryFilter,
                            (JSON..=) "NumericEqualityFilter"
                              Prelude.<$> numericEqualityFilter,
                            (JSON..=) "NumericRangeFilter" Prelude.<$> numericRangeFilter,
                            (JSON..=) "RelativeDatesFilter" Prelude.<$> relativeDatesFilter,
                            (JSON..=) "TimeEqualityFilter" Prelude.<$> timeEqualityFilter,
                            (JSON..=) "TimeRangeFilter" Prelude.<$> timeRangeFilter,
                            (JSON..=) "TopBottomFilter" Prelude.<$> topBottomFilter])}
instance JSON.ToJSON FilterProperty where
  toJSON FilterProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CategoryFilter" Prelude.<$> categoryFilter,
               (JSON..=) "NumericEqualityFilter"
                 Prelude.<$> numericEqualityFilter,
               (JSON..=) "NumericRangeFilter" Prelude.<$> numericRangeFilter,
               (JSON..=) "RelativeDatesFilter" Prelude.<$> relativeDatesFilter,
               (JSON..=) "TimeEqualityFilter" Prelude.<$> timeEqualityFilter,
               (JSON..=) "TimeRangeFilter" Prelude.<$> timeRangeFilter,
               (JSON..=) "TopBottomFilter" Prelude.<$> topBottomFilter]))
instance Property "CategoryFilter" FilterProperty where
  type PropertyType "CategoryFilter" FilterProperty = CategoryFilterProperty
  set newValue FilterProperty {..}
    = FilterProperty {categoryFilter = Prelude.pure newValue, ..}
instance Property "NumericEqualityFilter" FilterProperty where
  type PropertyType "NumericEqualityFilter" FilterProperty = NumericEqualityFilterProperty
  set newValue FilterProperty {..}
    = FilterProperty
        {numericEqualityFilter = Prelude.pure newValue, ..}
instance Property "NumericRangeFilter" FilterProperty where
  type PropertyType "NumericRangeFilter" FilterProperty = NumericRangeFilterProperty
  set newValue FilterProperty {..}
    = FilterProperty {numericRangeFilter = Prelude.pure newValue, ..}
instance Property "RelativeDatesFilter" FilterProperty where
  type PropertyType "RelativeDatesFilter" FilterProperty = RelativeDatesFilterProperty
  set newValue FilterProperty {..}
    = FilterProperty {relativeDatesFilter = Prelude.pure newValue, ..}
instance Property "TimeEqualityFilter" FilterProperty where
  type PropertyType "TimeEqualityFilter" FilterProperty = TimeEqualityFilterProperty
  set newValue FilterProperty {..}
    = FilterProperty {timeEqualityFilter = Prelude.pure newValue, ..}
instance Property "TimeRangeFilter" FilterProperty where
  type PropertyType "TimeRangeFilter" FilterProperty = TimeRangeFilterProperty
  set newValue FilterProperty {..}
    = FilterProperty {timeRangeFilter = Prelude.pure newValue, ..}
instance Property "TopBottomFilter" FilterProperty where
  type PropertyType "TopBottomFilter" FilterProperty = TopBottomFilterProperty
  set newValue FilterProperty {..}
    = FilterProperty {topBottomFilter = Prelude.pure newValue, ..}