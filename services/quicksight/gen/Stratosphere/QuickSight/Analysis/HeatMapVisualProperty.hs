module Stratosphere.QuickSight.Analysis.HeatMapVisualProperty (
        module Exports, HeatMapVisualProperty(..), mkHeatMapVisualProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.ColumnHierarchyProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.HeatMapConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.VisualCustomActionProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.VisualSubtitleLabelOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.VisualTitleLabelOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HeatMapVisualProperty
  = HeatMapVisualProperty {actions :: (Prelude.Maybe [VisualCustomActionProperty]),
                           chartConfiguration :: (Prelude.Maybe HeatMapConfigurationProperty),
                           columnHierarchies :: (Prelude.Maybe [ColumnHierarchyProperty]),
                           subtitle :: (Prelude.Maybe VisualSubtitleLabelOptionsProperty),
                           title :: (Prelude.Maybe VisualTitleLabelOptionsProperty),
                           visualId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHeatMapVisualProperty ::
  Value Prelude.Text -> HeatMapVisualProperty
mkHeatMapVisualProperty visualId
  = HeatMapVisualProperty
      {visualId = visualId, actions = Prelude.Nothing,
       chartConfiguration = Prelude.Nothing,
       columnHierarchies = Prelude.Nothing, subtitle = Prelude.Nothing,
       title = Prelude.Nothing}
instance ToResourceProperties HeatMapVisualProperty where
  toResourceProperties HeatMapVisualProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.HeatMapVisual",
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
instance JSON.ToJSON HeatMapVisualProperty where
  toJSON HeatMapVisualProperty {..}
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
instance Property "Actions" HeatMapVisualProperty where
  type PropertyType "Actions" HeatMapVisualProperty = [VisualCustomActionProperty]
  set newValue HeatMapVisualProperty {..}
    = HeatMapVisualProperty {actions = Prelude.pure newValue, ..}
instance Property "ChartConfiguration" HeatMapVisualProperty where
  type PropertyType "ChartConfiguration" HeatMapVisualProperty = HeatMapConfigurationProperty
  set newValue HeatMapVisualProperty {..}
    = HeatMapVisualProperty
        {chartConfiguration = Prelude.pure newValue, ..}
instance Property "ColumnHierarchies" HeatMapVisualProperty where
  type PropertyType "ColumnHierarchies" HeatMapVisualProperty = [ColumnHierarchyProperty]
  set newValue HeatMapVisualProperty {..}
    = HeatMapVisualProperty
        {columnHierarchies = Prelude.pure newValue, ..}
instance Property "Subtitle" HeatMapVisualProperty where
  type PropertyType "Subtitle" HeatMapVisualProperty = VisualSubtitleLabelOptionsProperty
  set newValue HeatMapVisualProperty {..}
    = HeatMapVisualProperty {subtitle = Prelude.pure newValue, ..}
instance Property "Title" HeatMapVisualProperty where
  type PropertyType "Title" HeatMapVisualProperty = VisualTitleLabelOptionsProperty
  set newValue HeatMapVisualProperty {..}
    = HeatMapVisualProperty {title = Prelude.pure newValue, ..}
instance Property "VisualId" HeatMapVisualProperty where
  type PropertyType "VisualId" HeatMapVisualProperty = Value Prelude.Text
  set newValue HeatMapVisualProperty {..}
    = HeatMapVisualProperty {visualId = newValue, ..}