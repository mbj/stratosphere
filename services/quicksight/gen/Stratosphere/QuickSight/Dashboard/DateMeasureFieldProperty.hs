module Stratosphere.QuickSight.Dashboard.DateMeasureFieldProperty (
        module Exports, DateMeasureFieldProperty(..),
        mkDateMeasureFieldProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.ColumnIdentifierProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.DateTimeFormatConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DateMeasureFieldProperty
  = DateMeasureFieldProperty {aggregationFunction :: (Prelude.Maybe (Value Prelude.Text)),
                              column :: ColumnIdentifierProperty,
                              fieldId :: (Value Prelude.Text),
                              formatConfiguration :: (Prelude.Maybe DateTimeFormatConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDateMeasureFieldProperty ::
  ColumnIdentifierProperty
  -> Value Prelude.Text -> DateMeasureFieldProperty
mkDateMeasureFieldProperty column fieldId
  = DateMeasureFieldProperty
      {column = column, fieldId = fieldId,
       aggregationFunction = Prelude.Nothing,
       formatConfiguration = Prelude.Nothing}
instance ToResourceProperties DateMeasureFieldProperty where
  toResourceProperties DateMeasureFieldProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.DateMeasureField",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Column" JSON..= column, "FieldId" JSON..= fieldId]
                           (Prelude.catMaybes
                              [(JSON..=) "AggregationFunction" Prelude.<$> aggregationFunction,
                               (JSON..=) "FormatConfiguration" Prelude.<$> formatConfiguration]))}
instance JSON.ToJSON DateMeasureFieldProperty where
  toJSON DateMeasureFieldProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Column" JSON..= column, "FieldId" JSON..= fieldId]
              (Prelude.catMaybes
                 [(JSON..=) "AggregationFunction" Prelude.<$> aggregationFunction,
                  (JSON..=) "FormatConfiguration" Prelude.<$> formatConfiguration])))
instance Property "AggregationFunction" DateMeasureFieldProperty where
  type PropertyType "AggregationFunction" DateMeasureFieldProperty = Value Prelude.Text
  set newValue DateMeasureFieldProperty {..}
    = DateMeasureFieldProperty
        {aggregationFunction = Prelude.pure newValue, ..}
instance Property "Column" DateMeasureFieldProperty where
  type PropertyType "Column" DateMeasureFieldProperty = ColumnIdentifierProperty
  set newValue DateMeasureFieldProperty {..}
    = DateMeasureFieldProperty {column = newValue, ..}
instance Property "FieldId" DateMeasureFieldProperty where
  type PropertyType "FieldId" DateMeasureFieldProperty = Value Prelude.Text
  set newValue DateMeasureFieldProperty {..}
    = DateMeasureFieldProperty {fieldId = newValue, ..}
instance Property "FormatConfiguration" DateMeasureFieldProperty where
  type PropertyType "FormatConfiguration" DateMeasureFieldProperty = DateTimeFormatConfigurationProperty
  set newValue DateMeasureFieldProperty {..}
    = DateMeasureFieldProperty
        {formatConfiguration = Prelude.pure newValue, ..}