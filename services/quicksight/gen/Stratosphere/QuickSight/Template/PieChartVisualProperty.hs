module Stratosphere.QuickSight.Template.PieChartVisualProperty (
        module Exports, PieChartVisualProperty(..),
        mkPieChartVisualProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.ColumnHierarchyProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.PieChartConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.VisualCustomActionProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.VisualSubtitleLabelOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.VisualTitleLabelOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PieChartVisualProperty
  = PieChartVisualProperty {actions :: (Prelude.Maybe [VisualCustomActionProperty]),
                            chartConfiguration :: (Prelude.Maybe PieChartConfigurationProperty),
                            columnHierarchies :: (Prelude.Maybe [ColumnHierarchyProperty]),
                            subtitle :: (Prelude.Maybe VisualSubtitleLabelOptionsProperty),
                            title :: (Prelude.Maybe VisualTitleLabelOptionsProperty),
                            visualId :: (Value Prelude.Text)}
mkPieChartVisualProperty ::
  Value Prelude.Text -> PieChartVisualProperty
mkPieChartVisualProperty visualId
  = PieChartVisualProperty
      {visualId = visualId, actions = Prelude.Nothing,
       chartConfiguration = Prelude.Nothing,
       columnHierarchies = Prelude.Nothing, subtitle = Prelude.Nothing,
       title = Prelude.Nothing}
instance ToResourceProperties PieChartVisualProperty where
  toResourceProperties PieChartVisualProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.PieChartVisual",
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
instance JSON.ToJSON PieChartVisualProperty where
  toJSON PieChartVisualProperty {..}
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
instance Property "Actions" PieChartVisualProperty where
  type PropertyType "Actions" PieChartVisualProperty = [VisualCustomActionProperty]
  set newValue PieChartVisualProperty {..}
    = PieChartVisualProperty {actions = Prelude.pure newValue, ..}
instance Property "ChartConfiguration" PieChartVisualProperty where
  type PropertyType "ChartConfiguration" PieChartVisualProperty = PieChartConfigurationProperty
  set newValue PieChartVisualProperty {..}
    = PieChartVisualProperty
        {chartConfiguration = Prelude.pure newValue, ..}
instance Property "ColumnHierarchies" PieChartVisualProperty where
  type PropertyType "ColumnHierarchies" PieChartVisualProperty = [ColumnHierarchyProperty]
  set newValue PieChartVisualProperty {..}
    = PieChartVisualProperty
        {columnHierarchies = Prelude.pure newValue, ..}
instance Property "Subtitle" PieChartVisualProperty where
  type PropertyType "Subtitle" PieChartVisualProperty = VisualSubtitleLabelOptionsProperty
  set newValue PieChartVisualProperty {..}
    = PieChartVisualProperty {subtitle = Prelude.pure newValue, ..}
instance Property "Title" PieChartVisualProperty where
  type PropertyType "Title" PieChartVisualProperty = VisualTitleLabelOptionsProperty
  set newValue PieChartVisualProperty {..}
    = PieChartVisualProperty {title = Prelude.pure newValue, ..}
instance Property "VisualId" PieChartVisualProperty where
  type PropertyType "VisualId" PieChartVisualProperty = Value Prelude.Text
  set newValue PieChartVisualProperty {..}
    = PieChartVisualProperty {visualId = newValue, ..}