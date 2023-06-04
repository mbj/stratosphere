module Stratosphere.QuickSight.Dashboard.WordCloudVisualProperty (
        module Exports, WordCloudVisualProperty(..),
        mkWordCloudVisualProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.ColumnHierarchyProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.VisualCustomActionProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.VisualSubtitleLabelOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.VisualTitleLabelOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.WordCloudChartConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data WordCloudVisualProperty
  = WordCloudVisualProperty {actions :: (Prelude.Maybe [VisualCustomActionProperty]),
                             chartConfiguration :: (Prelude.Maybe WordCloudChartConfigurationProperty),
                             columnHierarchies :: (Prelude.Maybe [ColumnHierarchyProperty]),
                             subtitle :: (Prelude.Maybe VisualSubtitleLabelOptionsProperty),
                             title :: (Prelude.Maybe VisualTitleLabelOptionsProperty),
                             visualId :: (Value Prelude.Text)}
mkWordCloudVisualProperty ::
  Value Prelude.Text -> WordCloudVisualProperty
mkWordCloudVisualProperty visualId
  = WordCloudVisualProperty
      {visualId = visualId, actions = Prelude.Nothing,
       chartConfiguration = Prelude.Nothing,
       columnHierarchies = Prelude.Nothing, subtitle = Prelude.Nothing,
       title = Prelude.Nothing}
instance ToResourceProperties WordCloudVisualProperty where
  toResourceProperties WordCloudVisualProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.WordCloudVisual",
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
instance JSON.ToJSON WordCloudVisualProperty where
  toJSON WordCloudVisualProperty {..}
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
instance Property "Actions" WordCloudVisualProperty where
  type PropertyType "Actions" WordCloudVisualProperty = [VisualCustomActionProperty]
  set newValue WordCloudVisualProperty {..}
    = WordCloudVisualProperty {actions = Prelude.pure newValue, ..}
instance Property "ChartConfiguration" WordCloudVisualProperty where
  type PropertyType "ChartConfiguration" WordCloudVisualProperty = WordCloudChartConfigurationProperty
  set newValue WordCloudVisualProperty {..}
    = WordCloudVisualProperty
        {chartConfiguration = Prelude.pure newValue, ..}
instance Property "ColumnHierarchies" WordCloudVisualProperty where
  type PropertyType "ColumnHierarchies" WordCloudVisualProperty = [ColumnHierarchyProperty]
  set newValue WordCloudVisualProperty {..}
    = WordCloudVisualProperty
        {columnHierarchies = Prelude.pure newValue, ..}
instance Property "Subtitle" WordCloudVisualProperty where
  type PropertyType "Subtitle" WordCloudVisualProperty = VisualSubtitleLabelOptionsProperty
  set newValue WordCloudVisualProperty {..}
    = WordCloudVisualProperty {subtitle = Prelude.pure newValue, ..}
instance Property "Title" WordCloudVisualProperty where
  type PropertyType "Title" WordCloudVisualProperty = VisualTitleLabelOptionsProperty
  set newValue WordCloudVisualProperty {..}
    = WordCloudVisualProperty {title = Prelude.pure newValue, ..}
instance Property "VisualId" WordCloudVisualProperty where
  type PropertyType "VisualId" WordCloudVisualProperty = Value Prelude.Text
  set newValue WordCloudVisualProperty {..}
    = WordCloudVisualProperty {visualId = newValue, ..}