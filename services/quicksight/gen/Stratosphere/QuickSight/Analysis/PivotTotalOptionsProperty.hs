module Stratosphere.QuickSight.Analysis.PivotTotalOptionsProperty (
        module Exports, PivotTotalOptionsProperty(..),
        mkPivotTotalOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.TableCellStyleProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.TotalAggregationOptionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PivotTotalOptionsProperty
  = PivotTotalOptionsProperty {customLabel :: (Prelude.Maybe (Value Prelude.Text)),
                               metricHeaderCellStyle :: (Prelude.Maybe TableCellStyleProperty),
                               placement :: (Prelude.Maybe (Value Prelude.Text)),
                               scrollStatus :: (Prelude.Maybe (Value Prelude.Text)),
                               totalAggregationOptions :: (Prelude.Maybe [TotalAggregationOptionProperty]),
                               totalCellStyle :: (Prelude.Maybe TableCellStyleProperty),
                               totalsVisibility :: (Prelude.Maybe (Value Prelude.Text)),
                               valueCellStyle :: (Prelude.Maybe TableCellStyleProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPivotTotalOptionsProperty :: PivotTotalOptionsProperty
mkPivotTotalOptionsProperty
  = PivotTotalOptionsProperty
      {customLabel = Prelude.Nothing,
       metricHeaderCellStyle = Prelude.Nothing,
       placement = Prelude.Nothing, scrollStatus = Prelude.Nothing,
       totalAggregationOptions = Prelude.Nothing,
       totalCellStyle = Prelude.Nothing,
       totalsVisibility = Prelude.Nothing,
       valueCellStyle = Prelude.Nothing}
instance ToResourceProperties PivotTotalOptionsProperty where
  toResourceProperties PivotTotalOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.PivotTotalOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CustomLabel" Prelude.<$> customLabel,
                            (JSON..=) "MetricHeaderCellStyle"
                              Prelude.<$> metricHeaderCellStyle,
                            (JSON..=) "Placement" Prelude.<$> placement,
                            (JSON..=) "ScrollStatus" Prelude.<$> scrollStatus,
                            (JSON..=) "TotalAggregationOptions"
                              Prelude.<$> totalAggregationOptions,
                            (JSON..=) "TotalCellStyle" Prelude.<$> totalCellStyle,
                            (JSON..=) "TotalsVisibility" Prelude.<$> totalsVisibility,
                            (JSON..=) "ValueCellStyle" Prelude.<$> valueCellStyle])}
instance JSON.ToJSON PivotTotalOptionsProperty where
  toJSON PivotTotalOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CustomLabel" Prelude.<$> customLabel,
               (JSON..=) "MetricHeaderCellStyle"
                 Prelude.<$> metricHeaderCellStyle,
               (JSON..=) "Placement" Prelude.<$> placement,
               (JSON..=) "ScrollStatus" Prelude.<$> scrollStatus,
               (JSON..=) "TotalAggregationOptions"
                 Prelude.<$> totalAggregationOptions,
               (JSON..=) "TotalCellStyle" Prelude.<$> totalCellStyle,
               (JSON..=) "TotalsVisibility" Prelude.<$> totalsVisibility,
               (JSON..=) "ValueCellStyle" Prelude.<$> valueCellStyle]))
instance Property "CustomLabel" PivotTotalOptionsProperty where
  type PropertyType "CustomLabel" PivotTotalOptionsProperty = Value Prelude.Text
  set newValue PivotTotalOptionsProperty {..}
    = PivotTotalOptionsProperty
        {customLabel = Prelude.pure newValue, ..}
instance Property "MetricHeaderCellStyle" PivotTotalOptionsProperty where
  type PropertyType "MetricHeaderCellStyle" PivotTotalOptionsProperty = TableCellStyleProperty
  set newValue PivotTotalOptionsProperty {..}
    = PivotTotalOptionsProperty
        {metricHeaderCellStyle = Prelude.pure newValue, ..}
instance Property "Placement" PivotTotalOptionsProperty where
  type PropertyType "Placement" PivotTotalOptionsProperty = Value Prelude.Text
  set newValue PivotTotalOptionsProperty {..}
    = PivotTotalOptionsProperty {placement = Prelude.pure newValue, ..}
instance Property "ScrollStatus" PivotTotalOptionsProperty where
  type PropertyType "ScrollStatus" PivotTotalOptionsProperty = Value Prelude.Text
  set newValue PivotTotalOptionsProperty {..}
    = PivotTotalOptionsProperty
        {scrollStatus = Prelude.pure newValue, ..}
instance Property "TotalAggregationOptions" PivotTotalOptionsProperty where
  type PropertyType "TotalAggregationOptions" PivotTotalOptionsProperty = [TotalAggregationOptionProperty]
  set newValue PivotTotalOptionsProperty {..}
    = PivotTotalOptionsProperty
        {totalAggregationOptions = Prelude.pure newValue, ..}
instance Property "TotalCellStyle" PivotTotalOptionsProperty where
  type PropertyType "TotalCellStyle" PivotTotalOptionsProperty = TableCellStyleProperty
  set newValue PivotTotalOptionsProperty {..}
    = PivotTotalOptionsProperty
        {totalCellStyle = Prelude.pure newValue, ..}
instance Property "TotalsVisibility" PivotTotalOptionsProperty where
  type PropertyType "TotalsVisibility" PivotTotalOptionsProperty = Value Prelude.Text
  set newValue PivotTotalOptionsProperty {..}
    = PivotTotalOptionsProperty
        {totalsVisibility = Prelude.pure newValue, ..}
instance Property "ValueCellStyle" PivotTotalOptionsProperty where
  type PropertyType "ValueCellStyle" PivotTotalOptionsProperty = TableCellStyleProperty
  set newValue PivotTotalOptionsProperty {..}
    = PivotTotalOptionsProperty
        {valueCellStyle = Prelude.pure newValue, ..}