module Stratosphere.QuickSight.Dashboard.WaterfallVisualProperty (
        module Exports, WaterfallVisualProperty(..),
        mkWaterfallVisualProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.ColumnHierarchyProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.VisualCustomActionProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.VisualSubtitleLabelOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.VisualTitleLabelOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.WaterfallChartConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data WaterfallVisualProperty
  = WaterfallVisualProperty {actions :: (Prelude.Maybe [VisualCustomActionProperty]),
                             chartConfiguration :: (Prelude.Maybe WaterfallChartConfigurationProperty),
                             columnHierarchies :: (Prelude.Maybe [ColumnHierarchyProperty]),
                             subtitle :: (Prelude.Maybe VisualSubtitleLabelOptionsProperty),
                             title :: (Prelude.Maybe VisualTitleLabelOptionsProperty),
                             visualId :: (Value Prelude.Text)}
mkWaterfallVisualProperty ::
  Value Prelude.Text -> WaterfallVisualProperty
mkWaterfallVisualProperty visualId
  = WaterfallVisualProperty
      {visualId = visualId, actions = Prelude.Nothing,
       chartConfiguration = Prelude.Nothing,
       columnHierarchies = Prelude.Nothing, subtitle = Prelude.Nothing,
       title = Prelude.Nothing}
instance ToResourceProperties WaterfallVisualProperty where
  toResourceProperties WaterfallVisualProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.WaterfallVisual",
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
instance JSON.ToJSON WaterfallVisualProperty where
  toJSON WaterfallVisualProperty {..}
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
instance Property "Actions" WaterfallVisualProperty where
  type PropertyType "Actions" WaterfallVisualProperty = [VisualCustomActionProperty]
  set newValue WaterfallVisualProperty {..}
    = WaterfallVisualProperty {actions = Prelude.pure newValue, ..}
instance Property "ChartConfiguration" WaterfallVisualProperty where
  type PropertyType "ChartConfiguration" WaterfallVisualProperty = WaterfallChartConfigurationProperty
  set newValue WaterfallVisualProperty {..}
    = WaterfallVisualProperty
        {chartConfiguration = Prelude.pure newValue, ..}
instance Property "ColumnHierarchies" WaterfallVisualProperty where
  type PropertyType "ColumnHierarchies" WaterfallVisualProperty = [ColumnHierarchyProperty]
  set newValue WaterfallVisualProperty {..}
    = WaterfallVisualProperty
        {columnHierarchies = Prelude.pure newValue, ..}
instance Property "Subtitle" WaterfallVisualProperty where
  type PropertyType "Subtitle" WaterfallVisualProperty = VisualSubtitleLabelOptionsProperty
  set newValue WaterfallVisualProperty {..}
    = WaterfallVisualProperty {subtitle = Prelude.pure newValue, ..}
instance Property "Title" WaterfallVisualProperty where
  type PropertyType "Title" WaterfallVisualProperty = VisualTitleLabelOptionsProperty
  set newValue WaterfallVisualProperty {..}
    = WaterfallVisualProperty {title = Prelude.pure newValue, ..}
instance Property "VisualId" WaterfallVisualProperty where
  type PropertyType "VisualId" WaterfallVisualProperty = Value Prelude.Text
  set newValue WaterfallVisualProperty {..}
    = WaterfallVisualProperty {visualId = newValue, ..}