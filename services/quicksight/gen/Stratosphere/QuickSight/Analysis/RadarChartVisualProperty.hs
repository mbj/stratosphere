module Stratosphere.QuickSight.Analysis.RadarChartVisualProperty (
        module Exports, RadarChartVisualProperty(..),
        mkRadarChartVisualProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.ColumnHierarchyProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.RadarChartConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.VisualCustomActionProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.VisualSubtitleLabelOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.VisualTitleLabelOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RadarChartVisualProperty
  = RadarChartVisualProperty {actions :: (Prelude.Maybe [VisualCustomActionProperty]),
                              chartConfiguration :: (Prelude.Maybe RadarChartConfigurationProperty),
                              columnHierarchies :: (Prelude.Maybe [ColumnHierarchyProperty]),
                              subtitle :: (Prelude.Maybe VisualSubtitleLabelOptionsProperty),
                              title :: (Prelude.Maybe VisualTitleLabelOptionsProperty),
                              visualId :: (Value Prelude.Text)}
mkRadarChartVisualProperty ::
  Value Prelude.Text -> RadarChartVisualProperty
mkRadarChartVisualProperty visualId
  = RadarChartVisualProperty
      {visualId = visualId, actions = Prelude.Nothing,
       chartConfiguration = Prelude.Nothing,
       columnHierarchies = Prelude.Nothing, subtitle = Prelude.Nothing,
       title = Prelude.Nothing}
instance ToResourceProperties RadarChartVisualProperty where
  toResourceProperties RadarChartVisualProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.RadarChartVisual",
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
instance JSON.ToJSON RadarChartVisualProperty where
  toJSON RadarChartVisualProperty {..}
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
instance Property "Actions" RadarChartVisualProperty where
  type PropertyType "Actions" RadarChartVisualProperty = [VisualCustomActionProperty]
  set newValue RadarChartVisualProperty {..}
    = RadarChartVisualProperty {actions = Prelude.pure newValue, ..}
instance Property "ChartConfiguration" RadarChartVisualProperty where
  type PropertyType "ChartConfiguration" RadarChartVisualProperty = RadarChartConfigurationProperty
  set newValue RadarChartVisualProperty {..}
    = RadarChartVisualProperty
        {chartConfiguration = Prelude.pure newValue, ..}
instance Property "ColumnHierarchies" RadarChartVisualProperty where
  type PropertyType "ColumnHierarchies" RadarChartVisualProperty = [ColumnHierarchyProperty]
  set newValue RadarChartVisualProperty {..}
    = RadarChartVisualProperty
        {columnHierarchies = Prelude.pure newValue, ..}
instance Property "Subtitle" RadarChartVisualProperty where
  type PropertyType "Subtitle" RadarChartVisualProperty = VisualSubtitleLabelOptionsProperty
  set newValue RadarChartVisualProperty {..}
    = RadarChartVisualProperty {subtitle = Prelude.pure newValue, ..}
instance Property "Title" RadarChartVisualProperty where
  type PropertyType "Title" RadarChartVisualProperty = VisualTitleLabelOptionsProperty
  set newValue RadarChartVisualProperty {..}
    = RadarChartVisualProperty {title = Prelude.pure newValue, ..}
instance Property "VisualId" RadarChartVisualProperty where
  type PropertyType "VisualId" RadarChartVisualProperty = Value Prelude.Text
  set newValue RadarChartVisualProperty {..}
    = RadarChartVisualProperty {visualId = newValue, ..}