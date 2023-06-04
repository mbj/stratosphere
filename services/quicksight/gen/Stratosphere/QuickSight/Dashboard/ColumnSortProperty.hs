module Stratosphere.QuickSight.Dashboard.ColumnSortProperty (
        module Exports, ColumnSortProperty(..), mkColumnSortProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.AggregationFunctionProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.ColumnIdentifierProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ColumnSortProperty
  = ColumnSortProperty {aggregationFunction :: (Prelude.Maybe AggregationFunctionProperty),
                        direction :: (Value Prelude.Text),
                        sortBy :: ColumnIdentifierProperty}
mkColumnSortProperty ::
  Value Prelude.Text
  -> ColumnIdentifierProperty -> ColumnSortProperty
mkColumnSortProperty direction sortBy
  = ColumnSortProperty
      {direction = direction, sortBy = sortBy,
       aggregationFunction = Prelude.Nothing}
instance ToResourceProperties ColumnSortProperty where
  toResourceProperties ColumnSortProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.ColumnSort",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Direction" JSON..= direction, "SortBy" JSON..= sortBy]
                           (Prelude.catMaybes
                              [(JSON..=) "AggregationFunction"
                                 Prelude.<$> aggregationFunction]))}
instance JSON.ToJSON ColumnSortProperty where
  toJSON ColumnSortProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Direction" JSON..= direction, "SortBy" JSON..= sortBy]
              (Prelude.catMaybes
                 [(JSON..=) "AggregationFunction"
                    Prelude.<$> aggregationFunction])))
instance Property "AggregationFunction" ColumnSortProperty where
  type PropertyType "AggregationFunction" ColumnSortProperty = AggregationFunctionProperty
  set newValue ColumnSortProperty {..}
    = ColumnSortProperty
        {aggregationFunction = Prelude.pure newValue, ..}
instance Property "Direction" ColumnSortProperty where
  type PropertyType "Direction" ColumnSortProperty = Value Prelude.Text
  set newValue ColumnSortProperty {..}
    = ColumnSortProperty {direction = newValue, ..}
instance Property "SortBy" ColumnSortProperty where
  type PropertyType "SortBy" ColumnSortProperty = ColumnIdentifierProperty
  set newValue ColumnSortProperty {..}
    = ColumnSortProperty {sortBy = newValue, ..}