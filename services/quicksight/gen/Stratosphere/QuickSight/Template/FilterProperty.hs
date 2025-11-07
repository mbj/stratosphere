module Stratosphere.QuickSight.Template.FilterProperty (
        module Exports, FilterProperty(..), mkFilterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.CategoryFilterProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.NestedFilterProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.NumericEqualityFilterProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.NumericRangeFilterProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.RelativeDatesFilterProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.TimeEqualityFilterProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.TimeRangeFilterProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.TopBottomFilterProperty as Exports
import Stratosphere.ResourceProperties
data FilterProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-filter.html>
    FilterProperty {haddock_workaround_ :: (),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-filter.html#cfn-quicksight-template-filter-categoryfilter>
                    categoryFilter :: (Prelude.Maybe CategoryFilterProperty),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-filter.html#cfn-quicksight-template-filter-nestedfilter>
                    nestedFilter :: (Prelude.Maybe NestedFilterProperty),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-filter.html#cfn-quicksight-template-filter-numericequalityfilter>
                    numericEqualityFilter :: (Prelude.Maybe NumericEqualityFilterProperty),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-filter.html#cfn-quicksight-template-filter-numericrangefilter>
                    numericRangeFilter :: (Prelude.Maybe NumericRangeFilterProperty),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-filter.html#cfn-quicksight-template-filter-relativedatesfilter>
                    relativeDatesFilter :: (Prelude.Maybe RelativeDatesFilterProperty),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-filter.html#cfn-quicksight-template-filter-timeequalityfilter>
                    timeEqualityFilter :: (Prelude.Maybe TimeEqualityFilterProperty),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-filter.html#cfn-quicksight-template-filter-timerangefilter>
                    timeRangeFilter :: (Prelude.Maybe TimeRangeFilterProperty),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-filter.html#cfn-quicksight-template-filter-topbottomfilter>
                    topBottomFilter :: (Prelude.Maybe TopBottomFilterProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFilterProperty :: FilterProperty
mkFilterProperty
  = FilterProperty
      {haddock_workaround_ = (), categoryFilter = Prelude.Nothing,
       nestedFilter = Prelude.Nothing,
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
                            (JSON..=) "NestedFilter" Prelude.<$> nestedFilter,
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
               (JSON..=) "NestedFilter" Prelude.<$> nestedFilter,
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
instance Property "NestedFilter" FilterProperty where
  type PropertyType "NestedFilter" FilterProperty = NestedFilterProperty
  set newValue FilterProperty {..}
    = FilterProperty {nestedFilter = Prelude.pure newValue, ..}
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