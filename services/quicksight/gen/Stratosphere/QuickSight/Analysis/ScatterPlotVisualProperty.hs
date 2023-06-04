module Stratosphere.QuickSight.Analysis.ScatterPlotVisualProperty (
        module Exports, ScatterPlotVisualProperty(..),
        mkScatterPlotVisualProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.ColumnHierarchyProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.ScatterPlotConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.VisualCustomActionProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.VisualSubtitleLabelOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.VisualTitleLabelOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ScatterPlotVisualProperty
  = ScatterPlotVisualProperty {actions :: (Prelude.Maybe [VisualCustomActionProperty]),
                               chartConfiguration :: (Prelude.Maybe ScatterPlotConfigurationProperty),
                               columnHierarchies :: (Prelude.Maybe [ColumnHierarchyProperty]),
                               subtitle :: (Prelude.Maybe VisualSubtitleLabelOptionsProperty),
                               title :: (Prelude.Maybe VisualTitleLabelOptionsProperty),
                               visualId :: (Value Prelude.Text)}
mkScatterPlotVisualProperty ::
  Value Prelude.Text -> ScatterPlotVisualProperty
mkScatterPlotVisualProperty visualId
  = ScatterPlotVisualProperty
      {visualId = visualId, actions = Prelude.Nothing,
       chartConfiguration = Prelude.Nothing,
       columnHierarchies = Prelude.Nothing, subtitle = Prelude.Nothing,
       title = Prelude.Nothing}
instance ToResourceProperties ScatterPlotVisualProperty where
  toResourceProperties ScatterPlotVisualProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.ScatterPlotVisual",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["VisualId" JSON..= visualId]
                           (Prelude.catMaybes
                              [(JSON..=) "Actions" Prelude.<$> actions,
                               (JSON..=) "ChartConfiguration" Prelude.<$> chartConfiguration,
                               (JSON..=) "ColumnHierarchies" Prelude.<$> columnHierarchies,
                               (JSON..=) "Subtitle" Prelude.<$> subtitle,
                               (JSON..=) "Title" Prelude.<$> title]))}
instance JSON.ToJSON ScatterPlotVisualProperty where
  toJSON ScatterPlotVisualProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["VisualId" JSON..= visualId]
              (Prelude.catMaybes
                 [(JSON..=) "Actions" Prelude.<$> actions,
                  (JSON..=) "ChartConfiguration" Prelude.<$> chartConfiguration,
                  (JSON..=) "ColumnHierarchies" Prelude.<$> columnHierarchies,
                  (JSON..=) "Subtitle" Prelude.<$> subtitle,
                  (JSON..=) "Title" Prelude.<$> title])))
instance Property "Actions" ScatterPlotVisualProperty where
  type PropertyType "Actions" ScatterPlotVisualProperty = [VisualCustomActionProperty]
  set newValue ScatterPlotVisualProperty {..}
    = ScatterPlotVisualProperty {actions = Prelude.pure newValue, ..}
instance Property "ChartConfiguration" ScatterPlotVisualProperty where
  type PropertyType "ChartConfiguration" ScatterPlotVisualProperty = ScatterPlotConfigurationProperty
  set newValue ScatterPlotVisualProperty {..}
    = ScatterPlotVisualProperty
        {chartConfiguration = Prelude.pure newValue, ..}
instance Property "ColumnHierarchies" ScatterPlotVisualProperty where
  type PropertyType "ColumnHierarchies" ScatterPlotVisualProperty = [ColumnHierarchyProperty]
  set newValue ScatterPlotVisualProperty {..}
    = ScatterPlotVisualProperty
        {columnHierarchies = Prelude.pure newValue, ..}
instance Property "Subtitle" ScatterPlotVisualProperty where
  type PropertyType "Subtitle" ScatterPlotVisualProperty = VisualSubtitleLabelOptionsProperty
  set newValue ScatterPlotVisualProperty {..}
    = ScatterPlotVisualProperty {subtitle = Prelude.pure newValue, ..}
instance Property "Title" ScatterPlotVisualProperty where
  type PropertyType "Title" ScatterPlotVisualProperty = VisualTitleLabelOptionsProperty
  set newValue ScatterPlotVisualProperty {..}
    = ScatterPlotVisualProperty {title = Prelude.pure newValue, ..}
instance Property "VisualId" ScatterPlotVisualProperty where
  type PropertyType "VisualId" ScatterPlotVisualProperty = Value Prelude.Text
  set newValue ScatterPlotVisualProperty {..}
    = ScatterPlotVisualProperty {visualId = newValue, ..}