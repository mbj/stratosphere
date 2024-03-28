module Stratosphere.QuickSight.Analysis.AggregationSortConfigurationProperty (
        module Exports, AggregationSortConfigurationProperty(..),
        mkAggregationSortConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.AggregationFunctionProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.ColumnIdentifierProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AggregationSortConfigurationProperty
  = AggregationSortConfigurationProperty {aggregationFunction :: (Prelude.Maybe AggregationFunctionProperty),
                                          column :: ColumnIdentifierProperty,
                                          sortDirection :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAggregationSortConfigurationProperty ::
  ColumnIdentifierProperty
  -> Value Prelude.Text -> AggregationSortConfigurationProperty
mkAggregationSortConfigurationProperty column sortDirection
  = AggregationSortConfigurationProperty
      {column = column, sortDirection = sortDirection,
       aggregationFunction = Prelude.Nothing}
instance ToResourceProperties AggregationSortConfigurationProperty where
  toResourceProperties AggregationSortConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.AggregationSortConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Column" JSON..= column, "SortDirection" JSON..= sortDirection]
                           (Prelude.catMaybes
                              [(JSON..=) "AggregationFunction"
                                 Prelude.<$> aggregationFunction]))}
instance JSON.ToJSON AggregationSortConfigurationProperty where
  toJSON AggregationSortConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Column" JSON..= column, "SortDirection" JSON..= sortDirection]
              (Prelude.catMaybes
                 [(JSON..=) "AggregationFunction"
                    Prelude.<$> aggregationFunction])))
instance Property "AggregationFunction" AggregationSortConfigurationProperty where
  type PropertyType "AggregationFunction" AggregationSortConfigurationProperty = AggregationFunctionProperty
  set newValue AggregationSortConfigurationProperty {..}
    = AggregationSortConfigurationProperty
        {aggregationFunction = Prelude.pure newValue, ..}
instance Property "Column" AggregationSortConfigurationProperty where
  type PropertyType "Column" AggregationSortConfigurationProperty = ColumnIdentifierProperty
  set newValue AggregationSortConfigurationProperty {..}
    = AggregationSortConfigurationProperty {column = newValue, ..}
instance Property "SortDirection" AggregationSortConfigurationProperty where
  type PropertyType "SortDirection" AggregationSortConfigurationProperty = Value Prelude.Text
  set newValue AggregationSortConfigurationProperty {..}
    = AggregationSortConfigurationProperty
        {sortDirection = newValue, ..}