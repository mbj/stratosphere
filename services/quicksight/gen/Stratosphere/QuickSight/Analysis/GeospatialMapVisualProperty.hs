module Stratosphere.QuickSight.Analysis.GeospatialMapVisualProperty (
        module Exports, GeospatialMapVisualProperty(..),
        mkGeospatialMapVisualProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.ColumnHierarchyProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.GeospatialMapConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.VisualCustomActionProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.VisualSubtitleLabelOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.VisualTitleLabelOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GeospatialMapVisualProperty
  = GeospatialMapVisualProperty {actions :: (Prelude.Maybe [VisualCustomActionProperty]),
                                 chartConfiguration :: (Prelude.Maybe GeospatialMapConfigurationProperty),
                                 columnHierarchies :: (Prelude.Maybe [ColumnHierarchyProperty]),
                                 subtitle :: (Prelude.Maybe VisualSubtitleLabelOptionsProperty),
                                 title :: (Prelude.Maybe VisualTitleLabelOptionsProperty),
                                 visualId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGeospatialMapVisualProperty ::
  Value Prelude.Text -> GeospatialMapVisualProperty
mkGeospatialMapVisualProperty visualId
  = GeospatialMapVisualProperty
      {visualId = visualId, actions = Prelude.Nothing,
       chartConfiguration = Prelude.Nothing,
       columnHierarchies = Prelude.Nothing, subtitle = Prelude.Nothing,
       title = Prelude.Nothing}
instance ToResourceProperties GeospatialMapVisualProperty where
  toResourceProperties GeospatialMapVisualProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.GeospatialMapVisual",
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
instance JSON.ToJSON GeospatialMapVisualProperty where
  toJSON GeospatialMapVisualProperty {..}
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
instance Property "Actions" GeospatialMapVisualProperty where
  type PropertyType "Actions" GeospatialMapVisualProperty = [VisualCustomActionProperty]
  set newValue GeospatialMapVisualProperty {..}
    = GeospatialMapVisualProperty {actions = Prelude.pure newValue, ..}
instance Property "ChartConfiguration" GeospatialMapVisualProperty where
  type PropertyType "ChartConfiguration" GeospatialMapVisualProperty = GeospatialMapConfigurationProperty
  set newValue GeospatialMapVisualProperty {..}
    = GeospatialMapVisualProperty
        {chartConfiguration = Prelude.pure newValue, ..}
instance Property "ColumnHierarchies" GeospatialMapVisualProperty where
  type PropertyType "ColumnHierarchies" GeospatialMapVisualProperty = [ColumnHierarchyProperty]
  set newValue GeospatialMapVisualProperty {..}
    = GeospatialMapVisualProperty
        {columnHierarchies = Prelude.pure newValue, ..}
instance Property "Subtitle" GeospatialMapVisualProperty where
  type PropertyType "Subtitle" GeospatialMapVisualProperty = VisualSubtitleLabelOptionsProperty
  set newValue GeospatialMapVisualProperty {..}
    = GeospatialMapVisualProperty
        {subtitle = Prelude.pure newValue, ..}
instance Property "Title" GeospatialMapVisualProperty where
  type PropertyType "Title" GeospatialMapVisualProperty = VisualTitleLabelOptionsProperty
  set newValue GeospatialMapVisualProperty {..}
    = GeospatialMapVisualProperty {title = Prelude.pure newValue, ..}
instance Property "VisualId" GeospatialMapVisualProperty where
  type PropertyType "VisualId" GeospatialMapVisualProperty = Value Prelude.Text
  set newValue GeospatialMapVisualProperty {..}
    = GeospatialMapVisualProperty {visualId = newValue, ..}