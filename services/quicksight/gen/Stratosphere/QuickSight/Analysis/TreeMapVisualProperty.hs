module Stratosphere.QuickSight.Analysis.TreeMapVisualProperty (
        module Exports, TreeMapVisualProperty(..), mkTreeMapVisualProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.ColumnHierarchyProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.TreeMapConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.VisualCustomActionProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.VisualSubtitleLabelOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.VisualTitleLabelOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TreeMapVisualProperty
  = TreeMapVisualProperty {actions :: (Prelude.Maybe [VisualCustomActionProperty]),
                           chartConfiguration :: (Prelude.Maybe TreeMapConfigurationProperty),
                           columnHierarchies :: (Prelude.Maybe [ColumnHierarchyProperty]),
                           subtitle :: (Prelude.Maybe VisualSubtitleLabelOptionsProperty),
                           title :: (Prelude.Maybe VisualTitleLabelOptionsProperty),
                           visualId :: (Value Prelude.Text)}
mkTreeMapVisualProperty ::
  Value Prelude.Text -> TreeMapVisualProperty
mkTreeMapVisualProperty visualId
  = TreeMapVisualProperty
      {visualId = visualId, actions = Prelude.Nothing,
       chartConfiguration = Prelude.Nothing,
       columnHierarchies = Prelude.Nothing, subtitle = Prelude.Nothing,
       title = Prelude.Nothing}
instance ToResourceProperties TreeMapVisualProperty where
  toResourceProperties TreeMapVisualProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.TreeMapVisual",
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
instance JSON.ToJSON TreeMapVisualProperty where
  toJSON TreeMapVisualProperty {..}
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
instance Property "Actions" TreeMapVisualProperty where
  type PropertyType "Actions" TreeMapVisualProperty = [VisualCustomActionProperty]
  set newValue TreeMapVisualProperty {..}
    = TreeMapVisualProperty {actions = Prelude.pure newValue, ..}
instance Property "ChartConfiguration" TreeMapVisualProperty where
  type PropertyType "ChartConfiguration" TreeMapVisualProperty = TreeMapConfigurationProperty
  set newValue TreeMapVisualProperty {..}
    = TreeMapVisualProperty
        {chartConfiguration = Prelude.pure newValue, ..}
instance Property "ColumnHierarchies" TreeMapVisualProperty where
  type PropertyType "ColumnHierarchies" TreeMapVisualProperty = [ColumnHierarchyProperty]
  set newValue TreeMapVisualProperty {..}
    = TreeMapVisualProperty
        {columnHierarchies = Prelude.pure newValue, ..}
instance Property "Subtitle" TreeMapVisualProperty where
  type PropertyType "Subtitle" TreeMapVisualProperty = VisualSubtitleLabelOptionsProperty
  set newValue TreeMapVisualProperty {..}
    = TreeMapVisualProperty {subtitle = Prelude.pure newValue, ..}
instance Property "Title" TreeMapVisualProperty where
  type PropertyType "Title" TreeMapVisualProperty = VisualTitleLabelOptionsProperty
  set newValue TreeMapVisualProperty {..}
    = TreeMapVisualProperty {title = Prelude.pure newValue, ..}
instance Property "VisualId" TreeMapVisualProperty where
  type PropertyType "VisualId" TreeMapVisualProperty = Value Prelude.Text
  set newValue TreeMapVisualProperty {..}
    = TreeMapVisualProperty {visualId = newValue, ..}