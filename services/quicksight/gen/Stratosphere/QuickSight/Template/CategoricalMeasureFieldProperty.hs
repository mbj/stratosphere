module Stratosphere.QuickSight.Template.CategoricalMeasureFieldProperty (
        module Exports, CategoricalMeasureFieldProperty(..),
        mkCategoricalMeasureFieldProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.ColumnIdentifierProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.StringFormatConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CategoricalMeasureFieldProperty
  = CategoricalMeasureFieldProperty {aggregationFunction :: (Prelude.Maybe (Value Prelude.Text)),
                                     column :: ColumnIdentifierProperty,
                                     fieldId :: (Value Prelude.Text),
                                     formatConfiguration :: (Prelude.Maybe StringFormatConfigurationProperty)}
mkCategoricalMeasureFieldProperty ::
  ColumnIdentifierProperty
  -> Value Prelude.Text -> CategoricalMeasureFieldProperty
mkCategoricalMeasureFieldProperty column fieldId
  = CategoricalMeasureFieldProperty
      {column = column, fieldId = fieldId,
       aggregationFunction = Prelude.Nothing,
       formatConfiguration = Prelude.Nothing}
instance ToResourceProperties CategoricalMeasureFieldProperty where
  toResourceProperties CategoricalMeasureFieldProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.CategoricalMeasureField",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Column" JSON..= column, "FieldId" JSON..= fieldId]
                           (Prelude.catMaybes
                              [(JSON..=) "AggregationFunction" Prelude.<$> aggregationFunction,
                               (JSON..=) "FormatConfiguration" Prelude.<$> formatConfiguration]))}
instance JSON.ToJSON CategoricalMeasureFieldProperty where
  toJSON CategoricalMeasureFieldProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Column" JSON..= column, "FieldId" JSON..= fieldId]
              (Prelude.catMaybes
                 [(JSON..=) "AggregationFunction" Prelude.<$> aggregationFunction,
                  (JSON..=) "FormatConfiguration" Prelude.<$> formatConfiguration])))
instance Property "AggregationFunction" CategoricalMeasureFieldProperty where
  type PropertyType "AggregationFunction" CategoricalMeasureFieldProperty = Value Prelude.Text
  set newValue CategoricalMeasureFieldProperty {..}
    = CategoricalMeasureFieldProperty
        {aggregationFunction = Prelude.pure newValue, ..}
instance Property "Column" CategoricalMeasureFieldProperty where
  type PropertyType "Column" CategoricalMeasureFieldProperty = ColumnIdentifierProperty
  set newValue CategoricalMeasureFieldProperty {..}
    = CategoricalMeasureFieldProperty {column = newValue, ..}
instance Property "FieldId" CategoricalMeasureFieldProperty where
  type PropertyType "FieldId" CategoricalMeasureFieldProperty = Value Prelude.Text
  set newValue CategoricalMeasureFieldProperty {..}
    = CategoricalMeasureFieldProperty {fieldId = newValue, ..}
instance Property "FormatConfiguration" CategoricalMeasureFieldProperty where
  type PropertyType "FormatConfiguration" CategoricalMeasureFieldProperty = StringFormatConfigurationProperty
  set newValue CategoricalMeasureFieldProperty {..}
    = CategoricalMeasureFieldProperty
        {formatConfiguration = Prelude.pure newValue, ..}