module Stratosphere.QuickSight.Template.NumericRangeFilterProperty (
        module Exports, NumericRangeFilterProperty(..),
        mkNumericRangeFilterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.AggregationFunctionProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.ColumnIdentifierProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.NumericRangeFilterValueProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NumericRangeFilterProperty
  = NumericRangeFilterProperty {aggregationFunction :: (Prelude.Maybe AggregationFunctionProperty),
                                column :: ColumnIdentifierProperty,
                                filterId :: (Value Prelude.Text),
                                includeMaximum :: (Prelude.Maybe (Value Prelude.Bool)),
                                includeMinimum :: (Prelude.Maybe (Value Prelude.Bool)),
                                nullOption :: (Value Prelude.Text),
                                rangeMaximum :: (Prelude.Maybe NumericRangeFilterValueProperty),
                                rangeMinimum :: (Prelude.Maybe NumericRangeFilterValueProperty),
                                selectAllOptions :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNumericRangeFilterProperty ::
  ColumnIdentifierProperty
  -> Value Prelude.Text
     -> Value Prelude.Text -> NumericRangeFilterProperty
mkNumericRangeFilterProperty column filterId nullOption
  = NumericRangeFilterProperty
      {column = column, filterId = filterId, nullOption = nullOption,
       aggregationFunction = Prelude.Nothing,
       includeMaximum = Prelude.Nothing, includeMinimum = Prelude.Nothing,
       rangeMaximum = Prelude.Nothing, rangeMinimum = Prelude.Nothing,
       selectAllOptions = Prelude.Nothing}
instance ToResourceProperties NumericRangeFilterProperty where
  toResourceProperties NumericRangeFilterProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.NumericRangeFilter",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Column" JSON..= column, "FilterId" JSON..= filterId,
                            "NullOption" JSON..= nullOption]
                           (Prelude.catMaybes
                              [(JSON..=) "AggregationFunction" Prelude.<$> aggregationFunction,
                               (JSON..=) "IncludeMaximum" Prelude.<$> includeMaximum,
                               (JSON..=) "IncludeMinimum" Prelude.<$> includeMinimum,
                               (JSON..=) "RangeMaximum" Prelude.<$> rangeMaximum,
                               (JSON..=) "RangeMinimum" Prelude.<$> rangeMinimum,
                               (JSON..=) "SelectAllOptions" Prelude.<$> selectAllOptions]))}
instance JSON.ToJSON NumericRangeFilterProperty where
  toJSON NumericRangeFilterProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Column" JSON..= column, "FilterId" JSON..= filterId,
               "NullOption" JSON..= nullOption]
              (Prelude.catMaybes
                 [(JSON..=) "AggregationFunction" Prelude.<$> aggregationFunction,
                  (JSON..=) "IncludeMaximum" Prelude.<$> includeMaximum,
                  (JSON..=) "IncludeMinimum" Prelude.<$> includeMinimum,
                  (JSON..=) "RangeMaximum" Prelude.<$> rangeMaximum,
                  (JSON..=) "RangeMinimum" Prelude.<$> rangeMinimum,
                  (JSON..=) "SelectAllOptions" Prelude.<$> selectAllOptions])))
instance Property "AggregationFunction" NumericRangeFilterProperty where
  type PropertyType "AggregationFunction" NumericRangeFilterProperty = AggregationFunctionProperty
  set newValue NumericRangeFilterProperty {..}
    = NumericRangeFilterProperty
        {aggregationFunction = Prelude.pure newValue, ..}
instance Property "Column" NumericRangeFilterProperty where
  type PropertyType "Column" NumericRangeFilterProperty = ColumnIdentifierProperty
  set newValue NumericRangeFilterProperty {..}
    = NumericRangeFilterProperty {column = newValue, ..}
instance Property "FilterId" NumericRangeFilterProperty where
  type PropertyType "FilterId" NumericRangeFilterProperty = Value Prelude.Text
  set newValue NumericRangeFilterProperty {..}
    = NumericRangeFilterProperty {filterId = newValue, ..}
instance Property "IncludeMaximum" NumericRangeFilterProperty where
  type PropertyType "IncludeMaximum" NumericRangeFilterProperty = Value Prelude.Bool
  set newValue NumericRangeFilterProperty {..}
    = NumericRangeFilterProperty
        {includeMaximum = Prelude.pure newValue, ..}
instance Property "IncludeMinimum" NumericRangeFilterProperty where
  type PropertyType "IncludeMinimum" NumericRangeFilterProperty = Value Prelude.Bool
  set newValue NumericRangeFilterProperty {..}
    = NumericRangeFilterProperty
        {includeMinimum = Prelude.pure newValue, ..}
instance Property "NullOption" NumericRangeFilterProperty where
  type PropertyType "NullOption" NumericRangeFilterProperty = Value Prelude.Text
  set newValue NumericRangeFilterProperty {..}
    = NumericRangeFilterProperty {nullOption = newValue, ..}
instance Property "RangeMaximum" NumericRangeFilterProperty where
  type PropertyType "RangeMaximum" NumericRangeFilterProperty = NumericRangeFilterValueProperty
  set newValue NumericRangeFilterProperty {..}
    = NumericRangeFilterProperty
        {rangeMaximum = Prelude.pure newValue, ..}
instance Property "RangeMinimum" NumericRangeFilterProperty where
  type PropertyType "RangeMinimum" NumericRangeFilterProperty = NumericRangeFilterValueProperty
  set newValue NumericRangeFilterProperty {..}
    = NumericRangeFilterProperty
        {rangeMinimum = Prelude.pure newValue, ..}
instance Property "SelectAllOptions" NumericRangeFilterProperty where
  type PropertyType "SelectAllOptions" NumericRangeFilterProperty = Value Prelude.Text
  set newValue NumericRangeFilterProperty {..}
    = NumericRangeFilterProperty
        {selectAllOptions = Prelude.pure newValue, ..}