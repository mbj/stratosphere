module Stratosphere.QuickSight.Template.NumericEqualityFilterProperty (
        module Exports, NumericEqualityFilterProperty(..),
        mkNumericEqualityFilterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.AggregationFunctionProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.ColumnIdentifierProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NumericEqualityFilterProperty
  = NumericEqualityFilterProperty {aggregationFunction :: (Prelude.Maybe AggregationFunctionProperty),
                                   column :: ColumnIdentifierProperty,
                                   filterId :: (Value Prelude.Text),
                                   matchOperator :: (Value Prelude.Text),
                                   nullOption :: (Value Prelude.Text),
                                   parameterName :: (Prelude.Maybe (Value Prelude.Text)),
                                   selectAllOptions :: (Prelude.Maybe (Value Prelude.Text)),
                                   value :: (Prelude.Maybe (Value Prelude.Double))}
mkNumericEqualityFilterProperty ::
  ColumnIdentifierProperty
  -> Value Prelude.Text
     -> Value Prelude.Text
        -> Value Prelude.Text -> NumericEqualityFilterProperty
mkNumericEqualityFilterProperty
  column
  filterId
  matchOperator
  nullOption
  = NumericEqualityFilterProperty
      {column = column, filterId = filterId,
       matchOperator = matchOperator, nullOption = nullOption,
       aggregationFunction = Prelude.Nothing,
       parameterName = Prelude.Nothing,
       selectAllOptions = Prelude.Nothing, value = Prelude.Nothing}
instance ToResourceProperties NumericEqualityFilterProperty where
  toResourceProperties NumericEqualityFilterProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.NumericEqualityFilter",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Column" JSON..= column, "FilterId" JSON..= filterId,
                            "MatchOperator" JSON..= matchOperator,
                            "NullOption" JSON..= nullOption]
                           (Prelude.catMaybes
                              [(JSON..=) "AggregationFunction" Prelude.<$> aggregationFunction,
                               (JSON..=) "ParameterName" Prelude.<$> parameterName,
                               (JSON..=) "SelectAllOptions" Prelude.<$> selectAllOptions,
                               (JSON..=) "Value" Prelude.<$> value]))}
instance JSON.ToJSON NumericEqualityFilterProperty where
  toJSON NumericEqualityFilterProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Column" JSON..= column, "FilterId" JSON..= filterId,
               "MatchOperator" JSON..= matchOperator,
               "NullOption" JSON..= nullOption]
              (Prelude.catMaybes
                 [(JSON..=) "AggregationFunction" Prelude.<$> aggregationFunction,
                  (JSON..=) "ParameterName" Prelude.<$> parameterName,
                  (JSON..=) "SelectAllOptions" Prelude.<$> selectAllOptions,
                  (JSON..=) "Value" Prelude.<$> value])))
instance Property "AggregationFunction" NumericEqualityFilterProperty where
  type PropertyType "AggregationFunction" NumericEqualityFilterProperty = AggregationFunctionProperty
  set newValue NumericEqualityFilterProperty {..}
    = NumericEqualityFilterProperty
        {aggregationFunction = Prelude.pure newValue, ..}
instance Property "Column" NumericEqualityFilterProperty where
  type PropertyType "Column" NumericEqualityFilterProperty = ColumnIdentifierProperty
  set newValue NumericEqualityFilterProperty {..}
    = NumericEqualityFilterProperty {column = newValue, ..}
instance Property "FilterId" NumericEqualityFilterProperty where
  type PropertyType "FilterId" NumericEqualityFilterProperty = Value Prelude.Text
  set newValue NumericEqualityFilterProperty {..}
    = NumericEqualityFilterProperty {filterId = newValue, ..}
instance Property "MatchOperator" NumericEqualityFilterProperty where
  type PropertyType "MatchOperator" NumericEqualityFilterProperty = Value Prelude.Text
  set newValue NumericEqualityFilterProperty {..}
    = NumericEqualityFilterProperty {matchOperator = newValue, ..}
instance Property "NullOption" NumericEqualityFilterProperty where
  type PropertyType "NullOption" NumericEqualityFilterProperty = Value Prelude.Text
  set newValue NumericEqualityFilterProperty {..}
    = NumericEqualityFilterProperty {nullOption = newValue, ..}
instance Property "ParameterName" NumericEqualityFilterProperty where
  type PropertyType "ParameterName" NumericEqualityFilterProperty = Value Prelude.Text
  set newValue NumericEqualityFilterProperty {..}
    = NumericEqualityFilterProperty
        {parameterName = Prelude.pure newValue, ..}
instance Property "SelectAllOptions" NumericEqualityFilterProperty where
  type PropertyType "SelectAllOptions" NumericEqualityFilterProperty = Value Prelude.Text
  set newValue NumericEqualityFilterProperty {..}
    = NumericEqualityFilterProperty
        {selectAllOptions = Prelude.pure newValue, ..}
instance Property "Value" NumericEqualityFilterProperty where
  type PropertyType "Value" NumericEqualityFilterProperty = Value Prelude.Double
  set newValue NumericEqualityFilterProperty {..}
    = NumericEqualityFilterProperty {value = Prelude.pure newValue, ..}