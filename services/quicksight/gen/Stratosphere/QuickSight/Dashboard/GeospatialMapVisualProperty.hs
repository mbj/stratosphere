module Stratosphere.QuickSight.Dashboard.GeospatialMapVisualProperty (
        module Exports, GeospatialMapVisualProperty(..),
        mkGeospatialMapVisualProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.ColumnHierarchyProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.GeospatialMapConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.VisualCustomActionProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.VisualSubtitleLabelOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.VisualTitleLabelOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GeospatialMapVisualProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-geospatialmapvisual.html>
    GeospatialMapVisualProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-geospatialmapvisual.html#cfn-quicksight-dashboard-geospatialmapvisual-actions>
                                 actions :: (Prelude.Maybe [VisualCustomActionProperty]),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-geospatialmapvisual.html#cfn-quicksight-dashboard-geospatialmapvisual-chartconfiguration>
                                 chartConfiguration :: (Prelude.Maybe GeospatialMapConfigurationProperty),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-geospatialmapvisual.html#cfn-quicksight-dashboard-geospatialmapvisual-columnhierarchies>
                                 columnHierarchies :: (Prelude.Maybe [ColumnHierarchyProperty]),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-geospatialmapvisual.html#cfn-quicksight-dashboard-geospatialmapvisual-subtitle>
                                 subtitle :: (Prelude.Maybe VisualSubtitleLabelOptionsProperty),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-geospatialmapvisual.html#cfn-quicksight-dashboard-geospatialmapvisual-title>
                                 title :: (Prelude.Maybe VisualTitleLabelOptionsProperty),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-geospatialmapvisual.html#cfn-quicksight-dashboard-geospatialmapvisual-visualcontentalttext>
                                 visualContentAltText :: (Prelude.Maybe (Value Prelude.Text)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-geospatialmapvisual.html#cfn-quicksight-dashboard-geospatialmapvisual-visualid>
                                 visualId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGeospatialMapVisualProperty ::
  Value Prelude.Text -> GeospatialMapVisualProperty
mkGeospatialMapVisualProperty visualId
  = GeospatialMapVisualProperty
      {haddock_workaround_ = (), visualId = visualId,
       actions = Prelude.Nothing, chartConfiguration = Prelude.Nothing,
       columnHierarchies = Prelude.Nothing, subtitle = Prelude.Nothing,
       title = Prelude.Nothing, visualContentAltText = Prelude.Nothing}
instance ToResourceProperties GeospatialMapVisualProperty where
  toResourceProperties GeospatialMapVisualProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.GeospatialMapVisual",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["VisualId" JSON..= visualId]
                           (Prelude.catMaybes
                              [(JSON..=) "Actions" Prelude.<$> actions,
                               (JSON..=) "ChartConfiguration" Prelude.<$> chartConfiguration,
                               (JSON..=) "ColumnHierarchies" Prelude.<$> columnHierarchies,
                               (JSON..=) "Subtitle" Prelude.<$> subtitle,
                               (JSON..=) "Title" Prelude.<$> title,
                               (JSON..=) "VisualContentAltText"
                                 Prelude.<$> visualContentAltText]))}
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
                  (JSON..=) "Title" Prelude.<$> title,
                  (JSON..=) "VisualContentAltText"
                    Prelude.<$> visualContentAltText])))
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
instance Property "VisualContentAltText" GeospatialMapVisualProperty where
  type PropertyType "VisualContentAltText" GeospatialMapVisualProperty = Value Prelude.Text
  set newValue GeospatialMapVisualProperty {..}
    = GeospatialMapVisualProperty
        {visualContentAltText = Prelude.pure newValue, ..}
instance Property "VisualId" GeospatialMapVisualProperty where
  type PropertyType "VisualId" GeospatialMapVisualProperty = Value Prelude.Text
  set newValue GeospatialMapVisualProperty {..}
    = GeospatialMapVisualProperty {visualId = newValue, ..}