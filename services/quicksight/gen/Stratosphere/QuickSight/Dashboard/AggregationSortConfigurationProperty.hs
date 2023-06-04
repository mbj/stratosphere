module Stratosphere.QuickSight.Dashboard.AggregationSortConfigurationProperty (
        module Exports, AggregationSortConfigurationProperty(..),
        mkAggregationSortConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.AggregationFunctionProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.ColumnIdentifierProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AggregationSortConfigurationProperty
  = AggregationSortConfigurationProperty {aggregationFunction :: AggregationFunctionProperty,
                                          column :: ColumnIdentifierProperty,
                                          sortDirection :: (Value Prelude.Text)}
mkAggregationSortConfigurationProperty ::
  AggregationFunctionProperty
  -> ColumnIdentifierProperty
     -> Value Prelude.Text -> AggregationSortConfigurationProperty
mkAggregationSortConfigurationProperty
  aggregationFunction
  column
  sortDirection
  = AggregationSortConfigurationProperty
      {aggregationFunction = aggregationFunction, column = column,
       sortDirection = sortDirection}
instance ToResourceProperties AggregationSortConfigurationProperty where
  toResourceProperties AggregationSortConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.AggregationSortConfiguration",
         supportsTags = Prelude.False,
         properties = ["AggregationFunction" JSON..= aggregationFunction,
                       "Column" JSON..= column, "SortDirection" JSON..= sortDirection]}
instance JSON.ToJSON AggregationSortConfigurationProperty where
  toJSON AggregationSortConfigurationProperty {..}
    = JSON.object
        ["AggregationFunction" JSON..= aggregationFunction,
         "Column" JSON..= column, "SortDirection" JSON..= sortDirection]
instance Property "AggregationFunction" AggregationSortConfigurationProperty where
  type PropertyType "AggregationFunction" AggregationSortConfigurationProperty = AggregationFunctionProperty
  set newValue AggregationSortConfigurationProperty {..}
    = AggregationSortConfigurationProperty
        {aggregationFunction = newValue, ..}
instance Property "Column" AggregationSortConfigurationProperty where
  type PropertyType "Column" AggregationSortConfigurationProperty = ColumnIdentifierProperty
  set newValue AggregationSortConfigurationProperty {..}
    = AggregationSortConfigurationProperty {column = newValue, ..}
instance Property "SortDirection" AggregationSortConfigurationProperty where
  type PropertyType "SortDirection" AggregationSortConfigurationProperty = Value Prelude.Text
  set newValue AggregationSortConfigurationProperty {..}
    = AggregationSortConfigurationProperty
        {sortDirection = newValue, ..}