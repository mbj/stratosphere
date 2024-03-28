module Stratosphere.QuickSight.Template.PivotTableOptionsProperty (
        module Exports, PivotTableOptionsProperty(..),
        mkPivotTableOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.PivotTableRowsLabelOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.RowAlternateColorOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.TableCellStyleProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PivotTableOptionsProperty
  = PivotTableOptionsProperty {cellStyle :: (Prelude.Maybe TableCellStyleProperty),
                               collapsedRowDimensionsVisibility :: (Prelude.Maybe (Value Prelude.Text)),
                               columnHeaderStyle :: (Prelude.Maybe TableCellStyleProperty),
                               columnNamesVisibility :: (Prelude.Maybe (Value Prelude.Text)),
                               defaultCellWidth :: (Prelude.Maybe (Value Prelude.Text)),
                               metricPlacement :: (Prelude.Maybe (Value Prelude.Text)),
                               rowAlternateColorOptions :: (Prelude.Maybe RowAlternateColorOptionsProperty),
                               rowFieldNamesStyle :: (Prelude.Maybe TableCellStyleProperty),
                               rowHeaderStyle :: (Prelude.Maybe TableCellStyleProperty),
                               rowsLabelOptions :: (Prelude.Maybe PivotTableRowsLabelOptionsProperty),
                               rowsLayout :: (Prelude.Maybe (Value Prelude.Text)),
                               singleMetricVisibility :: (Prelude.Maybe (Value Prelude.Text)),
                               toggleButtonsVisibility :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPivotTableOptionsProperty :: PivotTableOptionsProperty
mkPivotTableOptionsProperty
  = PivotTableOptionsProperty
      {cellStyle = Prelude.Nothing,
       collapsedRowDimensionsVisibility = Prelude.Nothing,
       columnHeaderStyle = Prelude.Nothing,
       columnNamesVisibility = Prelude.Nothing,
       defaultCellWidth = Prelude.Nothing,
       metricPlacement = Prelude.Nothing,
       rowAlternateColorOptions = Prelude.Nothing,
       rowFieldNamesStyle = Prelude.Nothing,
       rowHeaderStyle = Prelude.Nothing,
       rowsLabelOptions = Prelude.Nothing, rowsLayout = Prelude.Nothing,
       singleMetricVisibility = Prelude.Nothing,
       toggleButtonsVisibility = Prelude.Nothing}
instance ToResourceProperties PivotTableOptionsProperty where
  toResourceProperties PivotTableOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.PivotTableOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CellStyle" Prelude.<$> cellStyle,
                            (JSON..=) "CollapsedRowDimensionsVisibility"
                              Prelude.<$> collapsedRowDimensionsVisibility,
                            (JSON..=) "ColumnHeaderStyle" Prelude.<$> columnHeaderStyle,
                            (JSON..=) "ColumnNamesVisibility"
                              Prelude.<$> columnNamesVisibility,
                            (JSON..=) "DefaultCellWidth" Prelude.<$> defaultCellWidth,
                            (JSON..=) "MetricPlacement" Prelude.<$> metricPlacement,
                            (JSON..=) "RowAlternateColorOptions"
                              Prelude.<$> rowAlternateColorOptions,
                            (JSON..=) "RowFieldNamesStyle" Prelude.<$> rowFieldNamesStyle,
                            (JSON..=) "RowHeaderStyle" Prelude.<$> rowHeaderStyle,
                            (JSON..=) "RowsLabelOptions" Prelude.<$> rowsLabelOptions,
                            (JSON..=) "RowsLayout" Prelude.<$> rowsLayout,
                            (JSON..=) "SingleMetricVisibility"
                              Prelude.<$> singleMetricVisibility,
                            (JSON..=) "ToggleButtonsVisibility"
                              Prelude.<$> toggleButtonsVisibility])}
instance JSON.ToJSON PivotTableOptionsProperty where
  toJSON PivotTableOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CellStyle" Prelude.<$> cellStyle,
               (JSON..=) "CollapsedRowDimensionsVisibility"
                 Prelude.<$> collapsedRowDimensionsVisibility,
               (JSON..=) "ColumnHeaderStyle" Prelude.<$> columnHeaderStyle,
               (JSON..=) "ColumnNamesVisibility"
                 Prelude.<$> columnNamesVisibility,
               (JSON..=) "DefaultCellWidth" Prelude.<$> defaultCellWidth,
               (JSON..=) "MetricPlacement" Prelude.<$> metricPlacement,
               (JSON..=) "RowAlternateColorOptions"
                 Prelude.<$> rowAlternateColorOptions,
               (JSON..=) "RowFieldNamesStyle" Prelude.<$> rowFieldNamesStyle,
               (JSON..=) "RowHeaderStyle" Prelude.<$> rowHeaderStyle,
               (JSON..=) "RowsLabelOptions" Prelude.<$> rowsLabelOptions,
               (JSON..=) "RowsLayout" Prelude.<$> rowsLayout,
               (JSON..=) "SingleMetricVisibility"
                 Prelude.<$> singleMetricVisibility,
               (JSON..=) "ToggleButtonsVisibility"
                 Prelude.<$> toggleButtonsVisibility]))
instance Property "CellStyle" PivotTableOptionsProperty where
  type PropertyType "CellStyle" PivotTableOptionsProperty = TableCellStyleProperty
  set newValue PivotTableOptionsProperty {..}
    = PivotTableOptionsProperty {cellStyle = Prelude.pure newValue, ..}
instance Property "CollapsedRowDimensionsVisibility" PivotTableOptionsProperty where
  type PropertyType "CollapsedRowDimensionsVisibility" PivotTableOptionsProperty = Value Prelude.Text
  set newValue PivotTableOptionsProperty {..}
    = PivotTableOptionsProperty
        {collapsedRowDimensionsVisibility = Prelude.pure newValue, ..}
instance Property "ColumnHeaderStyle" PivotTableOptionsProperty where
  type PropertyType "ColumnHeaderStyle" PivotTableOptionsProperty = TableCellStyleProperty
  set newValue PivotTableOptionsProperty {..}
    = PivotTableOptionsProperty
        {columnHeaderStyle = Prelude.pure newValue, ..}
instance Property "ColumnNamesVisibility" PivotTableOptionsProperty where
  type PropertyType "ColumnNamesVisibility" PivotTableOptionsProperty = Value Prelude.Text
  set newValue PivotTableOptionsProperty {..}
    = PivotTableOptionsProperty
        {columnNamesVisibility = Prelude.pure newValue, ..}
instance Property "DefaultCellWidth" PivotTableOptionsProperty where
  type PropertyType "DefaultCellWidth" PivotTableOptionsProperty = Value Prelude.Text
  set newValue PivotTableOptionsProperty {..}
    = PivotTableOptionsProperty
        {defaultCellWidth = Prelude.pure newValue, ..}
instance Property "MetricPlacement" PivotTableOptionsProperty where
  type PropertyType "MetricPlacement" PivotTableOptionsProperty = Value Prelude.Text
  set newValue PivotTableOptionsProperty {..}
    = PivotTableOptionsProperty
        {metricPlacement = Prelude.pure newValue, ..}
instance Property "RowAlternateColorOptions" PivotTableOptionsProperty where
  type PropertyType "RowAlternateColorOptions" PivotTableOptionsProperty = RowAlternateColorOptionsProperty
  set newValue PivotTableOptionsProperty {..}
    = PivotTableOptionsProperty
        {rowAlternateColorOptions = Prelude.pure newValue, ..}
instance Property "RowFieldNamesStyle" PivotTableOptionsProperty where
  type PropertyType "RowFieldNamesStyle" PivotTableOptionsProperty = TableCellStyleProperty
  set newValue PivotTableOptionsProperty {..}
    = PivotTableOptionsProperty
        {rowFieldNamesStyle = Prelude.pure newValue, ..}
instance Property "RowHeaderStyle" PivotTableOptionsProperty where
  type PropertyType "RowHeaderStyle" PivotTableOptionsProperty = TableCellStyleProperty
  set newValue PivotTableOptionsProperty {..}
    = PivotTableOptionsProperty
        {rowHeaderStyle = Prelude.pure newValue, ..}
instance Property "RowsLabelOptions" PivotTableOptionsProperty where
  type PropertyType "RowsLabelOptions" PivotTableOptionsProperty = PivotTableRowsLabelOptionsProperty
  set newValue PivotTableOptionsProperty {..}
    = PivotTableOptionsProperty
        {rowsLabelOptions = Prelude.pure newValue, ..}
instance Property "RowsLayout" PivotTableOptionsProperty where
  type PropertyType "RowsLayout" PivotTableOptionsProperty = Value Prelude.Text
  set newValue PivotTableOptionsProperty {..}
    = PivotTableOptionsProperty
        {rowsLayout = Prelude.pure newValue, ..}
instance Property "SingleMetricVisibility" PivotTableOptionsProperty where
  type PropertyType "SingleMetricVisibility" PivotTableOptionsProperty = Value Prelude.Text
  set newValue PivotTableOptionsProperty {..}
    = PivotTableOptionsProperty
        {singleMetricVisibility = Prelude.pure newValue, ..}
instance Property "ToggleButtonsVisibility" PivotTableOptionsProperty where
  type PropertyType "ToggleButtonsVisibility" PivotTableOptionsProperty = Value Prelude.Text
  set newValue PivotTableOptionsProperty {..}
    = PivotTableOptionsProperty
        {toggleButtonsVisibility = Prelude.pure newValue, ..}