module Stratosphere.QuickSight.Analysis.LineChartVisualProperty (
        module Exports, LineChartVisualProperty(..),
        mkLineChartVisualProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.ColumnHierarchyProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.LineChartConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.VisualCustomActionProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.VisualSubtitleLabelOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.VisualTitleLabelOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LineChartVisualProperty
  = LineChartVisualProperty {actions :: (Prelude.Maybe [VisualCustomActionProperty]),
                             chartConfiguration :: (Prelude.Maybe LineChartConfigurationProperty),
                             columnHierarchies :: (Prelude.Maybe [ColumnHierarchyProperty]),
                             subtitle :: (Prelude.Maybe VisualSubtitleLabelOptionsProperty),
                             title :: (Prelude.Maybe VisualTitleLabelOptionsProperty),
                             visualId :: (Value Prelude.Text)}
mkLineChartVisualProperty ::
  Value Prelude.Text -> LineChartVisualProperty
mkLineChartVisualProperty visualId
  = LineChartVisualProperty
      {visualId = visualId, actions = Prelude.Nothing,
       chartConfiguration = Prelude.Nothing,
       columnHierarchies = Prelude.Nothing, subtitle = Prelude.Nothing,
       title = Prelude.Nothing}
instance ToResourceProperties LineChartVisualProperty where
  toResourceProperties LineChartVisualProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.LineChartVisual",
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
instance JSON.ToJSON LineChartVisualProperty where
  toJSON LineChartVisualProperty {..}
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
instance Property "Actions" LineChartVisualProperty where
  type PropertyType "Actions" LineChartVisualProperty = [VisualCustomActionProperty]
  set newValue LineChartVisualProperty {..}
    = LineChartVisualProperty {actions = Prelude.pure newValue, ..}
instance Property "ChartConfiguration" LineChartVisualProperty where
  type PropertyType "ChartConfiguration" LineChartVisualProperty = LineChartConfigurationProperty
  set newValue LineChartVisualProperty {..}
    = LineChartVisualProperty
        {chartConfiguration = Prelude.pure newValue, ..}
instance Property "ColumnHierarchies" LineChartVisualProperty where
  type PropertyType "ColumnHierarchies" LineChartVisualProperty = [ColumnHierarchyProperty]
  set newValue LineChartVisualProperty {..}
    = LineChartVisualProperty
        {columnHierarchies = Prelude.pure newValue, ..}
instance Property "Subtitle" LineChartVisualProperty where
  type PropertyType "Subtitle" LineChartVisualProperty = VisualSubtitleLabelOptionsProperty
  set newValue LineChartVisualProperty {..}
    = LineChartVisualProperty {subtitle = Prelude.pure newValue, ..}
instance Property "Title" LineChartVisualProperty where
  type PropertyType "Title" LineChartVisualProperty = VisualTitleLabelOptionsProperty
  set newValue LineChartVisualProperty {..}
    = LineChartVisualProperty {title = Prelude.pure newValue, ..}
instance Property "VisualId" LineChartVisualProperty where
  type PropertyType "VisualId" LineChartVisualProperty = Value Prelude.Text
  set newValue LineChartVisualProperty {..}
    = LineChartVisualProperty {visualId = newValue, ..}