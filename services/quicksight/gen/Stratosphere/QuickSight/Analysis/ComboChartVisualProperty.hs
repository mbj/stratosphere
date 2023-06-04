module Stratosphere.QuickSight.Analysis.ComboChartVisualProperty (
        module Exports, ComboChartVisualProperty(..),
        mkComboChartVisualProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.ColumnHierarchyProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.ComboChartConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.VisualCustomActionProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.VisualSubtitleLabelOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.VisualTitleLabelOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ComboChartVisualProperty
  = ComboChartVisualProperty {actions :: (Prelude.Maybe [VisualCustomActionProperty]),
                              chartConfiguration :: (Prelude.Maybe ComboChartConfigurationProperty),
                              columnHierarchies :: (Prelude.Maybe [ColumnHierarchyProperty]),
                              subtitle :: (Prelude.Maybe VisualSubtitleLabelOptionsProperty),
                              title :: (Prelude.Maybe VisualTitleLabelOptionsProperty),
                              visualId :: (Value Prelude.Text)}
mkComboChartVisualProperty ::
  Value Prelude.Text -> ComboChartVisualProperty
mkComboChartVisualProperty visualId
  = ComboChartVisualProperty
      {visualId = visualId, actions = Prelude.Nothing,
       chartConfiguration = Prelude.Nothing,
       columnHierarchies = Prelude.Nothing, subtitle = Prelude.Nothing,
       title = Prelude.Nothing}
instance ToResourceProperties ComboChartVisualProperty where
  toResourceProperties ComboChartVisualProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.ComboChartVisual",
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
instance JSON.ToJSON ComboChartVisualProperty where
  toJSON ComboChartVisualProperty {..}
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
instance Property "Actions" ComboChartVisualProperty where
  type PropertyType "Actions" ComboChartVisualProperty = [VisualCustomActionProperty]
  set newValue ComboChartVisualProperty {..}
    = ComboChartVisualProperty {actions = Prelude.pure newValue, ..}
instance Property "ChartConfiguration" ComboChartVisualProperty where
  type PropertyType "ChartConfiguration" ComboChartVisualProperty = ComboChartConfigurationProperty
  set newValue ComboChartVisualProperty {..}
    = ComboChartVisualProperty
        {chartConfiguration = Prelude.pure newValue, ..}
instance Property "ColumnHierarchies" ComboChartVisualProperty where
  type PropertyType "ColumnHierarchies" ComboChartVisualProperty = [ColumnHierarchyProperty]
  set newValue ComboChartVisualProperty {..}
    = ComboChartVisualProperty
        {columnHierarchies = Prelude.pure newValue, ..}
instance Property "Subtitle" ComboChartVisualProperty where
  type PropertyType "Subtitle" ComboChartVisualProperty = VisualSubtitleLabelOptionsProperty
  set newValue ComboChartVisualProperty {..}
    = ComboChartVisualProperty {subtitle = Prelude.pure newValue, ..}
instance Property "Title" ComboChartVisualProperty where
  type PropertyType "Title" ComboChartVisualProperty = VisualTitleLabelOptionsProperty
  set newValue ComboChartVisualProperty {..}
    = ComboChartVisualProperty {title = Prelude.pure newValue, ..}
instance Property "VisualId" ComboChartVisualProperty where
  type PropertyType "VisualId" ComboChartVisualProperty = Value Prelude.Text
  set newValue ComboChartVisualProperty {..}
    = ComboChartVisualProperty {visualId = newValue, ..}