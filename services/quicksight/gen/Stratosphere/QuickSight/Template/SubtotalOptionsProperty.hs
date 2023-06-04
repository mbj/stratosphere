module Stratosphere.QuickSight.Template.SubtotalOptionsProperty (
        module Exports, SubtotalOptionsProperty(..),
        mkSubtotalOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.PivotTableFieldSubtotalOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.TableCellStyleProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SubtotalOptionsProperty
  = SubtotalOptionsProperty {customLabel :: (Prelude.Maybe (Value Prelude.Text)),
                             fieldLevel :: (Prelude.Maybe (Value Prelude.Text)),
                             fieldLevelOptions :: (Prelude.Maybe [PivotTableFieldSubtotalOptionsProperty]),
                             metricHeaderCellStyle :: (Prelude.Maybe TableCellStyleProperty),
                             totalCellStyle :: (Prelude.Maybe TableCellStyleProperty),
                             totalsVisibility :: (Prelude.Maybe (Value Prelude.Text)),
                             valueCellStyle :: (Prelude.Maybe TableCellStyleProperty)}
mkSubtotalOptionsProperty :: SubtotalOptionsProperty
mkSubtotalOptionsProperty
  = SubtotalOptionsProperty
      {customLabel = Prelude.Nothing, fieldLevel = Prelude.Nothing,
       fieldLevelOptions = Prelude.Nothing,
       metricHeaderCellStyle = Prelude.Nothing,
       totalCellStyle = Prelude.Nothing,
       totalsVisibility = Prelude.Nothing,
       valueCellStyle = Prelude.Nothing}
instance ToResourceProperties SubtotalOptionsProperty where
  toResourceProperties SubtotalOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.SubtotalOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CustomLabel" Prelude.<$> customLabel,
                            (JSON..=) "FieldLevel" Prelude.<$> fieldLevel,
                            (JSON..=) "FieldLevelOptions" Prelude.<$> fieldLevelOptions,
                            (JSON..=) "MetricHeaderCellStyle"
                              Prelude.<$> metricHeaderCellStyle,
                            (JSON..=) "TotalCellStyle" Prelude.<$> totalCellStyle,
                            (JSON..=) "TotalsVisibility" Prelude.<$> totalsVisibility,
                            (JSON..=) "ValueCellStyle" Prelude.<$> valueCellStyle])}
instance JSON.ToJSON SubtotalOptionsProperty where
  toJSON SubtotalOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CustomLabel" Prelude.<$> customLabel,
               (JSON..=) "FieldLevel" Prelude.<$> fieldLevel,
               (JSON..=) "FieldLevelOptions" Prelude.<$> fieldLevelOptions,
               (JSON..=) "MetricHeaderCellStyle"
                 Prelude.<$> metricHeaderCellStyle,
               (JSON..=) "TotalCellStyle" Prelude.<$> totalCellStyle,
               (JSON..=) "TotalsVisibility" Prelude.<$> totalsVisibility,
               (JSON..=) "ValueCellStyle" Prelude.<$> valueCellStyle]))
instance Property "CustomLabel" SubtotalOptionsProperty where
  type PropertyType "CustomLabel" SubtotalOptionsProperty = Value Prelude.Text
  set newValue SubtotalOptionsProperty {..}
    = SubtotalOptionsProperty {customLabel = Prelude.pure newValue, ..}
instance Property "FieldLevel" SubtotalOptionsProperty where
  type PropertyType "FieldLevel" SubtotalOptionsProperty = Value Prelude.Text
  set newValue SubtotalOptionsProperty {..}
    = SubtotalOptionsProperty {fieldLevel = Prelude.pure newValue, ..}
instance Property "FieldLevelOptions" SubtotalOptionsProperty where
  type PropertyType "FieldLevelOptions" SubtotalOptionsProperty = [PivotTableFieldSubtotalOptionsProperty]
  set newValue SubtotalOptionsProperty {..}
    = SubtotalOptionsProperty
        {fieldLevelOptions = Prelude.pure newValue, ..}
instance Property "MetricHeaderCellStyle" SubtotalOptionsProperty where
  type PropertyType "MetricHeaderCellStyle" SubtotalOptionsProperty = TableCellStyleProperty
  set newValue SubtotalOptionsProperty {..}
    = SubtotalOptionsProperty
        {metricHeaderCellStyle = Prelude.pure newValue, ..}
instance Property "TotalCellStyle" SubtotalOptionsProperty where
  type PropertyType "TotalCellStyle" SubtotalOptionsProperty = TableCellStyleProperty
  set newValue SubtotalOptionsProperty {..}
    = SubtotalOptionsProperty
        {totalCellStyle = Prelude.pure newValue, ..}
instance Property "TotalsVisibility" SubtotalOptionsProperty where
  type PropertyType "TotalsVisibility" SubtotalOptionsProperty = Value Prelude.Text
  set newValue SubtotalOptionsProperty {..}
    = SubtotalOptionsProperty
        {totalsVisibility = Prelude.pure newValue, ..}
instance Property "ValueCellStyle" SubtotalOptionsProperty where
  type PropertyType "ValueCellStyle" SubtotalOptionsProperty = TableCellStyleProperty
  set newValue SubtotalOptionsProperty {..}
    = SubtotalOptionsProperty
        {valueCellStyle = Prelude.pure newValue, ..}