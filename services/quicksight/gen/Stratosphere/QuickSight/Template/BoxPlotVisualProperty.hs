module Stratosphere.QuickSight.Template.BoxPlotVisualProperty (
        module Exports, BoxPlotVisualProperty(..), mkBoxPlotVisualProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.BoxPlotChartConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.ColumnHierarchyProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.VisualCustomActionProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.VisualSubtitleLabelOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.VisualTitleLabelOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BoxPlotVisualProperty
  = BoxPlotVisualProperty {actions :: (Prelude.Maybe [VisualCustomActionProperty]),
                           chartConfiguration :: (Prelude.Maybe BoxPlotChartConfigurationProperty),
                           columnHierarchies :: (Prelude.Maybe [ColumnHierarchyProperty]),
                           subtitle :: (Prelude.Maybe VisualSubtitleLabelOptionsProperty),
                           title :: (Prelude.Maybe VisualTitleLabelOptionsProperty),
                           visualId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBoxPlotVisualProperty ::
  Value Prelude.Text -> BoxPlotVisualProperty
mkBoxPlotVisualProperty visualId
  = BoxPlotVisualProperty
      {visualId = visualId, actions = Prelude.Nothing,
       chartConfiguration = Prelude.Nothing,
       columnHierarchies = Prelude.Nothing, subtitle = Prelude.Nothing,
       title = Prelude.Nothing}
instance ToResourceProperties BoxPlotVisualProperty where
  toResourceProperties BoxPlotVisualProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.BoxPlotVisual",
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
instance JSON.ToJSON BoxPlotVisualProperty where
  toJSON BoxPlotVisualProperty {..}
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
instance Property "Actions" BoxPlotVisualProperty where
  type PropertyType "Actions" BoxPlotVisualProperty = [VisualCustomActionProperty]
  set newValue BoxPlotVisualProperty {..}
    = BoxPlotVisualProperty {actions = Prelude.pure newValue, ..}
instance Property "ChartConfiguration" BoxPlotVisualProperty where
  type PropertyType "ChartConfiguration" BoxPlotVisualProperty = BoxPlotChartConfigurationProperty
  set newValue BoxPlotVisualProperty {..}
    = BoxPlotVisualProperty
        {chartConfiguration = Prelude.pure newValue, ..}
instance Property "ColumnHierarchies" BoxPlotVisualProperty where
  type PropertyType "ColumnHierarchies" BoxPlotVisualProperty = [ColumnHierarchyProperty]
  set newValue BoxPlotVisualProperty {..}
    = BoxPlotVisualProperty
        {columnHierarchies = Prelude.pure newValue, ..}
instance Property "Subtitle" BoxPlotVisualProperty where
  type PropertyType "Subtitle" BoxPlotVisualProperty = VisualSubtitleLabelOptionsProperty
  set newValue BoxPlotVisualProperty {..}
    = BoxPlotVisualProperty {subtitle = Prelude.pure newValue, ..}
instance Property "Title" BoxPlotVisualProperty where
  type PropertyType "Title" BoxPlotVisualProperty = VisualTitleLabelOptionsProperty
  set newValue BoxPlotVisualProperty {..}
    = BoxPlotVisualProperty {title = Prelude.pure newValue, ..}
instance Property "VisualId" BoxPlotVisualProperty where
  type PropertyType "VisualId" BoxPlotVisualProperty = Value Prelude.Text
  set newValue BoxPlotVisualProperty {..}
    = BoxPlotVisualProperty {visualId = newValue, ..}