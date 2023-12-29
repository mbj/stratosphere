module Stratosphere.QuickSight.Analysis.BarChartVisualProperty (
        module Exports, BarChartVisualProperty(..),
        mkBarChartVisualProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.BarChartConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.ColumnHierarchyProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.VisualCustomActionProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.VisualSubtitleLabelOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.VisualTitleLabelOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BarChartVisualProperty
  = BarChartVisualProperty {actions :: (Prelude.Maybe [VisualCustomActionProperty]),
                            chartConfiguration :: (Prelude.Maybe BarChartConfigurationProperty),
                            columnHierarchies :: (Prelude.Maybe [ColumnHierarchyProperty]),
                            subtitle :: (Prelude.Maybe VisualSubtitleLabelOptionsProperty),
                            title :: (Prelude.Maybe VisualTitleLabelOptionsProperty),
                            visualId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBarChartVisualProperty ::
  Value Prelude.Text -> BarChartVisualProperty
mkBarChartVisualProperty visualId
  = BarChartVisualProperty
      {visualId = visualId, actions = Prelude.Nothing,
       chartConfiguration = Prelude.Nothing,
       columnHierarchies = Prelude.Nothing, subtitle = Prelude.Nothing,
       title = Prelude.Nothing}
instance ToResourceProperties BarChartVisualProperty where
  toResourceProperties BarChartVisualProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.BarChartVisual",
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
instance JSON.ToJSON BarChartVisualProperty where
  toJSON BarChartVisualProperty {..}
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
instance Property "Actions" BarChartVisualProperty where
  type PropertyType "Actions" BarChartVisualProperty = [VisualCustomActionProperty]
  set newValue BarChartVisualProperty {..}
    = BarChartVisualProperty {actions = Prelude.pure newValue, ..}
instance Property "ChartConfiguration" BarChartVisualProperty where
  type PropertyType "ChartConfiguration" BarChartVisualProperty = BarChartConfigurationProperty
  set newValue BarChartVisualProperty {..}
    = BarChartVisualProperty
        {chartConfiguration = Prelude.pure newValue, ..}
instance Property "ColumnHierarchies" BarChartVisualProperty where
  type PropertyType "ColumnHierarchies" BarChartVisualProperty = [ColumnHierarchyProperty]
  set newValue BarChartVisualProperty {..}
    = BarChartVisualProperty
        {columnHierarchies = Prelude.pure newValue, ..}
instance Property "Subtitle" BarChartVisualProperty where
  type PropertyType "Subtitle" BarChartVisualProperty = VisualSubtitleLabelOptionsProperty
  set newValue BarChartVisualProperty {..}
    = BarChartVisualProperty {subtitle = Prelude.pure newValue, ..}
instance Property "Title" BarChartVisualProperty where
  type PropertyType "Title" BarChartVisualProperty = VisualTitleLabelOptionsProperty
  set newValue BarChartVisualProperty {..}
    = BarChartVisualProperty {title = Prelude.pure newValue, ..}
instance Property "VisualId" BarChartVisualProperty where
  type PropertyType "VisualId" BarChartVisualProperty = Value Prelude.Text
  set newValue BarChartVisualProperty {..}
    = BarChartVisualProperty {visualId = newValue, ..}