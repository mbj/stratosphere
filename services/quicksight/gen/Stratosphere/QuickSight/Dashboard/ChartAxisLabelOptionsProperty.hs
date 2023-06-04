module Stratosphere.QuickSight.Dashboard.ChartAxisLabelOptionsProperty (
        module Exports, ChartAxisLabelOptionsProperty(..),
        mkChartAxisLabelOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.AxisLabelOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ChartAxisLabelOptionsProperty
  = ChartAxisLabelOptionsProperty {axisLabelOptions :: (Prelude.Maybe [AxisLabelOptionsProperty]),
                                   sortIconVisibility :: (Prelude.Maybe (Value Prelude.Text)),
                                   visibility :: (Prelude.Maybe (Value Prelude.Text))}
mkChartAxisLabelOptionsProperty :: ChartAxisLabelOptionsProperty
mkChartAxisLabelOptionsProperty
  = ChartAxisLabelOptionsProperty
      {axisLabelOptions = Prelude.Nothing,
       sortIconVisibility = Prelude.Nothing, visibility = Prelude.Nothing}
instance ToResourceProperties ChartAxisLabelOptionsProperty where
  toResourceProperties ChartAxisLabelOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.ChartAxisLabelOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AxisLabelOptions" Prelude.<$> axisLabelOptions,
                            (JSON..=) "SortIconVisibility" Prelude.<$> sortIconVisibility,
                            (JSON..=) "Visibility" Prelude.<$> visibility])}
instance JSON.ToJSON ChartAxisLabelOptionsProperty where
  toJSON ChartAxisLabelOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AxisLabelOptions" Prelude.<$> axisLabelOptions,
               (JSON..=) "SortIconVisibility" Prelude.<$> sortIconVisibility,
               (JSON..=) "Visibility" Prelude.<$> visibility]))
instance Property "AxisLabelOptions" ChartAxisLabelOptionsProperty where
  type PropertyType "AxisLabelOptions" ChartAxisLabelOptionsProperty = [AxisLabelOptionsProperty]
  set newValue ChartAxisLabelOptionsProperty {..}
    = ChartAxisLabelOptionsProperty
        {axisLabelOptions = Prelude.pure newValue, ..}
instance Property "SortIconVisibility" ChartAxisLabelOptionsProperty where
  type PropertyType "SortIconVisibility" ChartAxisLabelOptionsProperty = Value Prelude.Text
  set newValue ChartAxisLabelOptionsProperty {..}
    = ChartAxisLabelOptionsProperty
        {sortIconVisibility = Prelude.pure newValue, ..}
instance Property "Visibility" ChartAxisLabelOptionsProperty where
  type PropertyType "Visibility" ChartAxisLabelOptionsProperty = Value Prelude.Text
  set newValue ChartAxisLabelOptionsProperty {..}
    = ChartAxisLabelOptionsProperty
        {visibility = Prelude.pure newValue, ..}